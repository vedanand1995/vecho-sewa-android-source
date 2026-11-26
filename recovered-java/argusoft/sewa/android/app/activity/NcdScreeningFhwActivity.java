package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.NcdServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NcdScreeningFhwActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String CBAC_QUESTION_SCREEN = "cbacQuestionScreen";
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final long LIMIT = 30;
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private List<LocationBean> ashaAreaList;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    private List<FamilyDataBean> familyDataBeans;
    private List<String> familyIds;
    public SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    public FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private List<MemberDataBean> memberDataBeans;
    private MyAlertDialog myAlertDialog;
    public NcdServiceImpl ncdService;
    private Button nextButton;
    private MaterialTextView noFamilyTextView;
    private long offset;
    private PagingListView paginatedListView;
    private RadioGroup radioGroup;
    private String screen;
    private List<String> screeningForms;
    private String searchString;
    private List<Integer> selectedAshaAreas;
    private FamilyDataBean selectedFamily;
    private MemberDataBean selectedMember;
    private boolean selectedMemberCbacDone;
    private List<String> selectedMemberCompletedScreenings;
    public SewaServiceImpl sewaService;
    private MaterialTextView textView;
    private List<LocationBean> villageList;
    private static final Integer ACTIVITY_CODE_FOR_CBAC_DETAILS_ACTIVITY = 300;
    private static final Integer ACTIVITY_CODE_FOR_CBAC_FORM_ACTIVITY = 400;
    private static final Integer RADIO_BUTTON_ID_YES = 501;
    private static final Integer RADIO_BUTTON_ID_NO = 502;
    private Timer timer = new Timer();
    private int selectedFamilyIndex = -1;
    private int selectedMemberIndex = -1;
    private int selectedServiceIndex = -1;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText("NCD Screening"));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.villageList = distinctLocationsAssignedToUser;
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (distinctLocationsAssignedToUser == null || distinctLocationsAssignedToUser.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageSelectionSpinner();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.onClick(android.view.View):void");
    }

    private void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 1);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass1(editText));
        }
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity$1, reason: invalid class name */
    class AnonymousClass1 implements TextWatcher {
        final /* synthetic */ TextInputLayout val$editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass1(TextInputLayout textInputLayout) {
            this.val$editText = textInputLayout;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            NcdScreeningFhwActivity.this.timer.cancel();
            NcdScreeningFhwActivity.this.timer = new Timer();
            NcdScreeningFhwActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.1.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        NcdScreeningFhwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NcdScreeningFhwActivity.this.retrieveFamilyListFromDB(charSequence.toString());
                                AnonymousClass1.this.val$editText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        NcdScreeningFhwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.1.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NcdScreeningFhwActivity.this.showProcessDialog();
                                NcdScreeningFhwActivity.this.retrieveFamilyListFromDB(null);
                            }
                        });
                    }
                }
            }, NcdScreeningFhwActivity.DELAY);
        }
    }

    public void retrieveFamilyListFromDB(String str) {
        this.searchString = str;
        this.offset = 0L;
        this.selectedFamilyIndex = -1;
        this.familyDataBeans = this.ncdService.retrieveFamiliesForNcdScreening(str, this.selectedAshaAreas, LIMIT, 0L);
        this.offset += LIMIT;
        setFamilySelectionScreen(str != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.screen = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.textView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.noFamilyTextView);
        this.familyIds = new ArrayList();
        if (!this.familyDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
            this.textView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            List<ListItemDataBean> familyList = getFamilyList(this.familyDataBeans);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    NcdScreeningFhwActivity.this.selectedFamilyIndex = i;
                }
            };
            if (z) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, null);
            } else {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.paginatedListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_FAMILIES_FOUND));
            this.noFamilyTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        if (!z) {
            showProcessDialog();
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
        String myLabel;
        ArrayList arrayList = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            this.familyIds.add(it.next().getFamilyId());
        }
        Map<String, MemberDataBean> mapRetrieveHeadMemberDataBeansByFamilyId = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(this.familyIds);
        for (FamilyDataBean familyDataBean : list) {
            MemberDataBean memberDataBean = mapRetrieveHeadMemberDataBeansByFamilyId.get(familyDataBean.getFamilyId());
            if (memberDataBean != null) {
                familyDataBean.setHeadMemberName(memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName());
                familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(LabelConstants.NULL, ""));
                myLabel = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            String str = myLabel;
            if (familyDataBean.getLastMemberNcdScreeningDate() != null && new Date(familyDataBean.getLastMemberNcdScreeningDate().longValue()).after(UtilBean.getStartOfFinancialYear(null))) {
                arrayList.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, true));
            } else {
                arrayList.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, false));
            }
        }
        return arrayList;
    }

    public void retrieveMemberListFromDB(String str) {
        if (str != null) {
            this.selectedMemberIndex = -1;
            this.memberDataBeans = this.ncdService.retrieveMembersListForNcdScreening(str);
            setMemberSelectionScreen();
        }
    }

    public void setMemberSelectionScreen() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        if (!this.memberDataBeans.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_A_MEMBER_FROM_LIST));
            for (MemberDataBean memberDataBean : this.memberDataBeans) {
                StringBuilder sb = new StringBuilder(UtilBean.getMemberFullName(memberDataBean));
                if (isMemberAllScreeningDone(memberDataBean)) {
                    sb.append(" ✔️️");
                    arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), sb.toString(), true));
                } else {
                    arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), sb.toString()));
                }
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    NcdScreeningFhwActivity.this.selectedMemberIndex = i;
                }
            }, null));
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_HAVING_AGE_MORE_THAN_30_YEARS_IN_FAMILY));
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    private boolean isMemberAllScreeningDone(MemberDataBean memberDataBean) {
        String financialYearFromDate = UtilBean.getFinancialYearFromDate(new Date());
        if (memberDataBean.getGender() == null || memberDataBean.getAdditionalInfo() == null) {
            return false;
        }
        return (memberDataBean.getGender().equals("M") || memberDataBean.getGender().equals("T")) ? memberDataBean.getHypYear() != null && memberDataBean.getHypYear().contains(financialYearFromDate) && memberDataBean.getDiabetesYear() != null && memberDataBean.getDiabetesYear().contains(financialYearFromDate) && memberDataBean.getOralYear() != null && memberDataBean.getOralYear().contains(financialYearFromDate) : memberDataBean.getGender().equals("F") && memberDataBean.getHypYear() != null && memberDataBean.getHypYear().contains(financialYearFromDate) && memberDataBean.getDiabetesYear() != null && memberDataBean.getDiabetesYear().contains(financialYearFromDate) && memberDataBean.getOralYear() != null && memberDataBean.getOralYear().contains(financialYearFromDate) && memberDataBean.getBreastYear() != null && memberDataBean.getBreastYear().contains(financialYearFromDate) && memberDataBean.getCervicalYear() != null && memberDataBean.getCervicalYear().contains(financialYearFromDate);
    }

    private void setCbacQuestionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = CBAC_QUESTION_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        if (this.selectedMember.getCbacDate() != null && new Date(this.selectedMember.getCbacDate().longValue()).after(UtilBean.getStartOfFinancialYear(null))) {
            this.selectedMemberCbacDone = true;
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.CBAC_FORM_IS_ALREADY_FILLED));
        } else {
            this.selectedMemberCbacDone = false;
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.WANT_TO_FILL_CBAC_FORM));
        }
        HashMap map = new HashMap();
        map.put(RADIO_BUTTON_ID_YES, "Yes");
        map.put(RADIO_BUTTON_ID_NO, "No");
        RadioGroup radioGroup = MyStaticComponents.getRadioGroup(this, map, true);
        this.radioGroup = radioGroup;
        this.bodyLayoutContainer.addView(radioGroup);
        hideProcessDialog();
    }

    private void setServiceSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = SERVICE_SELECTION_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_SERVICE_TYPE));
        this.selectedServiceIndex = -1;
        this.screeningForms = new ArrayList();
        this.selectedMemberCompletedScreenings = new ArrayList();
        String financialYearFromDate = UtilBean.getFinancialYearFromDate(new Date());
        ArrayList arrayList = new ArrayList();
        String myLabel = UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.NCD_FHW_HYPERTENSION));
        this.screeningForms.add(FormConstants.NCD_FHW_HYPERTENSION);
        if (this.selectedMember.getHypYear() != null && this.selectedMember.getHypYear().contains(financialYearFromDate)) {
            myLabel = myLabel + " ✔️️";
            this.selectedMemberCompletedScreenings.add(FormConstants.NCD_FHW_HYPERTENSION);
        }
        arrayList.add(new ListItemDataBean(myLabel));
        String myLabel2 = UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.NCD_FHW_DIABETES));
        this.screeningForms.add(FormConstants.NCD_FHW_DIABETES);
        if (this.selectedMember.getDiabetesYear() != null && this.selectedMember.getDiabetesYear().contains(financialYearFromDate)) {
            myLabel2 = myLabel2 + " ✔️️";
            this.selectedMemberCompletedScreenings.add(FormConstants.NCD_FHW_DIABETES);
        }
        arrayList.add(new ListItemDataBean(myLabel2));
        String myLabel3 = UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.NCD_FHW_ORAL));
        this.screeningForms.add(FormConstants.NCD_FHW_ORAL);
        if (this.selectedMember.getOralYear() != null && this.selectedMember.getOralYear().contains(financialYearFromDate)) {
            myLabel3 = myLabel3 + " ✔️️";
            this.selectedMemberCompletedScreenings.add(FormConstants.NCD_FHW_ORAL);
        }
        arrayList.add(new ListItemDataBean(myLabel3));
        if (this.selectedMember.getGender() != null && this.selectedMember.getGender().equals("F")) {
            String myLabel4 = UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.NCD_FHW_BREAST));
            this.screeningForms.add(FormConstants.NCD_FHW_BREAST);
            if (this.selectedMember.getBreastYear() != null && this.selectedMember.getBreastYear().contains(financialYearFromDate)) {
                myLabel4 = myLabel4 + " ✔️️";
                this.selectedMemberCompletedScreenings.add(FormConstants.NCD_FHW_BREAST);
            }
            arrayList.add(new ListItemDataBean(myLabel4));
            String myLabel5 = UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.NCD_FHW_CERVICAL));
            this.screeningForms.add(FormConstants.NCD_FHW_CERVICAL);
            if (this.selectedMember.getCervicalYear() != null && this.selectedMember.getCervicalYear().contains(financialYearFromDate)) {
                myLabel5 = myLabel5 + " ✔️️";
                this.selectedMemberCompletedScreenings.add(FormConstants.NCD_FHW_CERVICAL);
            }
            arrayList.add(new ListItemDataBean(myLabel5));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                NcdScreeningFhwActivity.this.selectedServiceIndex = i;
                NcdScreeningFhwActivity ncdScreeningFhwActivity = NcdScreeningFhwActivity.this;
                ncdScreeningFhwActivity.onClick(ncdScreeningFhwActivity.nextButton);
            }
        }, null));
        this.footerLayout.setVisibility(8);
    }

    private void setMetadataForFormByFormType(MemberDataBean memberDataBean) {
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = memberDataBean != null ? this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId()) : null;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (memberDataBean != null) {
            this.formMetaDataUtil.setMetaDataForNCDForms(memberDataBean, familyDataBeanRetrieveFamilyDataBeanByFamilyId, defaultSharedPreferences);
        }
    }

    public void addVillageSelectionSpinner() {
        setSubTitle(null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_VILLAGE));
        String[] strArr = new String[this.villageList.size()];
        Iterator<LocationBean> it = this.villageList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                NcdScreeningFhwActivity.this.bodyLayoutContainer.removeView(NcdScreeningFhwActivity.this.ashaAreaSpinner);
                NcdScreeningFhwActivity ncdScreeningFhwActivity = NcdScreeningFhwActivity.this;
                ncdScreeningFhwActivity.ashaAreaList = ncdScreeningFhwActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) NcdScreeningFhwActivity.this.villageList.get(i2)).getActualID());
                NcdScreeningFhwActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(spinner);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_ASHA_AREA)));
        addAshaAreaSelectionSpinner();
    }

    public void addAshaAreaSelectionSpinner() {
        String[] strArr = new String[this.ashaAreaList.size() + 1];
        strArr[0] = LabelConstants.ALL;
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        this.ashaAreaSpinner = spinner;
        this.bodyLayoutContainer.addView(spinner);
        hideProcessDialog();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_NCD_SCREENING_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    NcdScreeningFhwActivity.this.myAlertDialog.dismiss();
                    NcdScreeningFhwActivity.this.navigateToHomeScreen(false);
                    NcdScreeningFhwActivity.this.finish();
                    return;
                }
                NcdScreeningFhwActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == ACTIVITY_CODE_FOR_CBAC_FORM_ACTIVITY.intValue()) {
            showProcessDialog();
            retrieveMemberListFromDB(this.selectedFamily.getFamilyId());
            hideProcessDialog();
            return;
        }
        if (i == ACTIVITY_CODE_FOR_CBAC_DETAILS_ACTIVITY.intValue()) {
            if (i2 == 0) {
                showProcessDialog();
                setCbacQuestionScreen();
                hideProcessDialog();
                return;
            } else if (i2 == -1) {
                showProcessDialog();
                setServiceSelectionScreen();
                hideProcessDialog();
                return;
            }
        }
        MemberDataBean memberDataBean = new MemberDataBean(this.fhsService.retrieveMemberBeanByActualId(Long.valueOf(this.selectedMember.getId())));
        this.selectedMember = memberDataBean;
        if (isMemberAllScreeningDone(memberDataBean)) {
            showProcessDialog();
            retrieveMemberListFromDB(this.selectedFamily.getFamilyId());
            this.selectedMemberIndex = -1;
            this.footerLayout.setVisibility(0);
        } else {
            showProcessDialog();
            setServiceSelectionScreen();
        }
        hideProcessDialog();
    }

    private void showNotOnlineMessage() {
        if (this.sewaService.isOnline()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.7
            @Override // java.lang.Runnable
            public void run() {
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.7.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        NcdScreeningFhwActivity.this.alertDialog.dismiss();
                    }
                };
                NcdScreeningFhwActivity.this.alertDialog = new MyAlertDialog(NcdScreeningFhwActivity.this.context, false, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), onClickListener, DynamicUtils.BUTTON_OK);
                NcdScreeningFhwActivity.this.alertDialog.show();
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NcdScreeningFhwActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveFamiliesForNcdScreening = this.ncdService.retrieveFamiliesForNcdScreening(this.searchString, this.selectedAshaAreas, LIMIT, this.offset);
        this.offset += LIMIT;
        onLoadMoreUi(listRetrieveFamiliesForNcdScreening);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (!list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
