package com.argusoft.sewa.android.app.component.listeners;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleExceptionBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleMasterBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.text.Collator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class HealthInfrastructureListener implements AdapterView.OnItemSelectedListener {
    private static final long DELAY = 1000;
    private Spinner blockSpinner;
    private Context context;
    private Spinner districtSpinner;
    private String formType;
    private LinearLayout hierarchyLayout;
    private TextView hierarchyTextView;
    private LinearLayout infraSelectionContactPersonDetailsList;
    private Spinner infraSelectionSpinner;
    private TextView infraSelectionTextView;
    private Map<Long, String> infraTypeMap;
    private LinearLayout linearLayout;
    private MaterialTextView noInfraTextView;
    private Spinner phcSpinner;
    private MyProcessDialog processDialog;
    private QueFormBean queFormBean;
    private TextInputLayout searchInfraEditText;
    private TextView searchInfraTextView;
    private RadioGroup searchTypeRadioGroup;
    private TextView searchTypeTextView;
    private TextView selectBlockQues;
    private TextView selectDistrictQues;
    private TextView selectPhcQues;
    private TextView selectSubCenterQues;
    private TextView selectVillageQues;
    private Long selectedInfraTypeId;
    String showSmartReferralType;
    List<SmartReferralScheduleExceptionBean> smartReferralScheduleExceptionBeans;
    List<SmartReferralScheduleMasterBean> smartReferralScheduleMasterBeans;
    private Spinner subCenterSpinner;
    private Spinner typeSpinner;
    private Spinner villageSpinner;
    private List<HealthInfrastructureBean> infrastructureBeans = new ArrayList();
    private List<Integer> locationLevels = new ArrayList();
    private final Map<Integer, List<LocationMasterBean>> levelLocationListMap = new HashMap();
    private final Map<Integer, LocationMasterBean> levelSelectedLocationMap = new HashMap();
    private final Map<Integer, MaterialTextView> levelSelectLocationQueMap = new HashMap();
    private final Map<Integer, Spinner> levelSpinnerMap = new HashMap();
    private final Collator collator = Collator.getInstance(new Locale("hi", "IN"));
    private Timer timer = new Timer();
    private Map<String, Long> selectionMap = new HashMap();
    private Long selectedLocationId = null;
    private LocationMasterBean selectedLocation = null;
    private LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
    private SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
    private SimpleDateFormat sdfAmPm = new SimpleDateFormat("hh:mm aa");

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public HealthInfrastructureListener(Context context, QueFormBean queFormBean, LinearLayout linearLayout, Spinner spinner, Map<Long, String> map, String str) {
        this.showSmartReferralType = "0";
        this.context = context;
        this.queFormBean = queFormBean;
        this.linearLayout = linearLayout;
        this.typeSpinner = spinner;
        this.infraTypeMap = map;
        this.formType = str;
        if (SharedStructureData.relatedPropertyHashTable.containsKey(RelatedPropertyNameConstants.SHOW_SMART_REFERRAL)) {
            this.showSmartReferralType = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SHOW_SMART_REFERRAL);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        String strCheckValidation = null;
        this.queFormBean.setAnswer(null);
        this.linearLayout.removeAllViews();
        this.linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_HEALTH_INFRASTRUCTURE_TYPE));
        this.linearLayout.addView(this.typeSpinner);
        if (this.typeSpinner.getSelectedItem().equals(UtilBean.getMyLabel("-Select-")) || this.typeSpinner.getSelectedItem().equals("-Select-")) {
            return;
        }
        Iterator<Map.Entry<Long, String>> it = this.infraTypeMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<Long, String> next = it.next();
            if (next.getValue().equals(this.typeSpinner.getSelectedItem())) {
                this.selectedInfraTypeId = next.getKey();
                if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha")) {
                    this.locationLevels = SharedStructureData.healthInfraTypeLocationService.retrieveLocationLevelsById(next.getKey());
                }
                Log.i(getClass().getSimpleName(), "Selected Health Infrastructure Type : " + next.getKey() + " : : " + next.getValue());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE, next.getValue());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE_ID, next.getKey().toString());
            }
        }
        if (this.queFormBean.getValidations() != null) {
            for (ValidationTagBean validationTagBean : this.queFormBean.getValidations()) {
                if (validationTagBean.getMethod().contains(GlobalTypes.KEY_VALUE_SEPARATOR)) {
                    if (validationTagBean.getMethod().split(GlobalTypes.KEY_VALUE_SEPARATOR)[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_HEALTH_INFRA)) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(validationTagBean);
                        strCheckValidation = DynamicUtils.checkValidation(this.selectedInfraTypeId.toString(), 0, arrayList);
                    }
                } else if (validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_HEALTH_INFRA)) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(validationTagBean);
                    strCheckValidation = DynamicUtils.checkValidation(this.selectedInfraTypeId.toString(), 0, arrayList2);
                }
            }
        }
        if (strCheckValidation != null) {
            SewaUtil.generateToast(SharedStructureData.context, strCheckValidation);
        } else {
            setSearchTypeView();
        }
    }

    private void setSearchTypeView() {
        this.queFormBean.setAnswer(null);
        this.linearLayout.removeView(this.infraSelectionTextView);
        this.linearLayout.removeView(this.infraSelectionSpinner);
        this.linearLayout.removeView(this.infraSelectionContactPersonDetailsList);
        this.linearLayout.removeView(this.noInfraTextView);
        this.linearLayout.removeView(this.searchTypeTextView);
        this.linearLayout.removeView(this.searchTypeRadioGroup);
        if (this.searchTypeTextView == null) {
            if (this.queFormBean.getIsmandatory() != null && this.queFormBean.getIsmandatory().equalsIgnoreCase("T")) {
                this.searchTypeTextView = MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.CHOOSE_OPTION_TO_SEARCH);
            } else {
                this.searchTypeTextView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CHOOSE_OPTION_TO_SEARCH);
            }
        }
        if (this.searchTypeRadioGroup == null) {
            RadioGroup radioGroup = new RadioGroup(this.context);
            this.searchTypeRadioGroup = radioGroup;
            radioGroup.setPadding(0, 0, 0, 50);
            this.searchTypeRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, LabelConstants.SEARCH_BY_NAME, IdConstants.HEALTH_INFRA_SEARCH_BY_NAME_RADIO_BUTTON_ID));
            this.searchTypeRadioGroup.addView(MyStaticComponents.getRadioButton(this.context, LabelConstants.SEARCH_BY_HIERARCHY, IdConstants.HEALTH_INFRA_SEARCH_BY_HIERARCHY_RADIO_BUTTON_ID));
            this.searchTypeRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$$ExternalSyntheticLambda2
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                    this.f$0.m583xf912000(radioGroup2, i);
                }
            });
        }
        this.linearLayout.addView(this.searchTypeTextView);
        this.linearLayout.addView(this.searchTypeRadioGroup);
        if (this.searchTypeRadioGroup.getCheckedRadioButtonId() == 10027) {
            addSearchLayoutForInfrastructure();
            if (this.searchInfraEditText.getEditText() != null) {
                retrieveInfrastructuresBySearchFromDB(this.searchInfraEditText.getEditText().getText().toString());
                return;
            }
            return;
        }
        if (this.searchTypeRadioGroup.getCheckedRadioButtonId() == 10028) {
            addHierarchyLayoutForInfrastructure();
            retrieveInfrastructureByLocationFromDB();
        }
    }

    /* renamed from: lambda$setSearchTypeView$0$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener, reason: not valid java name */
    /* synthetic */ void m583xf912000(RadioGroup radioGroup, int i) {
        this.queFormBean.setAnswer(null);
        this.linearLayout.removeView(this.infraSelectionTextView);
        this.linearLayout.removeView(this.infraSelectionSpinner);
        this.linearLayout.removeView(this.infraSelectionContactPersonDetailsList);
        this.linearLayout.removeView(this.noInfraTextView);
        if (i == 10027) {
            addSearchLayoutForInfrastructure();
            if (this.searchInfraEditText.getEditText() != null) {
                retrieveInfrastructuresBySearchFromDB(this.searchInfraEditText.getEditText().getText().toString());
                return;
            }
            return;
        }
        if (i == 10028) {
            addHierarchyLayoutForInfrastructure();
            retrieveInfrastructureByLocationFromDB();
        }
    }

    private void addSearchLayoutForInfrastructure() {
        this.linearLayout.removeView(this.hierarchyTextView);
        this.linearLayout.removeView(this.hierarchyLayout);
        this.linearLayout.removeView(this.searchInfraTextView);
        this.linearLayout.removeView(this.searchInfraEditText);
        if (this.searchInfraTextView == null) {
            this.searchInfraTextView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SEARCH_HEALTH_INFRASTRUCTURE);
        }
        if (this.searchInfraEditText == null) {
            TextInputLayout editText = MyStaticComponents.getEditText(this.context, UtilBean.getMyLabel(LabelConstants.SEARCH_HEALTH_INFRASTRUCTURE), IdConstants.HEALTH_INFRA_SEARCH_BY_NAME_EDIT_TEXT_ID, 100, -1);
            this.searchInfraEditText = editText;
            if (editText.getEditText() != null) {
                this.searchInfraEditText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.1
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        HealthInfrastructureListener.this.timer.cancel();
                        HealthInfrastructureListener.this.timer = new Timer();
                        HealthInfrastructureListener.this.timer.schedule(new C00621(charSequence), HealthInfrastructureListener.DELAY);
                    }

                    /* renamed from: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$1$1, reason: invalid class name and collision with other inner class name */
                    class C00621 extends TimerTask {
                        final /* synthetic */ CharSequence val$s;

                        C00621(CharSequence charSequence) {
                            this.val$s = charSequence;
                        }

                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence = this.val$s;
                            if (charSequence != null && charSequence.length() > 2) {
                                Activity activity = (Activity) HealthInfrastructureListener.this.context;
                                final CharSequence charSequence2 = this.val$s;
                                activity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$1$1$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m584x54ea5318(charSequence2);
                                    }
                                });
                            } else {
                                CharSequence charSequence3 = this.val$s;
                                if (charSequence3 == null || charSequence3.length() != 0) {
                                    return;
                                }
                                ((Activity) HealthInfrastructureListener.this.context).runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$1$1$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m585x9ce9b177();
                                    }
                                });
                            }
                        }

                        /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener$1$1, reason: not valid java name */
                        /* synthetic */ void m584x54ea5318(CharSequence charSequence) {
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionContactPersonDetailsList);
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                            HealthInfrastructureListener.this.retrieveInfrastructuresBySearchFromDB(charSequence.toString());
                            HealthInfrastructureListener.this.searchInfraEditText.setFocusable(true);
                        }

                        /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener$1$1, reason: not valid java name */
                        /* synthetic */ void m585x9ce9b177() {
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionContactPersonDetailsList);
                            HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                            HealthInfrastructureListener.this.infrastructureBeans.clear();
                        }
                    }
                });
            }
        }
        this.linearLayout.addView(this.searchInfraTextView);
        this.linearLayout.addView(this.searchInfraEditText);
    }

    private void addHierarchyLayoutForInfrastructure() {
        this.linearLayout.removeView(this.hierarchyTextView);
        this.linearLayout.removeView(this.hierarchyLayout);
        this.linearLayout.removeView(this.searchInfraTextView);
        this.linearLayout.removeView(this.searchInfraEditText);
        if (this.hierarchyTextView == null) {
            this.hierarchyTextView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_HIERARCHY_FOR_HEALTH_INFRASTRUCTURE);
        }
        this.hierarchyLayout = MyStaticComponents.getLinearLayout(this.context, IdConstants.HEALTH_INFRA_SEARCH_BY_HIERARCHY_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -1));
        if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha")) {
            addSpinnersForLocationHierarchy();
        } else {
            addRegionSpinner();
        }
        this.linearLayout.addView(this.hierarchyTextView);
        this.linearLayout.addView(this.hierarchyLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retrieveInfrastructuresBySearchFromDB(String str) {
        this.queFormBean.setAnswer(null);
        if (str == null || str.length() <= 2) {
            return;
        }
        MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.MSG_PROCESSING);
        this.processDialog = myProcessDialog;
        myProcessDialog.show();
        this.infrastructureBeans = SharedStructureData.healthInfrastructureService.retrieveHealthInfraBySearch(str, this.selectedInfraTypeId, this.queFormBean.getDatamap());
        addInfrastructureSelectionLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retrieveInfrastructureByLocationFromDB() {
        this.queFormBean.setAnswer(null);
        if (this.selectedLocation == null && this.selectedLocationId == null) {
            return;
        }
        MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.MSG_PROCESSING);
        this.processDialog = myProcessDialog;
        myProcessDialog.show();
        if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha")) {
            this.infrastructureBeans = SharedStructureData.healthInfrastructureService.retrieveHealthInfraByLocationId(this.selectedLocation.getActualID(), this.selectedInfraTypeId, this.queFormBean.getDatamap());
        } else {
            this.infrastructureBeans = SharedStructureData.healthInfrastructureService.retrieveHealthInfraByLocationId(this.selectedLocationId, this.selectedInfraTypeId, this.queFormBean.getDatamap());
        }
        addInfrastructureSelectionLayout();
    }

    private void addInfrastructureSelectionLayout() {
        ((Activity) this.context).runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.2
            @Override // java.lang.Runnable
            public void run() {
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionContactPersonDetailsList);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                if (HealthInfrastructureListener.this.selectedInfraTypeId.equals(RchConstants.INFRA_PRIVATE_HOSPITAL)) {
                    HealthInfrastructureBean healthInfrastructureBean = new HealthInfrastructureBean();
                    healthInfrastructureBean.setActualId(-1L);
                    healthInfrastructureBean.setTypeId(RchConstants.INFRA_PRIVATE_HOSPITAL);
                    healthInfrastructureBean.setName(UtilBean.getMyLabel("Other"));
                    HealthInfrastructureListener.this.infrastructureBeans.add(healthInfrastructureBean);
                }
                if (HealthInfrastructureListener.this.selectedInfraTypeId.equals(RchConstants.INFRA_TRUST_HOSPITAL)) {
                    HealthInfrastructureBean healthInfrastructureBean2 = new HealthInfrastructureBean();
                    healthInfrastructureBean2.setActualId(-1L);
                    healthInfrastructureBean2.setTypeId(RchConstants.INFRA_TRUST_HOSPITAL);
                    healthInfrastructureBean2.setName(UtilBean.getMyLabel("Other"));
                    HealthInfrastructureListener.this.infrastructureBeans.add(healthInfrastructureBean2);
                }
                if (!HealthInfrastructureListener.this.infrastructureBeans.isEmpty()) {
                    if (HealthInfrastructureListener.this.infraSelectionTextView == null) {
                        HealthInfrastructureListener healthInfrastructureListener = HealthInfrastructureListener.this;
                        healthInfrastructureListener.infraSelectionTextView = MyStaticComponents.generateQuestionView(null, null, healthInfrastructureListener.context, LabelConstants.SELECT_HEALTH_INFRASTRUCTURE);
                    }
                    String[] strArr = new String[HealthInfrastructureListener.this.infrastructureBeans.size() + 1];
                    if (!HealthInfrastructureListener.this.infrastructureBeans.isEmpty()) {
                        strArr[0] = UtilBean.getMyLabel("-Select-");
                        Iterator it = HealthInfrastructureListener.this.infrastructureBeans.iterator();
                        int i = 1;
                        while (it.hasNext()) {
                            strArr[i] = ((HealthInfrastructureBean) it.next()).getName();
                            i++;
                        }
                    } else {
                        strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_HEALTH_INFRASTRUCTURE_AVAILABLE);
                    }
                    HealthInfrastructureListener healthInfrastructureListener2 = HealthInfrastructureListener.this;
                    healthInfrastructureListener2.infraSelectionSpinner = MyStaticComponents.getSpinner(healthInfrastructureListener2.context, strArr, 0, 1);
                    HealthInfrastructureListener.this.infraSelectionSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.2.1
                        @Override // android.widget.AdapterView.OnItemSelectedListener
                        public void onNothingSelected(AdapterView<?> adapterView) {
                        }

                        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                        /* JADX WARN: Removed duplicated region for block: B:8:0x006c  */
                        @Override // android.widget.AdapterView.OnItemSelectedListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void onItemSelected(android.widget.AdapterView<?> r1, android.view.View r2, int r3, long r4) {
                            /*
                                Method dump skipped, instructions count: 342
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.AnonymousClass2.AnonymousClass1.onItemSelected(android.widget.AdapterView, android.view.View, int, long):void");
                        }
                    });
                    HealthInfrastructureListener.this.linearLayout.addView(HealthInfrastructureListener.this.infraSelectionTextView);
                    HealthInfrastructureListener.this.linearLayout.addView(HealthInfrastructureListener.this.infraSelectionSpinner);
                    if (HealthInfrastructureListener.this.processDialog == null || !HealthInfrastructureListener.this.processDialog.isShowing()) {
                        return;
                    }
                    HealthInfrastructureListener.this.processDialog.dismiss();
                    return;
                }
                HealthInfrastructureListener healthInfrastructureListener3 = HealthInfrastructureListener.this;
                healthInfrastructureListener3.noInfraTextView = MyStaticComponents.generateInstructionView(healthInfrastructureListener3.context, LabelConstants.NO_HEALTH_INFRASTRUCTURE_AVAILABLE_ON_SELECTED_LOCATION);
                HealthInfrastructureListener.this.linearLayout.addView(HealthInfrastructureListener.this.noInfraTextView);
                if (HealthInfrastructureListener.this.processDialog == null || !HealthInfrastructureListener.this.processDialog.isShowing()) {
                    return;
                }
                HealthInfrastructureListener.this.processDialog.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04fb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0506 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addSmartReferralDetails(java.lang.Long r25, java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 1301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.addSmartReferralDetails(java.lang.Long, java.lang.String):void");
    }

    private MaterialTextView generateLinkTextView(final String str, final Context context, String str2) {
        MaterialTextView materialTextView = MyStaticComponents.getMaterialTextView(context, str2, -1, R.style.CustomLabelView, false);
        String str3 = str2 + str;
        SpannableString spannableString = new SpannableString(str3);
        spannableString.setSpan(new ClickableSpan() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.3
            /* JADX WARN: Type inference failed for: r1v1, types: [com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$3$1] */
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                new Thread() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.3.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Intent intent = new Intent("android.intent.action.DIAL");
                        intent.setData(Uri.parse("tel:" + str));
                        context.startActivity(intent);
                    }
                }.start();
            }
        }, str2.length(), str3.length(), 33);
        materialTextView.setText(spannableString);
        materialTextView.setMovementMethod(LinkMovementMethod.getInstance());
        return materialTextView;
    }

    private void addSpinnersForLocationHierarchy() {
        this.levelLocationListMap.clear();
        this.levelSpinnerMap.clear();
        this.levelSelectLocationQueMap.clear();
        this.infrastructureBeans.clear();
        List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(1, 2L);
        if (listRetrieveLocationMasterBeansByLevelAndParent == null || listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            this.hierarchyLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "No locations found"));
            return;
        }
        Collections.sort(listRetrieveLocationMasterBeansByLevelAndParent, new Comparator() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$$ExternalSyntheticLambda5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return UtilBean.getMyLabel(((LocationMasterBean) obj).getName()).toLowerCase().compareTo(UtilBean.getMyLabel(((LocationMasterBean) obj2).getName()).toLowerCase());
            }
        });
        Collections.sort(listRetrieveLocationMasterBeansByLevelAndParent, new Comparator() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return this.f$0.m582xa3d23193((LocationMasterBean) obj, (LocationMasterBean) obj2);
            }
        });
        String type = listRetrieveLocationMasterBeansByLevelAndParent.get(0).getType();
        Integer level = listRetrieveLocationMasterBeansByLevelAndParent.get(0).getLevel();
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByLevelAndParent.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.levelLocationListMap.put(level, listRetrieveLocationMasterBeansByLevelAndParent);
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, level.intValue());
        spinner.setOnItemSelectedListener(getOnItemSelectedListenerForHierarchy());
        String locationTypeNameByType = SharedStructureData.locationMasterService.getLocationTypeNameByType(type);
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, "Select " + locationTypeNameByType);
        this.hierarchyLayout.addView(materialTextViewGenerateQuestionView);
        this.hierarchyLayout.addView(spinner);
        this.levelSpinnerMap.put(level, spinner);
        this.levelSelectLocationQueMap.put(level, materialTextViewGenerateQuestionView);
    }

    /* renamed from: lambda$addSpinnersForLocationHierarchy$4$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener, reason: not valid java name */
    /* synthetic */ int m582xa3d23193(LocationMasterBean locationMasterBean, LocationMasterBean locationMasterBean2) {
        return this.collator.compare(UtilBean.getMyLabel(locationMasterBean.getName()), UtilBean.getMyLabel(locationMasterBean2.getName()));
    }

    private AdapterView.OnItemSelectedListener getOnItemSelectedListenerForHierarchy() {
        return new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                Integer numValueOf = Integer.valueOf(adapterView.getId());
                if (i == 0) {
                    HealthInfrastructureListener.this.removeSpinners(numValueOf);
                    LocationMasterBean locationMasterBean = (LocationMasterBean) HealthInfrastructureListener.this.levelSelectedLocationMap.get(numValueOf);
                    if (locationMasterBean != null) {
                        HealthInfrastructureListener.this.selectedLocation = SharedStructureData.locationMasterService.getLocationMasterBeanByActualId(locationMasterBean.getParent());
                        if (HealthInfrastructureListener.this.selectedLocation != null) {
                            numValueOf = HealthInfrastructureListener.this.selectedLocation.getLevel();
                        }
                    }
                    HealthInfrastructureListener.this.levelSelectedLocationMap.remove(numValueOf);
                } else if (Boolean.TRUE.equals(HealthInfrastructureListener.this.checkLocationLevel(numValueOf))) {
                    HealthInfrastructureListener.this.removeSpinners(numValueOf);
                    HealthInfrastructureListener healthInfrastructureListener = HealthInfrastructureListener.this;
                    healthInfrastructureListener.selectedLocation = (LocationMasterBean) ((List) Objects.requireNonNull((List) healthInfrastructureListener.levelLocationListMap.get(numValueOf))).get(i - 1);
                    HealthInfrastructureListener.this.levelSelectedLocationMap.put(HealthInfrastructureListener.this.selectedLocation.getLevel(), HealthInfrastructureListener.this.selectedLocation);
                    HealthInfrastructureListener healthInfrastructureListener2 = HealthInfrastructureListener.this;
                    healthInfrastructureListener2.addSpinners(healthInfrastructureListener2.selectedLocation);
                } else {
                    HealthInfrastructureListener.this.removeSpinners(numValueOf);
                    HealthInfrastructureListener healthInfrastructureListener3 = HealthInfrastructureListener.this;
                    healthInfrastructureListener3.selectedLocation = (LocationMasterBean) ((List) Objects.requireNonNull((List) healthInfrastructureListener3.levelLocationListMap.get(numValueOf))).get(i - 1);
                    HealthInfrastructureListener.this.levelSelectedLocationMap.put(HealthInfrastructureListener.this.selectedLocation.getLevel(), HealthInfrastructureListener.this.selectedLocation);
                }
                HealthInfrastructureListener.this.retrieveInfrastructureByLocationFromDB();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSpinners(LocationMasterBean locationMasterBean) {
        List<LocationMasterBean> listRetrieveLocationMasterBeansByParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByParent(Integer.valueOf(locationMasterBean.getActualID().intValue()));
        if (!listRetrieveLocationMasterBeansByParent.isEmpty()) {
            Collections.sort(listRetrieveLocationMasterBeansByParent, new Comparator() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return UtilBean.getMyLabel(((LocationMasterBean) obj).getName()).toLowerCase().compareTo(UtilBean.getMyLabel(((LocationMasterBean) obj2).getName()).toLowerCase());
                }
            });
            Collections.sort(listRetrieveLocationMasterBeansByParent, new Comparator() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.m581xed3391c8((LocationMasterBean) obj, (LocationMasterBean) obj2);
                }
            });
            removeSpinners(locationMasterBean.getLevel());
            Integer level = listRetrieveLocationMasterBeansByParent.get(0).getLevel();
            this.levelLocationListMap.put(level, listRetrieveLocationMasterBeansByParent);
            String[] strArr = new String[listRetrieveLocationMasterBeansByParent.size() + 1];
            strArr[0] = UtilBean.getMyLabel("-Select-");
            Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByParent.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, level.intValue());
            spinner.setOnItemSelectedListener(getOnItemSelectedListenerForHierarchy());
            String locationTypeNameByType = SharedStructureData.locationMasterService.getLocationTypeNameByType(listRetrieveLocationMasterBeansByParent.get(0).getType());
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, "Select " + locationTypeNameByType);
            this.hierarchyLayout.addView(materialTextViewGenerateQuestionView);
            this.hierarchyLayout.addView(spinner);
            this.levelSpinnerMap.put(level, spinner);
            this.levelSelectLocationQueMap.put(level, materialTextViewGenerateQuestionView);
            return;
        }
        removeSpinners(locationMasterBean.getLevel());
    }

    /* renamed from: lambda$addSpinners$6$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener, reason: not valid java name */
    /* synthetic */ int m581xed3391c8(LocationMasterBean locationMasterBean, LocationMasterBean locationMasterBean2) {
        return this.collator.compare(UtilBean.getMyLabel(locationMasterBean.getName()), UtilBean.getMyLabel(locationMasterBean2.getName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSpinners(Integer num) {
        for (Map.Entry<Integer, List<LocationMasterBean>> entry : this.levelLocationListMap.entrySet()) {
            if (entry.getKey().intValue() > num.intValue()) {
                this.hierarchyLayout.removeView(this.levelSelectLocationQueMap.get(entry.getKey()));
                this.hierarchyLayout.removeView(this.levelSpinnerMap.get(entry.getKey()));
                this.levelSelectedLocationMap.remove(entry.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean checkLocationLevel(Integer num) {
        if (num == null) {
            return false;
        }
        Integer numValueOf = null;
        for (Integer num2 : this.locationLevels) {
            if (numValueOf == null || numValueOf.intValue() < num2.intValue()) {
                numValueOf = Integer.valueOf(num2.intValue() - 1);
            }
        }
        return Boolean.valueOf(!num.equals(numValueOf));
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                HealthInfrastructureListener.this.selectionMap.remove(MorbiditiesConstant.TWO_PLUS);
                HealthInfrastructureListener.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                HealthInfrastructureListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                HealthInfrastructureListener.this.selectionMap.remove("5");
                HealthInfrastructureListener.this.selectionMap.remove("6");
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectDistrictQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.districtSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectBlockQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.blockSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectPhcQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.phcSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectSubCenterQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.subCenterSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectVillageQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.villageSpinner);
                if (i2 == 0) {
                    HealthInfrastructureListener.this.selectedLocationId = null;
                    HealthInfrastructureListener.this.infrastructureBeans.clear();
                } else {
                    LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                    HealthInfrastructureListener.this.selectionMap.put(MorbiditiesConstant.ONE_PLUS, locationMasterBean.getActualID());
                    HealthInfrastructureListener.this.selectedLocationId = locationMasterBean.getActualID();
                    HealthInfrastructureListener.this.addDistrictSpinner(locationMasterBean.getActualID());
                }
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                HealthInfrastructureListener.this.retrieveInfrastructureByLocationFromDB();
            }
        });
        this.hierarchyLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.REGION));
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                HealthInfrastructureListener.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                HealthInfrastructureListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                HealthInfrastructureListener.this.selectionMap.remove("5");
                HealthInfrastructureListener.this.selectionMap.remove("6");
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectBlockQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.blockSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectPhcQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.phcSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectSubCenterQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.subCenterSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectVillageQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.villageSpinner);
                if (i2 != 0) {
                    LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                    HealthInfrastructureListener.this.selectionMap.put(MorbiditiesConstant.TWO_PLUS, locationMasterBean.getActualID());
                    HealthInfrastructureListener.this.selectedLocationId = locationMasterBean.getActualID();
                    HealthInfrastructureListener.this.addBlockSpinner(locationMasterBean.getActualID());
                } else {
                    HealthInfrastructureListener healthInfrastructureListener = HealthInfrastructureListener.this;
                    healthInfrastructureListener.selectedLocationId = (Long) healthInfrastructureListener.selectionMap.get(MorbiditiesConstant.ONE_PLUS);
                }
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                HealthInfrastructureListener.this.retrieveInfrastructureByLocationFromDB();
            }
        });
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.DISTRICT_OR_CORPORATION);
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                HealthInfrastructureListener.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                HealthInfrastructureListener.this.selectionMap.remove("5");
                HealthInfrastructureListener.this.selectionMap.remove("6");
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectPhcQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.phcSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectSubCenterQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.subCenterSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectVillageQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    HealthInfrastructureListener.this.selectionMap.put(MorbiditiesConstant.THREE_PLUS, locationMasterBean2.getActualID());
                    HealthInfrastructureListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    HealthInfrastructureListener.this.addPhcSpinner(locationMasterBean2.getActualID());
                } else {
                    HealthInfrastructureListener healthInfrastructureListener = HealthInfrastructureListener.this;
                    healthInfrastructureListener.selectedLocationId = (Long) healthInfrastructureListener.selectionMap.get(MorbiditiesConstant.TWO_PLUS);
                }
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                HealthInfrastructureListener.this.retrieveInfrastructureByLocationFromDB();
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
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, sb.toString());
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.TALUKA)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.BLOCK);
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.ZONE)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ZONE);
            }
        } else {
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.BLOCK);
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.8
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                HealthInfrastructureListener.this.selectionMap.remove("5");
                HealthInfrastructureListener.this.selectionMap.remove("6");
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectSubCenterQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.subCenterSpinner);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectVillageQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    HealthInfrastructureListener.this.selectionMap.put(MorbiditiesConstant.FOUR_PLUS, locationMasterBean2.getActualID());
                    HealthInfrastructureListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    HealthInfrastructureListener.this.addSubCenterSpinner(locationMasterBean2.getActualID());
                } else {
                    HealthInfrastructureListener healthInfrastructureListener = HealthInfrastructureListener.this;
                    healthInfrastructureListener.selectedLocationId = (Long) healthInfrastructureListener.selectionMap.get(MorbiditiesConstant.THREE_PLUS);
                }
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                HealthInfrastructureListener.this.retrieveInfrastructureByLocationFromDB();
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
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, sb.toString());
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("U")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.UHC);
            }
            if (((String) arrayList.get(0)).equals("P")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.PHC);
            }
        } else {
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.PHC);
        }
        this.hierarchyLayout.addView(this.selectPhcQues);
        this.hierarchyLayout.addView(this.phcSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubCenterSpinner(Long l) {
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
        this.subCenterSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                HealthInfrastructureListener.this.selectionMap.remove("5");
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.selectVillageQues);
                HealthInfrastructureListener.this.hierarchyLayout.removeView(HealthInfrastructureListener.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    HealthInfrastructureListener.this.selectionMap.put("5", locationMasterBean2.getActualID());
                    HealthInfrastructureListener.this.selectedLocationId = locationMasterBean2.getActualID();
                    HealthInfrastructureListener.this.addVillageSpinner(locationMasterBean2.getActualID());
                } else {
                    HealthInfrastructureListener healthInfrastructureListener = HealthInfrastructureListener.this;
                    healthInfrastructureListener.selectedLocationId = (Long) healthInfrastructureListener.selectionMap.get(MorbiditiesConstant.FOUR_PLUS);
                }
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                HealthInfrastructureListener.this.retrieveInfrastructureByLocationFromDB();
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
            this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, sb.toString());
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("ANM")) {
                this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ANM_AREA);
            }
            if (((String) arrayList.get(0)).equals("SC")) {
                this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SUB_CENTER);
            }
        } else {
            this.selectSubCenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SUB_CENTER);
        }
        this.hierarchyLayout.addView(this.selectSubCenterQues);
        this.hierarchyLayout.addView(this.subCenterSpinner);
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                if (i3 == 0) {
                    HealthInfrastructureListener.this.selectionMap.remove("6");
                    HealthInfrastructureListener healthInfrastructureListener = HealthInfrastructureListener.this;
                    healthInfrastructureListener.selectedLocationId = (Long) healthInfrastructureListener.selectionMap.get("5");
                } else {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    HealthInfrastructureListener.this.selectionMap.put("6", locationMasterBean2.getActualID());
                    HealthInfrastructureListener.this.selectedLocationId = locationMasterBean2.getActualID();
                }
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionTextView);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.infraSelectionSpinner);
                HealthInfrastructureListener.this.linearLayout.removeView(HealthInfrastructureListener.this.noInfraTextView);
                HealthInfrastructureListener.this.retrieveInfrastructureByLocationFromDB();
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
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, sb.toString());
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LabelConstants.UA)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.URBAN_AREA);
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.VILLAGE)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Village");
            }
            if (((String) arrayList.get(0)).equals("ANG")) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ANGANWADI_AREA);
            }
        } else {
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, "Village");
        }
        this.hierarchyLayout.addView(this.selectVillageQues);
        this.hierarchyLayout.addView(this.villageSpinner);
    }
}
