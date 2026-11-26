package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MenuItem;
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
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.PointInPolygon;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class PhoneNumberVerificationActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String PHONE_UPDATE_SCREEN = "phoneUpdateScreen";
    private static final int RADIO_BUTTON_SUBMIT = 501;
    private static final int RADIO_BUTTON_VERIFY = 502;
    private static final String VERIFY_SCREEN = "verifyScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    private String currentLatitude;
    private String currentLongitude;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    LocationMasterServiceImpl locationService;
    private MaterialTextView memberTextView;
    private Date mobileStartDate;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private long offset;
    private PagingListView paginatedListView;
    private TextInputLayout phoneNumberEditText;
    private String screen;
    private String searchString;
    private MemberDataBean selectedMember;
    private Integer selectedSubCenter;
    private Integer selectedVillage;
    SewaServiceImpl sewaService;
    private MaterialTextView subCenterQue;
    private Spinner subCenterSpinner;
    private RadioGroup verifyRadioGroup;
    private MaterialTextView villageQue;
    private Spinner villageSpinner;
    private Timer timer = new Timer();
    private List<LocationBean> subCenterList = new ArrayList();
    private List<LocationBean> villageList = new ArrayList();
    private List<MemberDataBean> memberDataBeans = new ArrayList();
    private long limit = 30;
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
        setGps();
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        super.setAlertRequired(true);
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
        setTitle(UtilBean.getTitleText(LabelConstants.PHONE_NUMBER_VERIFICATION_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> listRetrieveSubCenterListForFHSR = this.locationService.retrieveSubCenterListForFHSR();
        this.subCenterList = listRetrieveSubCenterListForFHSR;
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (listRetrieveSubCenterListForFHSR.size() == 1) {
            this.selectedSubCenter = this.subCenterList.get(0).getActualID();
            this.villageList = this.locationService.retrieveLocationBeansByLevelAndParent(6, Long.valueOf(this.subCenterList.get(0).getActualID().longValue()));
            addVillageSelectionSpinner();
        } else if (!this.subCenterList.isEmpty()) {
            this.villageList = this.locationService.retrieveLocationBeansByLevelAndParent(6, Long.valueOf(this.subCenterList.get(0).getActualID().longValue()));
            addSubCenterSelectionSpinner();
        } else {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_PHONE_NUMBER_VERIFICATION_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    PhoneNumberVerificationActivity.this.myAlertDialog.dismiss();
                    PhoneNumberVerificationActivity.this.navigateToHomeScreen(false);
                    PhoneNumberVerificationActivity.this.finish();
                    return;
                }
                PhoneNumberVerificationActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private void showAlertAndExit(final String str) {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.2
            @Override // java.lang.Runnable
            public void run() {
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.2.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        PhoneNumberVerificationActivity.this.myAlertDialog.dismiss();
                        PhoneNumberVerificationActivity.this.navigateToHomeScreen(false);
                    }
                };
                PhoneNumberVerificationActivity.this.myAlertDialog = new MyAlertDialog(PhoneNumberVerificationActivity.this.context, false, str, onClickListener, DynamicUtils.BUTTON_OK);
                PhoneNumberVerificationActivity.this.myAlertDialog.show();
            }
        });
    }

    private void setGps() {
        if (!SharedStructureData.gps.isLocationProviderEnabled()) {
            SharedStructureData.gps.showSettingsAlert(this);
            return;
        }
        SharedStructureData.gps.getLocation();
        this.currentLatitude = String.valueOf(GPSTracker.latitude);
        this.currentLongitude = String.valueOf(GPSTracker.longitude);
        if (PointInPolygon.coordinateInsidePolygon()) {
            return;
        }
        UtilBean.showAlertAndExit(GlobalTypes.MSG_GEO_FENCING_VIOLATION, this.context);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 111) {
            this.selectedMemberIndex = -1;
            setGps();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r6) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.onClick(android.view.View):void");
    }

    public void addSubCenterSelectionSpinner() {
        setSubTitle(null);
        if (this.subCenterQue == null) {
            this.subCenterQue = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_SUB_CENTER_OR_ANM_AREA);
        }
        if (this.subCenterSpinner == null) {
            String[] strArr = new String[this.subCenterList.size()];
            Iterator<LocationBean> it = this.subCenterList.iterator();
            int i = 0;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
            this.subCenterSpinner = spinner;
            spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                    PhoneNumberVerificationActivity.this.bodyLayoutContainer.removeView(PhoneNumberVerificationActivity.this.villageSpinner);
                    PhoneNumberVerificationActivity phoneNumberVerificationActivity = PhoneNumberVerificationActivity.this;
                    phoneNumberVerificationActivity.selectedSubCenter = ((LocationBean) phoneNumberVerificationActivity.subCenterList.get(i2)).getActualID();
                    PhoneNumberVerificationActivity phoneNumberVerificationActivity2 = PhoneNumberVerificationActivity.this;
                    phoneNumberVerificationActivity2.villageList = phoneNumberVerificationActivity2.locationService.retrieveLocationBeansByLevelAndParent(6, Long.valueOf(PhoneNumberVerificationActivity.this.selectedSubCenter.longValue()));
                    PhoneNumberVerificationActivity.this.addVillageSelectionSpinner();
                }
            });
        }
        this.bodyLayoutContainer.addView(this.subCenterQue);
        this.bodyLayoutContainer.addView(this.subCenterSpinner);
        addVillageSelectionSpinner();
    }

    public void addVillageSelectionSpinner() {
        setSubTitle(null);
        this.bodyLayoutContainer.removeView(this.villageQue);
        this.bodyLayoutContainer.removeView(this.villageSpinner);
        String[] strArr = new String[this.villageList.size()];
        Iterator<LocationBean> it = this.villageList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        if (this.villageQue == null) {
            this.villageQue = MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE));
        }
        this.villageSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        this.bodyLayoutContainer.addView(this.villageQue);
        this.bodyLayoutContainer.addView(this.villageSpinner);
        hideProcessDialog();
    }

    private void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 1);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass4(editText));
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity$4, reason: invalid class name */
    class AnonymousClass4 implements TextWatcher {
        final /* synthetic */ TextInputLayout val$editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass4(TextInputLayout textInputLayout) {
            this.val$editText = textInputLayout;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            PhoneNumberVerificationActivity.this.timer.cancel();
            PhoneNumberVerificationActivity.this.timer = new Timer();
            PhoneNumberVerificationActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.4.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        PhoneNumberVerificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                PhoneNumberVerificationActivity.this.retrieveMemberListFromDB(charSequence.toString());
                                AnonymousClass4.this.val$editText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        PhoneNumberVerificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.4.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                PhoneNumberVerificationActivity.this.showProcessDialog();
                                PhoneNumberVerificationActivity.this.retrieveMemberListFromDB(null);
                            }
                        });
                    }
                }
            }, PhoneNumberVerificationActivity.DELAY);
        }
    }

    public void retrieveMemberListFromDB(String str) {
        this.searchString = str;
        this.offset = 0L;
        this.selectedMemberIndex = -1;
        this.memberDataBeans = this.fhsService.retrieveMembersForPhoneVerificationByFhsr(Long.valueOf(this.selectedVillage.longValue()), str, this.limit, this.offset);
        this.offset += this.limit;
        setMemberSelectionScreen(str != null);
    }

    public void setMemberSelectionScreen(boolean z) {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.memberTextView);
        ArrayList arrayList = new ArrayList();
        List<MemberDataBean> list = this.memberDataBeans;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FAMILY);
            this.memberTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            for (MemberDataBean memberDataBean : this.memberDataBeans) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
            }
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    PhoneNumberVerificationActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND_IN_VILLAGE);
            this.memberTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    private void setMemberDetailsScreen() {
        Map<String, String> mapRetrieveAshaInfoByAreaId;
        String valueOfListValuesById;
        String valueOfListValuesById2;
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        this.screen = MEMBER_DETAILS_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(this.selectedMember.getFamilyId());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_DETAILS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Name")));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(this.selectedMember)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_ID)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedMember.getUniqueHealthId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedMember.getFamilyId()));
        if (this.selectedMember.getDob() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, simpleDateFormat.format(new Date(this.selectedMember.getDob().longValue()))));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.AGE)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getAgeDisplayOnGivenDate(new Date(this.selectedMember.getDob().longValue()), new Date())));
            if (this.selectedMember.getYearOfWedding() != null) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(this.selectedMember.getDob().longValue());
                int i = calendar.get(1);
                Integer numValueOf = Integer.valueOf(i);
                int iIntValue = this.selectedMember.getYearOfWedding().intValue();
                numValueOf.getClass();
                int i2 = iIntValue - i;
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.AGE_AT_WEDDING)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, i2 + " years"));
            }
        }
        if (familyDataBeanRetrieveFamilyDataBeanByFamilyId != null) {
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAddress1() != null || familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAddress2() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ADDRESS)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId)));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion() != null && (valueOfListValuesById2 = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())) != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.RELIGION)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, valueOfListValuesById2));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste() != null && (valueOfListValuesById = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste())) != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.CASTE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, valueOfListValuesById));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BPL)));
                if (Boolean.TRUE.equals(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag())) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel(LabelConstants.FAMILY_IS_BPL)));
                } else {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel(LabelConstants.FAMILY_IS_NOT_BPL)));
                }
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId() != null && (mapRetrieveAshaInfoByAreaId = this.fhsService.retrieveAshaInfoByAreaId(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId())) != null) {
                String str = mapRetrieveAshaInfoByAreaId.get("name");
                String str2 = mapRetrieveAshaInfoByAreaId.get("mobileNumber");
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ASHA_NAME_AND_PHONE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, str + " (" + str2 + ")"));
            }
        }
        String childrenCount = this.fhsService.getChildrenCount(Long.valueOf(this.selectedMember.getId()), true, false, false);
        if (childrenCount != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Number of living children")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, childrenCount));
        }
        String childrenCount2 = this.fhsService.getChildrenCount(Long.valueOf(this.selectedMember.getId()), false, true, false);
        if (childrenCount2 != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.NUMBER_OF_BOYS)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, childrenCount2));
        }
        String childrenCount3 = this.fhsService.getChildrenCount(Long.valueOf(this.selectedMember.getId()), false, false, true);
        if (childrenCount3 != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Number of living children")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, childrenCount3));
        }
        if (this.selectedMember.getLmpDate() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.LMP_DATE)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, simpleDateFormat.format(new Date(this.selectedMember.getLmpDate().longValue()))));
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(this.selectedMember.getLmpDate().longValue());
            calendar2.add(5, 281);
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("EDD")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, simpleDateFormat.format(calendar2.getTime())));
        }
        if (this.selectedMember.getCurPregRegDate() != null && this.selectedMember.getLmpDate() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.PREGNANCY_REGISTRATION_DATE)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, simpleDateFormat.format(new Date(this.selectedMember.getCurPregRegDate().longValue()))));
            Calendar calendar3 = Calendar.getInstance();
            calendar3.setTimeInMillis(this.selectedMember.getLmpDate().longValue());
            calendar3.add(5, 90);
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.EARLY_REGISTRATION)));
            if (calendar3.getTime().after(new Date(this.selectedMember.getCurPregRegDate().longValue()))) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel("Yes")));
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMyLabel("No")));
            }
        }
        if (this.selectedMember.getBloodGroup() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BLOOD_GROUP)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedMember.getBloodGroup()));
        }
        if (this.selectedMember.getWeight() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.LAST_WEIGHT_RECORDED)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedMember.getWeight() + " Kgs"));
        }
        hideProcessDialog();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setPhoneNumberUpdateScreen() {
        /*
            r5 = this;
            android.widget.LinearLayout r0 = r5.bodyLayoutContainer
            r0.removeAllViews()
            java.lang.String r0 = "phoneUpdateScreen"
            r5.screen = r0
            com.argusoft.sewa.android.app.databean.MemberDataBean r0 = r5.selectedMember
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r0)
            r5.setSubTitle(r0)
            com.argusoft.sewa.android.app.databean.MemberDataBean r0 = r5.selectedMember
            java.lang.String r0 = r0.getAdditionalInfo()
            if (r0 == 0) goto L4c
            com.argusoft.sewa.android.app.databean.MemberDataBean r0 = r5.selectedMember
            java.lang.String r0 = r0.getAdditionalInfo()
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L4c
            com.google.gson.Gson r0 = new com.google.gson.Gson
            r0.<init>()
            com.argusoft.sewa.android.app.databean.MemberDataBean r1 = r5.selectedMember
            java.lang.String r1 = r1.getAdditionalInfo()
            java.lang.Class<com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean> r2 = com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean.class
            java.lang.Object r0 = r0.fromJson(r1, r2)
            com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean r0 = (com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean) r0
            java.lang.Boolean r1 = r0.getPhoneVerified()
            if (r1 == 0) goto L4c
            java.lang.Boolean r0 = r0.getPhoneVerified()
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L4c
            java.lang.String r0 = "Enter phone number ✔️"
            goto L4e
        L4c:
            java.lang.String r0 = "Enter phone number"
        L4e:
            android.widget.LinearLayout r1 = r5.bodyLayoutContainer
            android.content.Context r2 = r5.context
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r3 = 0
            com.google.android.material.textview.MaterialTextView r0 = com.argusoft.sewa.android.app.component.MyStaticComponents.generateQuestionView(r3, r3, r2, r0)
            r1.addView(r0)
            com.google.android.material.textfield.TextInputLayout r0 = r5.phoneNumberEditText
            if (r0 != 0) goto L9a
            android.content.Context r0 = r5.context
            r1 = 10
            r2 = 2
            java.lang.String r3 = "Phone number"
            r4 = 1001(0x3e9, float:1.403E-42)
            com.google.android.material.textfield.TextInputLayout r0 = com.argusoft.sewa.android.app.component.MyStaticComponents.getEditText(r0, r3, r4, r1, r2)
            r5.phoneNumberEditText = r0
            android.widget.EditText r0 = r0.getEditText()
            if (r0 == 0) goto L9a
            com.argusoft.sewa.android.app.databean.MemberDataBean r0 = r5.selectedMember
            java.lang.String r0 = r0.getMobileNumber()
            if (r0 == 0) goto L9a
            com.argusoft.sewa.android.app.databean.MemberDataBean r0 = r5.selectedMember
            java.lang.String r0 = r0.getMobileNumber()
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L9a
            com.google.android.material.textfield.TextInputLayout r0 = r5.phoneNumberEditText
            android.widget.EditText r0 = r0.getEditText()
            com.argusoft.sewa.android.app.databean.MemberDataBean r1 = r5.selectedMember
            java.lang.String r1 = r1.getMobileNumber()
            r0.setText(r1)
        L9a:
            android.widget.LinearLayout r0 = r5.bodyLayoutContainer
            com.google.android.material.textfield.TextInputLayout r1 = r5.phoneNumberEditText
            r0.addView(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.setPhoneNumberUpdateScreen():void");
    }

    private void setVerifyScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = VERIFY_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FORM_ENTRY_COMPLETED));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.FORM_ENTRY_COMPLETED_SUCCESSFULLY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.WANT_TO_REVIEW_OR_SUBMIT_THE_DATA));
        if (this.verifyRadioGroup == null) {
            this.verifyRadioGroup = new RadioGroup(this.context);
            this.verifyRadioGroup.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.WANT_TO_SUBMIT_THE_DATA), RADIO_BUTTON_SUBMIT), new RadioGroup.LayoutParams(-1, -2));
            this.verifyRadioGroup.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel(LabelConstants.WANT_TO_VERIFY_THE_DATA), RADIO_BUTTON_VERIFY), new RadioGroup.LayoutParams(-1, -2));
        }
        this.bodyLayoutContainer.addView(this.verifyRadioGroup);
    }

    private void setFinalScreen() {
        this.screen = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.YOUR_FORM_IS_COMPLETE)));
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    private String generateAnswerString() {
        StringBuilder sb = new StringBuilder("latitude!");
        sb.append(this.currentLatitude);
        sb.append("~longitude!");
        sb.append(this.currentLongitude);
        sb.append("~mobileStartDate!");
        sb.append(this.mobileStartDate.getTime());
        sb.append("~mobileEndDate!");
        sb.append(new Date().getTime());
        sb.append("~memberId!");
        sb.append(this.selectedMember.getId());
        sb.append("~phoneNumber!");
        sb.append((this.phoneNumberEditText.getEditText() != null ? this.phoneNumberEditText.getEditText().getText().toString() : "").replace(" ", ""));
        sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            switch (str2) {
                case "verifyScreen":
                    setPhoneNumberUpdateScreen();
                    break;
                case "phoneUpdateScreen":
                    setMemberDetailsScreen();
                    break;
                case "villageSelectionScreen":
                    navigateToHomeScreen(false);
                    break;
                case "memberSelectionScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    if (this.subCenterList.size() == 1) {
                        navigateToHomeScreen(false);
                        break;
                    } else if (this.subCenterList.isEmpty()) {
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.DATA_NOT_SYNCED_ALERT)));
                        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.PhoneNumberVerificationActivity.6
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                PhoneNumberVerificationActivity.this.navigateToHomeScreen(false);
                            }
                        });
                        break;
                    } else {
                        this.screen = VILLAGE_SELECTION_SCREEN;
                        this.villageList = this.locationService.retrieveLocationBeansByLevelAndParent(6, Long.valueOf(this.selectedSubCenter.longValue()));
                        addSubCenterSelectionSpinner();
                        break;
                    }
                case "memberDetailsScreen":
                    showProcessDialog();
                    this.bodyLayoutContainer.removeAllViews();
                    setSubTitle(null);
                    LinearLayout linearLayout = this.bodyLayoutContainer;
                    linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
                    addSearchTextBox();
                    retrieveMemberListFromDB(null);
                    break;
                case "finalScreen":
                    setVerifyScreen();
                    break;
            }
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> listRetrieveMembersForPhoneVerificationByFhsr = this.fhsService.retrieveMembersForPhoneVerificationByFhsr(Long.valueOf(this.selectedVillage.longValue()), this.searchString, this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveMembersForPhoneVerificationByFhsr);
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            this.memberDataBeans.addAll(list);
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
            }
            this.paginatedListView.onFinishLoadingWithItem(true, arrayList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
