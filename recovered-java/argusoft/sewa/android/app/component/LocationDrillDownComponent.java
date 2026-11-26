package com.argusoft.sewa.android.app.component;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.core.LocationMasterService;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class LocationDrillDownComponent extends LinearLayout {
    public static final String CUSTOM_LOCATION_ANSWER_PREFIX = "CUSTOM:";
    private static final int DISTRICT_LEVEL = 2;
    private static final List<String> DISTRICT_TYPES = Arrays.asList(LocationConstants.LocationType.DISTRICT, "C");
    private static final int MIN_VILLAGE_SEARCH_LENGTH = 3;
    private static final long SEARCH_DEBOUNCE_MS = 400;
    private static final int VILLAGE_LEVEL = 6;
    private List<LocationMasterBean> allLocationsUnderSelectedBlock;
    private boolean allowCustomLocation;
    private final LinearLayout blockContainer;
    private List<LocationMasterBean> blockOptions;
    private int blockSelectedIndex;
    private Spinner blockSpinner;
    private final Context context;
    private CustomLocationListener customLocationListener;
    private Button customNameConfirmButton;
    private TextInputLayout customNameInput;
    private final LinearLayout districtContainer;
    private List<LocationMasterBean> districtOptions;
    private int districtSelectedIndex;
    private Spinner districtSpinner;
    private final VillageSelectionListener listener;
    private final LocationMasterService locationMasterService;
    private Timer searchTimer;
    private LocationMasterBean selectedBlock;
    private MaterialTextView selectedVillageView;
    private Integer skipCustomLocationMaxAge;
    private Integer skipCustomLocationMinAge;
    private final LinearLayout villageContainer;
    private Button villageCustomButton;
    private MaterialTextView villageHintView;
    private MaterialTextView villageNoResultView;
    private MaterialCheckBox villageNotKnownCheckBox;
    private MaterialTextView villageNotKnownConfirmationView;
    private ListView villageResultListView;
    private LinearLayout villageSearchAreaContainer;
    private TextInputLayout villageSearchInput;
    private List<LocationMasterBean> villageSearchResults;
    private List<LocationMasterBean> villagesUnderSelectedBlock;

    public interface CustomLocationListener {
        void onCustomLocationEntered(LocationMasterBean locationMasterBean, String str);
    }

    public interface VillageSelectionListener {
        void onSelectionCleared();

        void onVillageSelected(LocationMasterBean locationMasterBean, String str);
    }

    public LocationDrillDownComponent(Context context, LocationMasterService locationMasterService, VillageSelectionListener villageSelectionListener) {
        super(context);
        this.districtOptions = new ArrayList();
        this.blockOptions = new ArrayList();
        this.villagesUnderSelectedBlock = new ArrayList();
        this.allLocationsUnderSelectedBlock = new ArrayList();
        this.villageSearchResults = new ArrayList();
        this.searchTimer = new Timer();
        this.context = context;
        this.locationMasterService = locationMasterService;
        this.listener = villageSelectionListener;
        setOrientation(1);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayoutNewVerticalContainer = newVerticalContainer();
        this.districtContainer = linearLayoutNewVerticalContainer;
        LinearLayout linearLayoutNewVerticalContainer2 = newVerticalContainer();
        this.blockContainer = linearLayoutNewVerticalContainer2;
        LinearLayout linearLayoutNewVerticalContainer3 = newVerticalContainer();
        this.villageContainer = linearLayoutNewVerticalContainer3;
        addView(linearLayoutNewVerticalContainer);
        addView(linearLayoutNewVerticalContainer2);
        addView(linearLayoutNewVerticalContainer3);
        buildDistrictLevel(0);
    }

    public void setAllowCustomLocation(boolean z, CustomLocationListener customLocationListener) {
        this.allowCustomLocation = z;
        this.customLocationListener = customLocationListener;
    }

    public void setSkipCustomLocationAgeRange(Integer num, Integer num2) {
        this.skipCustomLocationMinAge = num;
        this.skipCustomLocationMaxAge = num2;
    }

    private boolean isVillageNotKnownOptionApplicable() {
        Integer num = this.skipCustomLocationMinAge;
        return (num == null || this.skipCustomLocationMaxAge == null || !MyDynamicComponents.isCurrentMemberAgeBetween(num.intValue(), this.skipCustomLocationMaxAge.intValue())) ? false : true;
    }

    private void buildVillageNotKnownCheckboxIfConfigured() {
        if (this.skipCustomLocationMinAge == null || this.skipCustomLocationMaxAge == null) {
            return;
        }
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, LabelConstants.LOCATION_VILLAGE_NOT_KNOWN_CHECKBOX, -1, false);
        this.villageNotKnownCheckBox = checkBox;
        checkBox.setVisibility(isVillageNotKnownOptionApplicable() ? 0 : 8);
        this.villageNotKnownCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m566x47b734d7(compoundButton, z);
            }
        });
        this.villageContainer.addView(this.villageNotKnownCheckBox);
    }

    /* renamed from: lambda$buildVillageNotKnownCheckboxIfConfigured$0$com-argusoft-sewa-android-app-component-LocationDrillDownComponent, reason: not valid java name */
    /* synthetic */ void m566x47b734d7(CompoundButton compoundButton, boolean z) {
        applyVillageNotKnown(z);
    }

    private void applyVillageNotKnown(boolean z) {
        hideKeyboard();
        if (z) {
            LinearLayout linearLayout = this.villageSearchAreaContainer;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            String strRetrieveLocationHierarchyByLocationId = this.locationMasterService.retrieveLocationHierarchyByLocationId(this.selectedBlock.getActualID());
            showVillageNotKnownConfirmation(strRetrieveLocationHierarchyByLocationId);
            VillageSelectionListener villageSelectionListener = this.listener;
            if (villageSelectionListener != null) {
                villageSelectionListener.onVillageSelected(this.selectedBlock, strRetrieveLocationHierarchyByLocationId);
                return;
            }
            return;
        }
        removeVillageNotKnownConfirmation();
        LinearLayout linearLayout2 = this.villageSearchAreaContainer;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        VillageSelectionListener villageSelectionListener2 = this.listener;
        if (villageSelectionListener2 != null) {
            villageSelectionListener2.onSelectionCleared();
        }
    }

    private void showVillageNotKnownConfirmation(String str) {
        removeVillageNotKnownConfirmation();
        this.villageNotKnownConfirmationView = MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_SELECTED_HIERARCHY_LABEL) + ": " + str);
        MaterialCheckBox materialCheckBox = this.villageNotKnownCheckBox;
        this.villageContainer.addView(this.villageNotKnownConfirmationView, (materialCheckBox != null ? this.villageContainer.indexOfChild(materialCheckBox) : -1) + 1);
    }

    private void removeVillageNotKnownConfirmation() {
        this.villageContainer.removeView(this.villageNotKnownConfirmationView);
        this.villageNotKnownConfirmationView = null;
    }

    public void refreshForAgeChange() {
        if (this.villageNotKnownCheckBox == null) {
            return;
        }
        boolean zIsVillageNotKnownOptionApplicable = isVillageNotKnownOptionApplicable();
        if (zIsVillageNotKnownOptionApplicable == (this.villageNotKnownCheckBox.getVisibility() == 0)) {
            return;
        }
        if (zIsVillageNotKnownOptionApplicable) {
            this.villageNotKnownCheckBox.setVisibility(0);
            return;
        }
        if (this.villageNotKnownCheckBox.isChecked()) {
            this.villageNotKnownCheckBox.setChecked(false);
        }
        this.villageNotKnownCheckBox.setVisibility(8);
    }

    public List<LocationMasterBean> getVillagesUnderSelectedBlock() {
        return this.villagesUnderSelectedBlock;
    }

    private LinearLayout newVerticalContainer() {
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return linearLayout;
    }

    private boolean isActive(LocationMasterBean locationMasterBean) {
        return !Boolean.FALSE.equals(locationMasterBean.getActive());
    }

    private List<LocationMasterBean> filterActive(List<LocationMasterBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (LocationMasterBean locationMasterBean : list) {
                if (isActive(locationMasterBean)) {
                    arrayList.add(locationMasterBean);
                }
            }
        }
        return arrayList;
    }

    private void buildDistrictLevel(int i) {
        this.districtContainer.removeAllViews();
        List<LocationMasterBean> listLoadAllDistricts = loadAllDistricts();
        this.districtOptions = listLoadAllDistricts;
        if (listLoadAllDistricts.isEmpty()) {
            this.districtContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel("No location found. Please refresh and try again")));
            return;
        }
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_DISTRICT_OR_CORPORATION));
        this.districtSelectedIndex = i;
        Spinner spinner = MyStaticComponents.getSpinner(this.context, buildSpinnerOptions(this.districtOptions), i, -1);
        this.districtSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 == LocationDrillDownComponent.this.districtSelectedIndex) {
                    return;
                }
                LocationDrillDownComponent.this.districtSelectedIndex = i2;
                LocationDrillDownComponent.this.clearFromBlockLevel();
                if (i2 > 0) {
                    LocationDrillDownComponent locationDrillDownComponent = LocationDrillDownComponent.this;
                    locationDrillDownComponent.buildBlockLevel(((LocationMasterBean) locationDrillDownComponent.districtOptions.get(i2 - 1)).getActualID(), 0);
                }
            }
        });
        this.districtContainer.addView(materialTextViewGenerateQuestionView);
        this.districtContainer.addView(this.districtSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildBlockLevel(Long l, int i) {
        String myLabel;
        this.blockContainer.removeAllViews();
        List<LocationMasterBean> listFilterActive = filterActive(this.locationMasterService.retrieveLocationMasterBeansByParent(Integer.valueOf(l.intValue())));
        this.blockOptions = listFilterActive;
        String locationTypeNameByType = !listFilterActive.isEmpty() ? this.locationMasterService.getLocationTypeNameByType(this.blockOptions.get(0).getType()) : null;
        if (locationTypeNameByType != null && !locationTypeNameByType.isEmpty() && !LabelConstants.NULL.equalsIgnoreCase(locationTypeNameByType)) {
            myLabel = "Select " + locationTypeNameByType;
        } else {
            myLabel = UtilBean.getMyLabel(LabelConstants.SELECT_BLOCK);
        }
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, myLabel);
        if (this.blockOptions.isEmpty()) {
            this.blockContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_HINT_NO_BLOCK)));
            return;
        }
        this.blockSelectedIndex = i;
        Spinner spinner = MyStaticComponents.getSpinner(this.context, buildSpinnerOptions(this.blockOptions), i, -1);
        this.blockSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 == LocationDrillDownComponent.this.blockSelectedIndex) {
                    return;
                }
                LocationDrillDownComponent.this.blockSelectedIndex = i2;
                LocationDrillDownComponent.this.clearVillageLevel();
                if (i2 > 0) {
                    LocationDrillDownComponent locationDrillDownComponent = LocationDrillDownComponent.this;
                    locationDrillDownComponent.selectedBlock = (LocationMasterBean) locationDrillDownComponent.blockOptions.get(i2 - 1);
                    Long actualID = LocationDrillDownComponent.this.selectedBlock.getActualID();
                    LocationDrillDownComponent locationDrillDownComponent2 = LocationDrillDownComponent.this;
                    locationDrillDownComponent2.villagesUnderSelectedBlock = locationDrillDownComponent2.collectVillagesUnderAncestor(actualID);
                    LocationDrillDownComponent locationDrillDownComponent3 = LocationDrillDownComponent.this;
                    locationDrillDownComponent3.allLocationsUnderSelectedBlock = locationDrillDownComponent3.collectAllLocationsUnderAncestor(actualID);
                    LocationDrillDownComponent.this.buildVillageSearchLevel(null);
                }
            }
        });
        this.blockContainer.addView(materialTextViewGenerateQuestionView);
        this.blockContainer.addView(this.blockSpinner);
    }

    private List<LocationMasterBean> loadAllDistricts() {
        List<LocationMasterBean> listFilterActive = filterActive(this.locationMasterService.retrieveLocationMasterBeansByLevel(2));
        if (!listFilterActive.isEmpty()) {
            return listFilterActive;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<LocationMasterBean> it = filterActive(this.locationMasterService.getLocationWithNoParent()).iterator();
        while (it.hasNext()) {
            arrayList.addAll(collectDistrictsBelow(it.next()));
        }
        return arrayList;
    }

    private List<LocationMasterBean> collectDistrictsBelow(LocationMasterBean locationMasterBean) {
        ArrayList arrayList = new ArrayList();
        if (locationMasterBean.getType() != null && DISTRICT_TYPES.contains(locationMasterBean.getType())) {
            arrayList.add(locationMasterBean);
            return arrayList;
        }
        if (locationMasterBean.getActualID() == null) {
            return arrayList;
        }
        Iterator<LocationMasterBean> it = filterActive(this.locationMasterService.retrieveLocationMasterBeansByParent(Integer.valueOf(locationMasterBean.getActualID().intValue()))).iterator();
        while (it.hasNext()) {
            arrayList.addAll(collectDistrictsBelow(it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<LocationMasterBean> collectVillagesUnderAncestor(Long l) {
        ArrayList arrayList = new ArrayList();
        for (LocationMasterBean locationMasterBean : filterActive(this.locationMasterService.retrieveLocationMasterBeansByParent(Integer.valueOf(l.intValue())))) {
            Integer level = locationMasterBean.getLevel();
            if (level != null) {
                if (level.intValue() == 6) {
                    arrayList.add(locationMasterBean);
                } else if (level.intValue() < 6) {
                    arrayList.addAll(collectVillagesUnderAncestor(locationMasterBean.getActualID()));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<LocationMasterBean> collectAllLocationsUnderAncestor(Long l) {
        ArrayList arrayList = new ArrayList();
        for (LocationMasterBean locationMasterBean : filterActive(this.locationMasterService.retrieveLocationMasterBeansByParent(Integer.valueOf(l.intValue())))) {
            Integer level = locationMasterBean.getLevel();
            if (level != null && level.intValue() <= 6) {
                arrayList.add(locationMasterBean);
                if (level.intValue() < 6) {
                    arrayList.addAll(collectAllLocationsUnderAncestor(locationMasterBean.getActualID()));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildVillageSearchLevel(LocationMasterBean locationMasterBean) {
        buildVillageNotKnownCheckboxIfConfigured();
        LinearLayout linearLayoutNewVerticalContainer = newVerticalContainer();
        this.villageSearchAreaContainer = linearLayoutNewVerticalContainer;
        this.villageContainer.addView(linearLayoutNewVerticalContainer);
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, UtilBean.getMyLabel(LabelConstants.VILLAGE_OR_ANGANVADI), -1, 50, -1);
        this.villageSearchInput = editText;
        if (editText.getEditText() != null) {
            this.villageSearchInput.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent.3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    LocationDrillDownComponent.this.searchTimer.cancel();
                    LocationDrillDownComponent.this.searchTimer = new Timer();
                    LocationDrillDownComponent.this.searchTimer.schedule(new AnonymousClass1(charSequence), LocationDrillDownComponent.SEARCH_DEBOUNCE_MS);
                }

                /* renamed from: com.argusoft.sewa.android.app.component.LocationDrillDownComponent$3$1, reason: invalid class name */
                class AnonymousClass1 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    AnonymousClass1(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        Activity activity = (Activity) LocationDrillDownComponent.this.context;
                        final CharSequence charSequence = this.val$s;
                        activity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent$3$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m569xdea5c4ce(charSequence);
                            }
                        });
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-component-LocationDrillDownComponent$3$1, reason: not valid java name */
                    /* synthetic */ void m569xdea5c4ce(CharSequence charSequence) {
                        LocationDrillDownComponent.this.filterVillages(charSequence == null ? "" : charSequence.toString());
                    }
                }
            });
        }
        this.villageSearchAreaContainer.addView(this.villageSearchInput);
        MaterialTextView materialTextView = new MaterialTextView(this.context);
        this.villageHintView = materialTextView;
        materialTextView.setTextSize(13.0f);
        this.villageHintView.setTextColor(Color.parseColor("#5B7186"));
        this.villageHintView.setPadding(0, dpToPx(2), 0, dpToPx(6));
        this.villageSearchAreaContainer.addView(this.villageHintView);
        setVillageHint(locationMasterBean != null ? LabelConstants.LOCATION_HINT_CHANGE : LabelConstants.LOCATION_HINT_START);
        if (locationMasterBean != null) {
            showSelectedVillage(locationMasterBean, this.locationMasterService.retrieveLocationHierarchyByLocationId(locationMasterBean.getActualID()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterVillages(String str) {
        LocationMasterBean locationMasterBean;
        LocationMasterBean locationMasterBean2;
        clearVillageResultViews();
        VillageSelectionListener villageSelectionListener = this.listener;
        if (villageSelectionListener != null) {
            villageSelectionListener.onSelectionCleared();
        }
        String lowerCase = str.trim().toLowerCase(Locale.getDefault());
        if (lowerCase.length() < 3) {
            this.villageSearchResults = new ArrayList();
            setVillageHint(lowerCase.isEmpty() ? LabelConstants.LOCATION_HINT_START : LabelConstants.LOCATION_HINT_KEEP_TYPING);
            return;
        }
        List<LocationMasterBean> list = this.allowCustomLocation ? this.allLocationsUnderSelectedBlock : this.villagesUnderSelectedBlock;
        this.villageSearchResults = new ArrayList();
        for (LocationMasterBean locationMasterBean3 : list) {
            if (startsWithIgnoreCase(locationMasterBean3.getName(), lowerCase) || startsWithIgnoreCase(locationMasterBean3.getEnglishName(), lowerCase)) {
                this.villageSearchResults.add(locationMasterBean3);
            }
        }
        if (this.villageSearchResults.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.NO_VILLAGE_OR_ANGANVADI_FOUND_WITH_THE_GIVEN_NAME));
            this.villageNoResultView = materialTextViewGenerateInstructionView;
            this.villageSearchAreaContainer.addView(materialTextViewGenerateInstructionView);
            setVillageHint((!this.allowCustomLocation || this.selectedBlock == null) ? LabelConstants.LOCATION_HINT_NO_MATCH : LabelConstants.LOCATION_HINT_NO_MATCH_CUSTOM);
            if (!this.allowCustomLocation || (locationMasterBean2 = this.selectedBlock) == null) {
                return;
            }
            addUseTypedLocationButton(locationMasterBean2, str.trim());
            return;
        }
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        for (LocationMasterBean locationMasterBean4 : this.villageSearchResults) {
            String strRetrieveLocationHierarchyByLocationId = this.locationMasterService.retrieveLocationHierarchyByLocationId(locationMasterBean4.getActualID());
            arrayList2.add(strRetrieveLocationHierarchyByLocationId);
            if (strRetrieveLocationHierarchyByLocationId == null || strRetrieveLocationHierarchyByLocationId.isEmpty()) {
                strRetrieveLocationHierarchyByLocationId = locationMasterBean4.getName();
            }
            if (locationMasterBean4.getEnglishName() != null && !locationMasterBean4.getEnglishName().trim().isEmpty() && !locationMasterBean4.getEnglishName().trim().equalsIgnoreCase(locationMasterBean4.getName())) {
                strRetrieveLocationHierarchyByLocationId = strRetrieveLocationHierarchyByLocationId + "  (" + locationMasterBean4.getEnglishName().trim() + ")";
            }
            arrayList.add(strRetrieveLocationHierarchyByLocationId);
        }
        ListView listView = MyStaticComponents.getListView(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent$$ExternalSyntheticLambda2
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m567xbd723663(arrayList2, adapterView, view, i, j);
            }
        }, -1);
        this.villageResultListView = listView;
        listView.setDivider(new ColorDrawable(0));
        this.villageResultListView.setDividerHeight(dpToPx(10));
        if (arrayList.size() > 4) {
            this.villageResultListView.setLayoutParams(new LinearLayout.LayoutParams(-1, dpToPx(260)));
        }
        this.villageSearchAreaContainer.addView(this.villageResultListView);
        setVillageHint((!this.allowCustomLocation || this.selectedBlock == null) ? LabelConstants.LOCATION_HINT_PICK : LabelConstants.LOCATION_HINT_PICK_CUSTOM);
        if (!this.allowCustomLocation || (locationMasterBean = this.selectedBlock) == null) {
            return;
        }
        addUseTypedLocationButton(locationMasterBean, str.trim());
    }

    /* renamed from: lambda$filterVillages$1$com-argusoft-sewa-android-app-component-LocationDrillDownComponent, reason: not valid java name */
    /* synthetic */ void m567xbd723663(List list, AdapterView adapterView, View view, int i, long j) {
        LocationMasterBean locationMasterBean = this.villageSearchResults.get(i);
        String str = (String) list.get(i);
        hideKeyboard();
        if (locationMasterBean.getLevel() != null && locationMasterBean.getLevel().intValue() == 6) {
            clearVillageResultViews();
            showSelectedVillage(locationMasterBean, str);
            setVillageHint(LabelConstants.LOCATION_HINT_CHANGE);
            VillageSelectionListener villageSelectionListener = this.listener;
            if (villageSelectionListener != null) {
                villageSelectionListener.onVillageSelected(locationMasterBean, str);
                return;
            }
            return;
        }
        if (this.allowCustomLocation) {
            promptForExactLocationName(locationMasterBean, str);
        }
    }

    private void promptForExactLocationName(final LocationMasterBean locationMasterBean, final String str) {
        clearVillageResultViews();
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_CUSTOM_PARENT_SELECTED_LABEL) + ": " + str);
        this.selectedVillageView = materialTextViewGenerateAnswerView;
        this.villageSearchAreaContainer.addView(materialTextViewGenerateAnswerView);
        setVillageHint(LabelConstants.LOCATION_HINT_TYPE_EXACT_NAME);
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_CUSTOM_NAME_FIELD_HINT), -1, 50, -1);
        this.customNameInput = editText;
        this.villageSearchAreaContainer.addView(editText);
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_CUSTOM_CONFIRM_BUTTON), -1, customButtonParams());
        this.customNameConfirmButton = customButton;
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m568x91bc01c7(str, locationMasterBean, view);
            }
        });
        this.villageSearchAreaContainer.addView(this.customNameConfirmButton);
    }

    /* renamed from: lambda$promptForExactLocationName$2$com-argusoft-sewa-android-app-component-LocationDrillDownComponent, reason: not valid java name */
    /* synthetic */ void m568x91bc01c7(String str, LocationMasterBean locationMasterBean, View view) {
        String str2;
        TextInputLayout textInputLayout = this.customNameInput;
        String strTrim = (textInputLayout == null || textInputLayout.getEditText() == null) ? "" : this.customNameInput.getEditText().getText().toString().trim();
        if (strTrim.isEmpty()) {
            this.customNameInput.setError(UtilBean.getMyLabel(LabelConstants.LOCATION_CUSTOM_NAME_REQUIRED));
            return;
        }
        hideKeyboard();
        clearVillageResultViews();
        StringBuilder sb = new StringBuilder();
        sb.append(UtilBean.getMyLabel(LabelConstants.LOCATION_CUSTOM_SELECTED_LABEL));
        sb.append(": ");
        if (str == null || str.isEmpty()) {
            str2 = strTrim;
        } else {
            str2 = str + " > " + strTrim;
        }
        sb.append(str2);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, sb.toString());
        this.selectedVillageView = materialTextViewGenerateAnswerView;
        this.villageSearchAreaContainer.addView(materialTextViewGenerateAnswerView);
        setVillageHint(LabelConstants.LOCATION_HINT_CUSTOM_DONE);
        CustomLocationListener customLocationListener = this.customLocationListener;
        if (customLocationListener != null) {
            customLocationListener.onCustomLocationEntered(locationMasterBean, strTrim);
        }
    }

    private int dpToPx(int i) {
        return Math.round(i * this.context.getResources().getDisplayMetrics().density);
    }

    private boolean startsWithIgnoreCase(String str, String str2) {
        return str != null && str.toLowerCase(Locale.getDefault()).startsWith(str2);
    }

    private void clearVillageResultViews() {
        this.villageSearchAreaContainer.removeView(this.villageResultListView);
        this.villageSearchAreaContainer.removeView(this.villageNoResultView);
        this.villageSearchAreaContainer.removeView(this.villageCustomButton);
        this.villageSearchAreaContainer.removeView(this.selectedVillageView);
        this.villageSearchAreaContainer.removeView(this.customNameInput);
        this.villageSearchAreaContainer.removeView(this.customNameConfirmButton);
        this.villageCustomButton = null;
        this.villageResultListView = null;
        this.villageNoResultView = null;
        this.selectedVillageView = null;
        this.customNameInput = null;
        this.customNameConfirmButton = null;
    }

    private void setVillageHint(String str) {
        MaterialTextView materialTextView = this.villageHintView;
        if (materialTextView != null) {
            materialTextView.setText(UtilBean.getMyLabel(str));
        }
    }

    private LinearLayout.LayoutParams customButtonParams() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = dpToPx(8);
        return layoutParams;
    }

    private void addUseTypedLocationButton(final LocationMasterBean locationMasterBean, final String str) {
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_CUSTOM_USE_BUTTON) + " \"" + str + "\"", -1, customButtonParams());
        this.villageCustomButton = customButton;
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.LocationDrillDownComponent$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m565xec05690f(locationMasterBean, str, view);
            }
        });
        this.villageSearchAreaContainer.addView(this.villageCustomButton);
    }

    /* renamed from: lambda$addUseTypedLocationButton$3$com-argusoft-sewa-android-app-component-LocationDrillDownComponent, reason: not valid java name */
    /* synthetic */ void m565xec05690f(LocationMasterBean locationMasterBean, String str, View view) {
        String str2;
        hideKeyboard();
        clearVillageResultViews();
        String strRetrieveLocationHierarchyByLocationId = this.locationMasterService.retrieveLocationHierarchyByLocationId(locationMasterBean.getActualID());
        StringBuilder sb = new StringBuilder();
        sb.append(UtilBean.getMyLabel(LabelConstants.LOCATION_CUSTOM_SELECTED_LABEL));
        sb.append(": ");
        if (strRetrieveLocationHierarchyByLocationId == null || strRetrieveLocationHierarchyByLocationId.isEmpty()) {
            str2 = str;
        } else {
            str2 = strRetrieveLocationHierarchyByLocationId + " > " + str;
        }
        sb.append(str2);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, sb.toString());
        this.selectedVillageView = materialTextViewGenerateAnswerView;
        this.villageSearchAreaContainer.addView(materialTextViewGenerateAnswerView);
        setVillageHint(LabelConstants.LOCATION_HINT_CUSTOM_DONE);
        CustomLocationListener customLocationListener = this.customLocationListener;
        if (customLocationListener != null) {
            customLocationListener.onCustomLocationEntered(locationMasterBean, str);
        }
    }

    private void showSelectedVillage(LocationMasterBean locationMasterBean, String str) {
        this.villageSearchAreaContainer.removeView(this.selectedVillageView);
        String str2 = UtilBean.getMyLabel(LabelConstants.SELECTED_VILLAGE_LABEL) + ": ";
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, str2 + str);
        this.selectedVillageView = materialTextViewGenerateAnswerView;
        this.villageSearchAreaContainer.addView(materialTextViewGenerateAnswerView);
    }

    private void hideKeyboard() {
        TextInputLayout textInputLayout;
        InputMethodManager inputMethodManager = (InputMethodManager) this.context.getSystemService("input_method");
        if (inputMethodManager == null || (textInputLayout = this.villageSearchInput) == null || textInputLayout.getEditText() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.villageSearchInput.getEditText().getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFromBlockLevel() {
        this.blockContainer.removeAllViews();
        this.blockOptions = new ArrayList();
        clearVillageLevel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVillageLevel() {
        this.villageContainer.removeAllViews();
        this.villageNotKnownCheckBox = null;
        this.villageNotKnownConfirmationView = null;
        this.villageSearchAreaContainer = null;
        this.villageSearchInput = null;
        this.villageResultListView = null;
        this.villageNoResultView = null;
        this.villageCustomButton = null;
        this.villageHintView = null;
        this.selectedVillageView = null;
        this.customNameInput = null;
        this.customNameConfirmButton = null;
        this.selectedBlock = null;
        this.villagesUnderSelectedBlock = new ArrayList();
        this.allLocationsUnderSelectedBlock = new ArrayList();
        this.villageSearchResults = new ArrayList();
        VillageSelectionListener villageSelectionListener = this.listener;
        if (villageSelectionListener != null) {
            villageSelectionListener.onSelectionCleared();
        }
    }

    private String[] buildSpinnerOptions(List<LocationMasterBean> list) {
        String[] strArr = new String[list.size() + 1];
        int i = 0;
        strArr[0] = UtilBean.getMyLabel("-Select-");
        while (i < list.size()) {
            int i2 = i + 1;
            strArr[i2] = list.get(i).getName();
            i = i2;
        }
        return strArr;
    }

    private int indexOfActualId(List<LocationMasterBean> list, Long l) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getActualID() != null && list.get(i).getActualID().equals(l)) {
                return i;
            }
        }
        return -1;
    }

    public boolean preselectVillage(Long l) {
        LocationMasterBean locationMasterBeanByActualId;
        LocationMasterBean locationMasterBeanByActualId2;
        int iIndexOfActualId;
        MaterialCheckBox materialCheckBox;
        if (l == null || (locationMasterBeanByActualId = this.locationMasterService.getLocationMasterBeanByActualId(Integer.valueOf(l.intValue()))) == null) {
            return false;
        }
        LocationMasterBean locationMasterBean = locationMasterBeanByActualId;
        while (locationMasterBean != null && locationMasterBean.getParent() != null && (locationMasterBeanByActualId2 = this.locationMasterService.getLocationMasterBeanByActualId(locationMasterBean.getParent())) != null) {
            if ((locationMasterBeanByActualId2.getLevel() != null && locationMasterBeanByActualId2.getLevel().intValue() == 2) || (locationMasterBeanByActualId2.getType() != null && DISTRICT_TYPES.contains(locationMasterBeanByActualId2.getType()))) {
                break;
            }
            locationMasterBean = locationMasterBeanByActualId2;
        }
        locationMasterBean = null;
        locationMasterBeanByActualId2 = null;
        if (locationMasterBean == null || locationMasterBeanByActualId2 == null || (iIndexOfActualId = indexOfActualId(this.districtOptions, locationMasterBeanByActualId2.getActualID())) < 0) {
            return false;
        }
        buildDistrictLevel(iIndexOfActualId + 1);
        List<LocationMasterBean> listFilterActive = filterActive(this.locationMasterService.retrieveLocationMasterBeansByParent(Integer.valueOf(locationMasterBeanByActualId2.getActualID().intValue())));
        int iIndexOfActualId2 = indexOfActualId(listFilterActive, locationMasterBean.getActualID());
        if (iIndexOfActualId2 < 0) {
            return false;
        }
        buildBlockLevel(locationMasterBeanByActualId2.getActualID(), iIndexOfActualId2 + 1);
        this.selectedBlock = listFilterActive.get(iIndexOfActualId2);
        this.villagesUnderSelectedBlock = collectVillagesUnderAncestor(locationMasterBean.getActualID());
        this.allLocationsUnderSelectedBlock = collectAllLocationsUnderAncestor(locationMasterBean.getActualID());
        this.villageContainer.removeAllViews();
        boolean z = locationMasterBeanByActualId.getLevel() != null && locationMasterBeanByActualId.getLevel().intValue() == 6;
        if (!z) {
            locationMasterBeanByActualId = null;
        }
        buildVillageSearchLevel(locationMasterBeanByActualId);
        if (z) {
            return true;
        }
        if (isVillageNotKnownOptionApplicable() && (materialCheckBox = this.villageNotKnownCheckBox) != null) {
            materialCheckBox.setChecked(true);
            return true;
        }
        return false;
    }
}
