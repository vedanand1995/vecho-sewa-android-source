package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class FHSAwwActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final long DELAY = 500;
    private static final String FAMILY_DETAILS_SCREEN = "familyDetailsScreen";
    private static final String FAMILY_OPTION_SCREEN = "familyOptionScreen";
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private Spinner areaSpinner;
    private LinearLayout bodyLayoutContainer;
    private MaterialTextView familyTextView;
    SewaFhsServiceImpl fhsService;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private Map<String, MemberDataBean> headMembersMapWithFamilyIdAsKey;
    LocationMasterServiceImpl locationMasterService;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private long offset;
    private PagingListView paginatedListView;
    private String screen;
    private TextInputLayout searchFamilyEditText;
    private String searchString;
    private Integer selectedAshaArea;
    private FamilyDataBean selectedFamily;
    private MemberDataBean selectedMember;
    SewaServiceImpl sewaService;
    TechoAshaServiceImpl techoAshaService;
    private Timer timer = new Timer();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<FamilyDataBean> familyDataBeans = new ArrayList();
    private long limit = 30;
    private int selectedFamilyIndex = -1;
    private int selectedMemberIndex = -1;

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
        setTitle(UtilBean.getTitleText(LabelConstants.FAMILY_HEALTH_SURVEY_TITLE));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FHSAwwActivity.onClick(android.view.View):void");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_FAMILY_HEALTH_SURVEY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FHSAwwActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FHSAwwActivity.this.myAlertDialog.dismiss();
                    FHSAwwActivity.this.navigateToHomeScreen(false);
                    FHSAwwActivity.this.finish();
                    return;
                }
                FHSAwwActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        retrieveLocationsAssignedToUser();
    }

    public void retrieveLocationsAssignedToUser() {
        this.ashaAreaList = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        setBodyDetail();
    }

    public void setBodyDetail() {
        if (this.ashaAreaList.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            LinearLayout linearLayout = this.bodyLayoutContainer;
            linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
            addSearchTextBox();
            retrieveFamilyListFromDB(null);
            return;
        }
        if (this.ashaAreaList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    public void addAshaAreaSelectionSpinner() {
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        setSubTitle(null);
        this.bodyLayoutContainer.removeAllViews();
        if (this.areaSpinner == null) {
            String[] strArr = new String[this.ashaAreaList.size()];
            Iterator<LocationBean> it = this.ashaAreaList.iterator();
            int i = 0;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            this.areaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        this.bodyLayoutContainer.addView(this.areaSpinner);
        hideProcessDialog();
    }

    public void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 1);
        this.searchFamilyEditText = editText;
        if (editText.getEditText() != null) {
            this.searchFamilyEditText.getEditText().addTextChangedListener(new AnonymousClass2());
        }
        this.bodyLayoutContainer.addView(this.searchFamilyEditText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.FHSAwwActivity$2, reason: invalid class name */
    class AnonymousClass2 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass2() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            FHSAwwActivity.this.timer.cancel();
            FHSAwwActivity.this.timer = new Timer();
            FHSAwwActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.FHSAwwActivity.2.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        FHSAwwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FHSAwwActivity.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FHSAwwActivity.this.retrieveFamilyListFromDB(charSequence.toString().trim());
                                FHSAwwActivity.this.searchFamilyEditText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.toString().trim().length() == 0) {
                        FHSAwwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FHSAwwActivity.2.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                FHSAwwActivity.this.showProcessDialog();
                                FHSAwwActivity.this.retrieveFamilyListFromDB(null);
                            }
                        });
                    }
                }
            }, FHSAwwActivity.DELAY);
        }
    }

    public void retrieveFamilyListFromDB(String str) {
        this.offset = 0L;
        this.selectedFamilyIndex = -1;
        this.searchString = str;
        if (str == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForFHSByArea(Long.valueOf(this.selectedAshaArea.longValue()), this.limit, this.offset);
            this.offset += this.limit;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForFHSByArea(Long.valueOf(this.selectedAshaArea.longValue()), str);
        }
        setFamilySelectionScreen(Boolean.valueOf(str != null));
    }

    public void setFamilySelectionScreen(Boolean bool) {
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.familyTextView);
        this.screen = FAMILY_SELECTION_SCREEN;
        if (!this.familyDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FAMILY);
            this.familyTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getFamilyList(this.familyDataBeans), R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FHSAwwActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    FHSAwwActivity.this.selectedFamilyIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.familyTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
        String myLabel;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFamilyId());
        }
        this.headMembersMapWithFamilyIdAsKey = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
        for (FamilyDataBean familyDataBean : list) {
            MemberDataBean memberDataBean = this.headMembersMapWithFamilyIdAsKey.get(familyDataBean.getFamilyId());
            if (memberDataBean != null) {
                familyDataBean.setHeadMemberName(memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName());
                familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(LabelConstants.NULL, ""));
                myLabel = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            arrayList2.add(new ListItemDataBean((String) null, familyDataBean.getFamilyId(), (String) null, (String) null, myLabel));
        }
        return arrayList2;
    }

    public void addFamilyOptionSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = FAMILY_OPTION_SCREEN;
        setSubTitle(LabelConstants.FAMILY_DETAILS);
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(this.selectedFamily.getFamilyId());
        this.selectedFamily = familyDataBeanRetrieveFamilyDataBeanByFamilyId;
        familyDataBeanRetrieveFamilyDataBeanByFamilyId.setMembers(this.fhsService.retrieveMemberDataBeansByFamily(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getFamilyId()));
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FAMILY_ID));
        detailsLayout.addView(MyStaticComponents.generateBoldAnswerView(this, this.selectedFamily.getFamilyId()));
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MEMBERS_INFO));
        detailsLayout.addView(UtilBean.getMembersListForDisplay(this, this.selectedFamily));
        this.bodyLayoutContainer.addView(detailsLayout);
    }

    public void addSelectedFamilyDetails() {
        LocationBean locationBeanByActualId;
        this.screen = FAMILY_DETAILS_SCREEN;
        setSubTitle(LabelConstants.FAMILY_DETAILS);
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FAMILY_DETAILS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FAMILY_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedFamily.getFamilyId()));
        MemberDataBean memberDataBean = this.headMembersMapWithFamilyIdAsKey.get(this.selectedFamily.getFamilyId());
        if (memberDataBean != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.HEAD_OF_THE_FAMILY));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberDataBean)));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ADDRESS_LINE_1));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.selectedFamily.getAddress1())));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ADDRESS_LINE_2));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.selectedFamily.getAddress2())));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ASHA_AREA));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.locationMasterService.retrieveLocationHierarchyByLocationId(Long.valueOf(this.selectedAshaArea.longValue())))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ANGANWADI_NAME));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull((this.selectedFamily.getAnganwadiId() == null || this.selectedFamily.getAnganwadiId().isEmpty() || (locationBeanByActualId = this.locationMasterService.getLocationBeanByActualId(this.selectedFamily.getAnganwadiId())) == null) ? null : locationBeanByActualId.getName())));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.REGION));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedFamily.getReligion()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CASTE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedFamily.getCaste()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SEASONAL_MIGRANT));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedFamily.getSeasonalMigrantFlag()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.VULNERABLE_FAMILY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedFamily.getVulnerableFlag()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.BPL_FAMILY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedFamily.getBplFlag()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.TOILET_AVAILABLE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(UtilBean.returnYesNoNotAvailableFromBoolean(this.selectedFamily.getToiletAvailableFlag()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MAA_CARD_NUMBER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.selectedFamily.getMaaVatsalyaNumber())));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.RSBY_CARD_NUMBER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.selectedFamily.getRsbyCardNumber())));
    }

    public void addMemberSelectionScreen() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_MEMBER_OF_THE_FAMILY));
        for (MemberDataBean memberDataBean : this.selectedFamily.getMembers()) {
            arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean)));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FHSAwwActivity.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                FHSAwwActivity.this.selectedMemberIndex = i;
            }
        }, null));
    }

    private void addMemberDetailsScreen() {
        String str;
        this.screen = MEMBER_DETAILS_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.MEMBER_DETAILS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_NAME));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(this.selectedMember)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.HEALTH_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedMember.getUniqueHealthId()));
        if (this.selectedMember.getGender() != null && this.selectedMember.getGender().equalsIgnoreCase("F")) {
            str = LabelConstants.FEMALE;
        } else {
            str = (this.selectedMember.getGender() == null || !this.selectedMember.getGender().equalsIgnoreCase("M")) ? "Not available" : LabelConstants.MALE;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.GENDER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, str));
        String ageDisplayOnGivenDate = this.selectedMember.getDob() != null ? UtilBean.getAgeDisplayOnGivenDate(new Date(this.selectedMember.getDob().longValue()), new Date()) : "Not available";
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.AGE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, ageDisplayOnGivenDate));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MARITAL_STATUS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedMember.getMaritalStatus()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MOBILE_NUMBER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.selectedMember.getMobileNumber())));
        boolean z = (this.selectedMember.getAccountNumber() == null || this.selectedMember.getAccountNumber().isEmpty() || this.selectedMember.getIfsc() == null || this.selectedMember.getIfsc().isEmpty()) ? false : true;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.BANK_DETAILS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.returnYesNoNotAvailableFromBoolean(Boolean.valueOf(z))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.EDUCATION_STATUS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedMember.getEducationStatus()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CONGENITAL_ANOMALIES_PRESENT));
        if (this.selectedMember.getCongenitalAnomalyIds() != null && !this.selectedMember.getCongenitalAnomalyIds().isEmpty()) {
            if (this.selectedMember.getCongenitalAnomalyIds().contains(GlobalTypes.COMMA)) {
                for (String str2 : this.selectedMember.getCongenitalAnomalyIds().split(GlobalTypes.COMMA)) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(str2))));
                }
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedMember.getCongenitalAnomalyIds()))));
            }
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, "Not available"));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CHRONIC_DISEASES_PRESENT));
        if (this.selectedMember.getChronicDiseaseIds() != null && !this.selectedMember.getChronicDiseaseIds().isEmpty()) {
            if (this.selectedMember.getChronicDiseaseIds().contains(GlobalTypes.COMMA)) {
                for (String str3 : this.selectedMember.getChronicDiseaseIds().split(GlobalTypes.COMMA)) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(str3))));
                }
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedMember.getChronicDiseaseIds()))));
            }
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, "Not available"));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.CURRENT_DISEASES_PRESENT)));
        if (this.selectedMember.getCurrentDiseaseIds() != null && !this.selectedMember.getCurrentDiseaseIds().isEmpty()) {
            if (this.selectedMember.getCurrentDiseaseIds().contains(GlobalTypes.COMMA)) {
                for (String str4 : this.selectedMember.getCurrentDiseaseIds().split(GlobalTypes.COMMA)) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(str4))));
                }
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedMember.getCurrentDiseaseIds()))));
            }
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, "Not available"));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.EYE_DISEASES_PRESENT)));
        if (this.selectedMember.getEyeIssueIds() != null && !this.selectedMember.getEyeIssueIds().isEmpty()) {
            if (this.selectedMember.getEyeIssueIds().contains(GlobalTypes.COMMA)) {
                for (String str5 : this.selectedMember.getEyeIssueIds().split(GlobalTypes.COMMA)) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(str5))));
                }
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(this.fhsService.getValueOfListValuesById(this.selectedMember.getEyeIssueIds()))));
            }
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, "Not available"));
        }
        this.nextButton.setText(GlobalTypes.MAIN_MENU);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r8) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FHSAwwActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        if (this.searchString == null) {
            onLoadMoreBackground();
        }
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForFHSByArea = this.fhsService.retrieveFamilyDataBeansForFHSByArea(Long.valueOf(this.selectedAshaArea.longValue()), this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveFamilyDataBeansForFHSByArea);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, getFamilyList(list));
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
