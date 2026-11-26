package com.argusoft.sewa.android.app.component.listeners;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class SchoolListListener implements RadioGroup.OnCheckedChangeListener {
    private static final long DELAY = 1000;
    private boolean autoScoped;
    private String autoScopedLocationIdsPropertyName;
    private Spinner blockSpinner;
    private Context context;
    private Spinner districtSpinner;
    private LinearLayout hierarchyLayout;
    private MaterialTextView hierarchyTextView;
    private LinearLayout linearLayout;
    private MaterialTextView noSchoolTextView;
    private Spinner phcSpinner;
    private MyProcessDialog processDialog;
    private QueFormBean queFormBean;
    private TextInputLayout schoolSelectionInput;
    private MaterialTextView schoolSelectionTextView;
    private TextInputLayout searchSchoolEditText;
    private MaterialTextView searchSchoolTextView;
    private RadioGroup searchTypeRadioGroup;
    private MaterialTextView selectBlockQues;
    private MaterialTextView selectDistrictQues;
    private MaterialTextView selectPhcQues;
    private MaterialTextView selectSubcenterQues;
    private MaterialTextView selectVillageQues;
    private Integer standard;
    private Spinner subcenterSpinner;
    private Spinner villageSpinner;
    private List<SchoolBean> schoolBeans = new ArrayList();
    private Timer timer = new Timer();
    private Map<String, Long> selectionMap = new HashMap();
    private Long selectedLocationId = null;
    private SchoolBean userSelectedSchool = null;

    public SchoolListListener(Context context, QueFormBean queFormBean, LinearLayout linearLayout, RadioGroup radioGroup) {
        this.context = context;
        this.queFormBean = queFormBean;
        this.linearLayout = linearLayout;
        this.searchTypeRadioGroup = radioGroup;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        if (this.searchTypeRadioGroup.getCheckedRadioButtonId() == -1) {
            return;
        }
        String strCheckValidation = null;
        this.queFormBean.setAnswer(null);
        this.queFormBean.setHasUnselectedText(false);
        if (this.queFormBean.getValidations() != null) {
            for (ValidationTagBean validationTagBean : this.queFormBean.getValidations()) {
                if (validationTagBean.getMethod().contains(GlobalTypes.KEY_VALUE_SEPARATOR)) {
                    if (validationTagBean.getMethod().split(GlobalTypes.KEY_VALUE_SEPARATOR)[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_SCHOOL)) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(validationTagBean);
                        strCheckValidation = DynamicUtils.checkValidation(GlobalTypes.SCHOOL_TYPE_PRIMARY, 0, arrayList);
                    }
                } else if (validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_SCHOOL)) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(validationTagBean);
                    strCheckValidation = DynamicUtils.checkValidation(GlobalTypes.SCHOOL_TYPE_HIGHER_SECONDARY, 0, arrayList2);
                }
            }
            if (strCheckValidation != null) {
                SewaUtil.generateToast(SharedStructureData.context, strCheckValidation);
                return;
            }
        }
        if (this.searchTypeRadioGroup.getCheckedRadioButtonId() == 10006) {
            addSearchLayoutForSchool();
            if (this.searchSchoolEditText.getEditText() != null) {
                retrieveSchoolsBySearchFromDB(this.searchSchoolEditText.getEditText().getText().toString());
                return;
            }
            return;
        }
        if (this.searchTypeRadioGroup.getCheckedRadioButtonId() == 10007) {
            addHierarchyLayoutForSchool();
            retrieveSchoolsByLocationFromDB();
        }
    }

    private void addSearchLayoutForSchool() {
        this.linearLayout.removeView(this.hierarchyTextView);
        this.linearLayout.removeView(this.hierarchyLayout);
        this.linearLayout.removeView(this.searchSchoolTextView);
        this.linearLayout.removeView(this.searchSchoolEditText);
        this.linearLayout.removeView(this.schoolSelectionTextView);
        this.linearLayout.removeView(this.schoolSelectionInput);
        this.linearLayout.removeView(this.noSchoolTextView);
        if (this.searchSchoolTextView == null) {
            this.searchSchoolTextView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SEARCH_SCHOOL));
        }
        if (this.searchSchoolEditText == null) {
            TextInputLayout editText = MyStaticComponents.getEditText(this.context, UtilBean.getMyLabel(LabelConstants.SEARCH_SCHOOL), 1101, 100, -1);
            this.searchSchoolEditText = editText;
            if (editText.getEditText() != null) {
                this.searchSchoolEditText.getEditText().addTextChangedListener(new AnonymousClass1());
            }
        }
        this.linearLayout.addView(this.searchSchoolTextView);
        this.linearLayout.addView(this.searchSchoolEditText);
    }

    /* renamed from: com.argusoft.sewa.android.app.component.listeners.SchoolListListener$1, reason: invalid class name */
    class AnonymousClass1 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass1() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            SchoolListListener.this.timer.cancel();
            SchoolListListener.this.timer = new Timer();
            SchoolListListener.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.1.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        ((Activity) SchoolListListener.this.context).runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                                SchoolListListener.this.retrieveSchoolsBySearchFromDB(charSequence.toString());
                                SchoolListListener.this.searchSchoolEditText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() != 0) {
                        return;
                    }
                    ((Activity) SchoolListListener.this.context).runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.1.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                            SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                            SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                            SchoolListListener.this.schoolBeans.clear();
                        }
                    });
                }
            }, SchoolListListener.DELAY);
        }
    }

    private void addHierarchyLayoutForSchool() {
        this.linearLayout.removeView(this.hierarchyTextView);
        this.linearLayout.removeView(this.hierarchyLayout);
        this.linearLayout.removeView(this.searchSchoolTextView);
        this.linearLayout.removeView(this.searchSchoolEditText);
        this.linearLayout.removeView(this.schoolSelectionTextView);
        this.linearLayout.removeView(this.schoolSelectionInput);
        this.linearLayout.removeView(this.noSchoolTextView);
        if (this.hierarchyTextView == null) {
            this.hierarchyTextView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_HIERARCHY_FOR_SCHOOL));
        }
        if (this.hierarchyLayout == null) {
            this.hierarchyLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -1));
            addRegionSpinner();
        }
        this.linearLayout.addView(this.hierarchyTextView);
        this.linearLayout.addView(this.hierarchyLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retrieveSchoolsBySearchFromDB(String str) {
        this.queFormBean.setAnswer(null);
        if (str == null || str.length() <= 2) {
            return;
        }
        MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.MSG_PROCESSING);
        this.processDialog = myProcessDialog;
        myProcessDialog.show();
        setStandard();
        this.schoolBeans = SharedStructureData.schoolService.retrieveSchoolsListBySearch(str, this.standard);
        addSchoolSelectionLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retrieveSchoolsByLocationFromDB() {
        this.queFormBean.setAnswer(null);
        if (this.selectedLocationId != null) {
            MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.MSG_PROCESSING);
            this.processDialog = myProcessDialog;
            myProcessDialog.show();
            setStandard();
            this.schoolBeans = SharedStructureData.schoolService.retrieveSchoolsListByLocationId(this.selectedLocationId, this.standard);
            addSchoolSelectionLayout();
        }
    }

    public Integer getStandard() {
        return this.standard;
    }

    private void setStandard() {
        if (this.queFormBean.getFormulas() == null || this.queFormBean.getFormulas().isEmpty()) {
            return;
        }
        Iterator<FormulaTagBean> it = this.queFormBean.getFormulas().iterator();
        while (it.hasNext()) {
            String[] strArrSplit = it.next().getFormulavalue().split(GlobalTypes.KEY_VALUE_SEPARATOR);
            if (strArrSplit.length > 1 && strArrSplit[0].equalsIgnoreCase(FormulaConstants.FORMULA_SET_STANDARD)) {
                String str = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(strArrSplit[1], this.queFormBean.getLoopCounter()));
                if (str != null) {
                    this.standard = Integer.valueOf(Integer.parseInt(str));
                    return;
                } else {
                    this.standard = null;
                    return;
                }
            }
        }
    }

    public void showAutoScopedSchools(String str) {
        this.autoScoped = true;
        this.autoScopedLocationIdsPropertyName = str;
    }

    private void fetchAutoScopedSchools() {
        this.queFormBean.setAnswer(null);
        String relatedPropertyNameWithLoopCounter = UtilBean.getRelatedPropertyNameWithLoopCounter(this.autoScopedLocationIdsPropertyName, this.queFormBean.getLoopCounter());
        String str = SharedStructureData.relatedPropertyHashTable.get(relatedPropertyNameWithLoopCounter);
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.trim().isEmpty()) {
            for (String str2 : str.split(GlobalTypes.COMMA)) {
                try {
                    arrayList.add(Integer.valueOf(str2.trim()));
                } catch (NumberFormatException unused) {
                    Log.e(getClass().getSimpleName(), "Invalid location id in " + relatedPropertyNameWithLoopCounter + ": " + str2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            Log.i(getClass().getSimpleName(), "fetchAutoScopedSchools: no location ids in " + relatedPropertyNameWithLoopCounter + " (value=" + str + ")");
            this.schoolBeans = new ArrayList();
            addSchoolSelectionLayout();
            return;
        }
        MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.MSG_PROCESSING);
        this.processDialog = myProcessDialog;
        myProcessDialog.show();
        setStandard();
        this.schoolBeans = SharedStructureData.schoolService.retrieveSchoolsListByLocationIds(arrayList, this.standard);
        Log.i(getClass().getSimpleName(), "fetchAutoScopedSchools: locationIds=" + arrayList + " standard=" + this.standard + " results=" + this.schoolBeans.size());
        addSchoolSelectionLayout();
    }

    public void resetIfStandardChanged(RadioGroup radioGroup) {
        if (this.autoScoped) {
            fetchAutoScopedSchools();
            return;
        }
        if (this.queFormBean.getFormulas() == null || this.queFormBean.getFormulas().isEmpty()) {
            return;
        }
        Iterator<FormulaTagBean> it = this.queFormBean.getFormulas().iterator();
        while (it.hasNext()) {
            String[] strArrSplit = it.next().getFormulavalue().split(GlobalTypes.KEY_VALUE_SEPARATOR);
            if (strArrSplit.length > 1 && strArrSplit[0].equalsIgnoreCase(FormulaConstants.FORMULA_SET_STANDARD)) {
                String str = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(strArrSplit[1], this.queFormBean.getLoopCounter()));
                Integer numValueOf = str != null ? Integer.valueOf(Integer.parseInt(str)) : null;
                boolean z = numValueOf == null;
                Integer num = this.standard;
                if ((z == (num == null) && (numValueOf == null || numValueOf.equals(num))) || radioGroup == null || radioGroup.getCheckedRadioButtonId() == -1) {
                    return;
                }
                onCheckedChanged(radioGroup, radioGroup.getCheckedRadioButtonId());
                return;
            }
        }
    }

    private void addSchoolSelectionLayout() {
        ((Activity) this.context).runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.2
            @Override // java.lang.Runnable
            public void run() {
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                if (SchoolListListener.this.schoolBeans.isEmpty()) {
                    SchoolListListener.this.queFormBean.setHasUnselectedText(false);
                    SchoolListListener schoolListListener = SchoolListListener.this;
                    schoolListListener.noSchoolTextView = MyStaticComponents.generateInstructionView(schoolListListener.context, UtilBean.getMyLabel(LabelConstants.NO_SCHOOL_AVAILABLE_FOR_SELECTED_LOCATION));
                    SchoolListListener.this.linearLayout.addView(SchoolListListener.this.noSchoolTextView);
                    if (SchoolListListener.this.processDialog == null || !SchoolListListener.this.processDialog.isShowing()) {
                        return;
                    }
                    SchoolListListener.this.processDialog.dismiss();
                    return;
                }
                if (SchoolListListener.this.schoolSelectionTextView == null) {
                    SchoolListListener schoolListListener2 = SchoolListListener.this;
                    schoolListListener2.schoolSelectionTextView = MyStaticComponents.generateQuestionView(null, null, schoolListListener2.context, UtilBean.getMyLabel(LabelConstants.SELECT_SCHOOL));
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = SchoolListListener.this.schoolBeans.iterator();
                while (it.hasNext()) {
                    arrayList.add(((SchoolBean) it.next()).getName());
                }
                SchoolListListener.this.userSelectedSchool = null;
                SchoolListListener.this.queFormBean.setHasUnselectedText(false);
                final AutoCompleteTextView autoCompleteTextView = new AutoCompleteTextView(SchoolListListener.this.context);
                ArrayAdapter arrayAdapter = new ArrayAdapter(SchoolListListener.this.context, R.layout.spinner_item_dropdown, arrayList);
                autoCompleteTextView.setThreshold(1);
                autoCompleteTextView.setAdapter(arrayAdapter);
                autoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.2.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        String str = (String) adapterView.getItemAtPosition(i);
                        for (SchoolBean schoolBean : SchoolListListener.this.schoolBeans) {
                            if (schoolBean.getName().equals(str)) {
                                Log.i(getClass().getSimpleName(), "Select School : " + schoolBean.getActualId() + " : " + schoolBean.getName());
                                SchoolListListener.this.queFormBean.setAnswer(schoolBean.getActualId());
                                SchoolListListener.this.queFormBean.setHasUnselectedText(false);
                                SharedStructureData.selectedSchool = schoolBean;
                                SharedStructureData.selectedSchoolForIFA = schoolBean;
                                SchoolListListener.this.userSelectedSchool = schoolBean;
                                return;
                            }
                        }
                    }
                });
                autoCompleteTextView.addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.2.2
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        SchoolListListener.this.queFormBean.setAnswer(null);
                        SchoolListListener.this.queFormBean.setHasUnselectedText(charSequence != null && charSequence.length() > 0);
                        SchoolListListener.this.userSelectedSchool = null;
                    }
                });
                autoCompleteTextView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.2.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        autoCompleteTextView.showDropDown();
                    }
                });
                autoCompleteTextView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.2.4
                    @Override // android.view.View.OnFocusChangeListener
                    public void onFocusChange(View view, boolean z) {
                        if (z) {
                            autoCompleteTextView.showDropDown();
                        }
                    }
                });
                autoCompleteTextView.setHint(UtilBean.getMyLabel(LabelConstants.SEARCH_SCHOOL));
                autoCompleteTextView.setBackground(null);
                autoCompleteTextView.setTextSize(16.0f);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.setMargins(0, 20, 0, 20);
                autoCompleteTextView.setLayoutParams(layoutParams);
                SchoolListListener.this.schoolSelectionInput = new TextInputLayout(SchoolListListener.this.context);
                SchoolListListener.this.schoolSelectionInput.setEndIconMode(3);
                SchoolListListener.this.schoolSelectionInput.setHintEnabled(false);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams2.setMargins(0, 10, 0, 50);
                SchoolListListener.this.schoolSelectionInput.setLayoutParams(layoutParams2);
                SchoolListListener.this.schoolSelectionInput.addView(autoCompleteTextView);
                SchoolListListener.this.linearLayout.addView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.addView(SchoolListListener.this.schoolSelectionInput);
                if (SchoolListListener.this.processDialog == null || !SchoolListListener.this.processDialog.isShowing()) {
                    return;
                }
                SchoolListListener.this.processDialog.dismiss();
            }
        });
    }

    private void addRegionSpinner() {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(1, 2L);
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByLevelAndParent.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 1);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SchoolListListener.this.selectionMap.remove(MorbiditiesConstant.TWO_PLUS);
                SchoolListListener.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                SchoolListListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                SchoolListListener.this.selectionMap.remove("5");
                SchoolListListener.this.selectionMap.remove("6");
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectDistrictQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.districtSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectBlockQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.blockSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectPhcQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.phcSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectSubcenterQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.subcenterSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectVillageQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.villageSpinner);
                if (i2 == 0) {
                    SchoolListListener.this.selectedLocationId = null;
                    SchoolListListener.this.schoolBeans.clear();
                } else {
                    LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                    SchoolListListener.this.selectionMap.put(MorbiditiesConstant.ONE_PLUS, locationMasterBean.getActualID());
                    SchoolListListener.this.selectedLocationId = locationMasterBean.getActualID();
                    SchoolListListener.this.addDistrictSpinner(locationMasterBean.getActualID());
                }
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                SchoolListListener.this.retrieveSchoolsByLocationFromDB();
            }
        });
        this.hierarchyLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.REGION)));
        this.hierarchyLayout.addView(spinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDistrictSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(2, l);
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByLevelAndParent.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 2);
        this.districtSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SchoolListListener.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                SchoolListListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                SchoolListListener.this.selectionMap.remove("5");
                SchoolListListener.this.selectionMap.remove("6");
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectBlockQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.blockSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectPhcQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.phcSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectSubcenterQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.subcenterSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectVillageQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.villageSpinner);
                if (i2 != 0) {
                    LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                    SchoolListListener.this.selectionMap.put(MorbiditiesConstant.TWO_PLUS, locationMasterBean.getActualID());
                    SchoolListListener.this.selectedLocationId = locationMasterBean.getActualID();
                    SchoolListListener.this.addBlockSpinner(locationMasterBean.getActualID());
                } else {
                    SchoolListListener schoolListListener = SchoolListListener.this;
                    schoolListListener.selectedLocationId = (Long) schoolListListener.selectionMap.get(MorbiditiesConstant.ONE_PLUS);
                }
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                SchoolListListener.this.retrieveSchoolsByLocationFromDB();
            }
        });
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DISTRICT_OR_CORPORATION));
        this.selectDistrictQues = materialTextViewGenerateQuestionView;
        this.hierarchyLayout.addView(materialTextViewGenerateQuestionView);
        this.hierarchyLayout.addView(this.districtSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBlockSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(3, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 3);
        this.blockSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                SchoolListListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                SchoolListListener.this.selectionMap.remove("5");
                SchoolListListener.this.selectionMap.remove("6");
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectPhcQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.phcSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectSubcenterQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.subcenterSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectVillageQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    SchoolListListener.this.selectionMap.put(MorbiditiesConstant.THREE_PLUS, locationMasterBean2.getActualID());
                    SchoolListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    SchoolListListener.this.addPhcSpinner(locationMasterBean2.getActualID());
                } else {
                    SchoolListListener schoolListListener = SchoolListListener.this;
                    schoolListListener.selectedLocationId = (Long) schoolListListener.selectionMap.get(MorbiditiesConstant.TWO_PLUS);
                }
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                SchoolListListener.this.retrieveSchoolsByLocationFromDB();
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LocationConstants.LocationType.TALUKA)) {
                    sb.append(LabelConstants.BLOCK);
                }
                if (str.equals(LocationConstants.LocationType.ZONE)) {
                    sb.append(LabelConstants.ZONE);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.TALUKA)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BLOCK));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.ZONE)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ZONE));
            }
        } else {
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BLOCK));
        }
        this.hierarchyLayout.addView(this.selectBlockQues);
        this.hierarchyLayout.addView(this.blockSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPhcSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(4, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 3);
        this.phcSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                SchoolListListener.this.selectionMap.remove("5");
                SchoolListListener.this.selectionMap.remove("6");
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectSubcenterQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.subcenterSpinner);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectVillageQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    SchoolListListener.this.selectionMap.put(MorbiditiesConstant.FOUR_PLUS, locationMasterBean2.getActualID());
                    SchoolListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    SchoolListListener.this.addSubcenterSpinner(locationMasterBean2.getActualID());
                } else {
                    SchoolListListener schoolListListener = SchoolListListener.this;
                    schoolListListener.selectedLocationId = (Long) schoolListListener.selectionMap.get(MorbiditiesConstant.THREE_PLUS);
                }
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                SchoolListListener.this.retrieveSchoolsByLocationFromDB();
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("U")) {
                    sb.append(LabelConstants.UHC);
                }
                if (str.equals("P")) {
                    sb.append(LabelConstants.PHC);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("U")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.UHC));
            }
            if (((String) arrayList.get(0)).equals("P")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.PHC));
            }
        } else {
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.PHC));
        }
        this.hierarchyLayout.addView(this.selectPhcQues);
        this.hierarchyLayout.addView(this.phcSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubcenterSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(5, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 5);
        this.subcenterSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                SchoolListListener.this.selectionMap.remove("5");
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.selectVillageQues);
                SchoolListListener.this.hierarchyLayout.removeView(SchoolListListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    SchoolListListener.this.selectionMap.put("5", locationMasterBean2.getActualID());
                    SchoolListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    SchoolListListener.this.addVillageSpinner(locationMasterBean2.getActualID());
                } else {
                    SchoolListListener schoolListListener = SchoolListListener.this;
                    schoolListListener.selectedLocationId = (Long) schoolListListener.selectionMap.get(MorbiditiesConstant.FOUR_PLUS);
                }
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                SchoolListListener.this.retrieveSchoolsByLocationFromDB();
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("ANM")) {
                    sb.append(LabelConstants.ANM_AREA);
                }
                if (str.equals("SC")) {
                    sb.append(LabelConstants.SUB_CENTER);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("ANM")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ANM_AREA));
            }
            if (((String) arrayList.get(0)).equals("SC")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SUB_CENTER));
            }
        } else {
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SUB_CENTER));
        }
        this.hierarchyLayout.addView(this.selectSubcenterQues);
        this.hierarchyLayout.addView(this.subcenterSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addVillageSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(6, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 6);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.SchoolListListener.8
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                if (i3 == 0) {
                    SchoolListListener.this.selectionMap.remove("6");
                    SchoolListListener schoolListListener = SchoolListListener.this;
                    schoolListListener.selectedLocationId = (Long) schoolListListener.selectionMap.get("5");
                } else {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    SchoolListListener.this.selectionMap.put("6", locationMasterBean2.getActualID());
                    SchoolListListener.this.selectedLocationId = locationMasterBean2.getActualID();
                }
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionTextView);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.schoolSelectionInput);
                SchoolListListener.this.linearLayout.removeView(SchoolListListener.this.noSchoolTextView);
                SchoolListListener.this.retrieveSchoolsByLocationFromDB();
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LabelConstants.UA)) {
                    sb.append(LabelConstants.URBAN_AREA);
                }
                if (str.equals(LocationConstants.LocationType.VILLAGE)) {
                    sb.append("Village");
                }
                if (str.equals("ANG")) {
                    sb.append(LabelConstants.ANGANWADI_AREA);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LabelConstants.UA)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.URBAN_AREA));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.VILLAGE)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Village"));
            }
            if (((String) arrayList.get(0)).equals("ANG")) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ANGANWADI_AREA));
            }
        } else {
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Village"));
        }
        this.hierarchyLayout.addView(this.selectVillageQues);
        this.hierarchyLayout.addView(this.villageSpinner);
    }
}
