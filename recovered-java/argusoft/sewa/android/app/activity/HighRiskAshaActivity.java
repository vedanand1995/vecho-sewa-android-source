package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
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
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class HighRiskAshaActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final long DELAY = 500;
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY = 200;
    private static final String TYPE_SELECTION_SCREEN = "typeSelectionScree";
    private static final String VISIT_SELECTION_SCREEN = "visitSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    public SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    public FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private List<MemberDataBean> highRiskChildren;
    private List<MemberDataBean> highRiskPregnantWomen;
    private MaterialTextView listTitleView;
    private PagingListView memberListView;
    private Button nextButton;
    private MaterialTextView noMemberAvailableTextView;
    private long offset;
    private String screen;
    private List<Integer> selectedAreas;
    private Integer selectedAshaArea;
    public SewaServiceImpl sewaService;
    private Spinner spinner;
    public TechoAshaServiceImpl techoAshaService;
    private List<String> visitForms;
    private List<String> visits;
    private List<LocationBean> ashaAreaList = new ArrayList();
    private MemberDataBean memberSelected = null;
    private long limit = 30;
    private int selectedTypeIndex = -1;
    private int selectedWomanIndex = -1;
    private int selectedChildIndex = -1;
    private int selectedVisitIndex = -1;
    private Timer timer = new Timer();
    private String searchString = null;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
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
        setTitle(UtilBean.getTitleText(LabelConstants.HIGH_RISK_BENEFICIARIES_TITLE));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> listRetrieveAshaAreasAssignedToUser = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        this.ashaAreaList = listRetrieveAshaAreasAssignedToUser;
        if (listRetrieveAshaAreasAssignedToUser.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            setSelectionType();
        } else if (this.ashaAreaList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_HIGH_RISK_BENEFICIARIES_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    HighRiskAshaActivity.this.alertDialog.dismiss();
                    HighRiskAshaActivity.this.navigateToHomeScreen(false);
                    HighRiskAshaActivity.this.finish();
                    return;
                }
                HighRiskAshaActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
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
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.onClick(android.view.View):void");
    }

    public void setSelectionType() {
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_TYPE));
        this.screen = TYPE_SELECTION_SCREEN;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.HIGH_RISK_WOMEN));
        arrayList.add(new ListItemDataBean(LabelConstants.HIGH_RISK_CHILDREN));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                HighRiskAshaActivity.this.selectedTypeIndex = i;
                HighRiskAshaActivity.this.setSubTitle(null);
                HighRiskAshaActivity.this.bodyLayoutContainer.removeAllViews();
                HighRiskAshaActivity.this.searchTextBox();
                HighRiskAshaActivity.this.retrieveHighRiskWomenAndChildList(null);
                HighRiskAshaActivity highRiskAshaActivity = HighRiskAshaActivity.this;
                highRiskAshaActivity.onClick(highRiskAshaActivity.nextButton);
            }
        }, null));
        this.footerView.setVisibility(8);
    }

    public void searchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    HighRiskAshaActivity.this.timer.cancel();
                    HighRiskAshaActivity.this.timer = new Timer();
                    HighRiskAshaActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.3.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence2 = charSequence;
                            if (charSequence2 != null && charSequence2.length() > 2) {
                                HighRiskAshaActivity.this.retrieveHighRiskWomenAndChildList(charSequence.toString());
                                return;
                            }
                            CharSequence charSequence3 = charSequence;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                HighRiskAshaActivity.this.retrieveHighRiskWomenAndChildList(null);
                            }
                        }
                    }, HighRiskAshaActivity.DELAY);
                }
            });
        }
    }

    public void addAshaAreaSelectionSpinner() {
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        setSubTitle(null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        String[] strArr = new String[this.ashaAreaList.size()];
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        if (this.selectedAshaArea != null) {
            for (LocationBean locationBean : this.ashaAreaList) {
                if (locationBean.getActualID().intValue() == this.selectedAshaArea.intValue()) {
                    this.spinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.spinner);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    public void retrieveHighRiskWomenAndChildList(String str) {
        LinkedList linkedList = new LinkedList();
        this.selectedAreas = linkedList;
        linkedList.add(this.selectedAshaArea);
        this.offset = 0L;
        this.searchString = str;
        this.selectedChildIndex = -1;
        this.selectedWomanIndex = -1;
        if (this.selectedTypeIndex == 0) {
            this.highRiskPregnantWomen = this.fhsService.retrievePregnantWomenByAshaArea(this.selectedAreas, true, null, str, this.limit, 0L);
        } else {
            this.highRiskChildren = this.fhsService.retrieveChildsBelow5YearsByAshaArea(this.selectedAreas, true, null, str, null, null, null, this.limit, this.offset);
        }
        this.offset += this.limit;
        setMemberSelectionScreen();
    }

    public void setMemberSelectionScreen() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.memberListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableTextView);
        int i = this.selectedTypeIndex;
        if (i == 0) {
            List<ListItemDataBean> listAddHighRiskMemberList = addHighRiskMemberList(this.highRiskPregnantWomen);
            if (listAddHighRiskMemberList.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_HIGH_RISK_PREGNANT_WOMEN_IN_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HighRiskAshaActivity.this.setSelectionType();
                    }
                });
            } else {
                this.memberListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddHighRiskMemberList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.5
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        HighRiskAshaActivity.this.selectedWomanIndex = i2;
                    }
                }, this);
                MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.HIGH_RISK_PREGNANT_WOMEN);
                this.listTitleView = materialTextViewGenerateQuestionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
                this.bodyLayoutContainer.addView(this.memberListView);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        } else if (i == 1) {
            List<ListItemDataBean> listAddHighRiskMemberList2 = addHighRiskMemberList(this.highRiskChildren);
            if (listAddHighRiskMemberList2.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView2 = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_HIGH_RISK_CHILDREN_IN_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView2;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView2);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HighRiskAshaActivity.this.setSelectionType();
                    }
                });
            } else {
                this.memberListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddHighRiskMemberList2, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.7
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        HighRiskAshaActivity.this.selectedChildIndex = i2;
                    }
                }, this);
                MaterialTextView materialTextViewGenerateQuestionView2 = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.HIGH_RISK_CHILDREN);
                this.listTitleView = materialTextViewGenerateQuestionView2;
                this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView2);
                this.bodyLayoutContainer.addView(this.memberListView);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> addHighRiskMemberList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean)));
            }
        }
        return arrayList;
    }

    private void setVisitSelectionScreen(List<String> list) {
        this.screen = VISIT_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        ArrayList arrayList = new ArrayList();
        this.visitForms = new ArrayList();
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MEMBER_NAME));
        detailsLayout.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.memberSelected)));
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.HIGH_RISK_REASON));
        MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(this.memberSelected.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
        if (memberAdditionalInfoDataBean != null && memberAdditionalInfoDataBean.getHighRiskReasons() != null && !memberAdditionalInfoDataBean.getHighRiskReasons().isEmpty()) {
            int i = 1;
            for (String str : memberAdditionalInfoDataBean.getHighRiskReasons().split(GlobalTypes.COMMA)) {
                detailsLayout.addView(MyStaticComponents.generateAnswerView(this, i + ". " + UtilBean.getMyLabel(str.trim())));
                i++;
            }
        } else {
            detailsLayout.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(detailsLayout);
        if (list == null || list.isEmpty()) {
            showMemberDetails();
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_VISIT));
            for (String str2 : list) {
                arrayList.add(new ListItemDataBean(UtilBean.getFullFormOfEntity().get(str2), null));
                this.visitForms.add(str2);
            }
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                HighRiskAshaActivity.this.selectedVisitIndex = i2;
            }
        }, null));
    }

    private void showMemberDetails() {
        this.screen = MEMBER_DETAILS_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.nextButton.setText("Okay");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this, UtilBean.getMyLabel(LabelConstants.MEMBER_DETAILS)));
        MemberDataBean memberDataBean = this.memberSelected;
        if (memberDataBean != null) {
            FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId());
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.memberSelected)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.HEALTH_ID)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getUniqueHealthId()));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getFamilyId()));
            if (this.memberSelected.getMobileNumber() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getMobileNumber()));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, simpleDateFormat.format(this.memberSelected.getDob())));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.AGE)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getAgeDisplayOnGivenDate(new Date(this.memberSelected.getDob().longValue()), new Date())));
            if (this.memberSelected.getYearOfWedding() != null) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(this.memberSelected.getDob().longValue());
                int i = calendar.get(1);
                Integer numValueOf = Integer.valueOf(i);
                int iIntValue = this.memberSelected.getYearOfWedding().intValue();
                numValueOf.getClass();
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.AGE_AT_WEDDING)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, Integer.toString(iIntValue - i)));
            }
            if (this.memberSelected.getLmpDate() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LMP_DATE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, simpleDateFormat.format(this.memberSelected.getLmpDate())));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.RELIGION)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CASTE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste())));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag() != null && familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag().booleanValue()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BPL)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.FAMILY_IS_BPL));
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BPL)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.FAMILY_IS_NOT_BPL));
            }
            String childrenCount = this.fhsService.getChildrenCount(Long.valueOf(this.memberSelected.getId()), true, false, false);
            if (childrenCount != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TOTAL_LIVING_CHILDREN)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, childrenCount));
            }
            String childrenCount2 = this.fhsService.getChildrenCount(Long.valueOf(this.memberSelected.getId()), false, true, false);
            if (childrenCount2 != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TOTAL_MALE_CHILDREN)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, childrenCount2));
            }
            String childrenCount3 = this.fhsService.getChildrenCount(Long.valueOf(this.memberSelected.getId()), false, false, true);
            if (childrenCount3 != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TOTAL_FEMALE_CHILDREN)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, childrenCount3));
            }
            MemberDataBean latestChildByMotherId = this.fhsService.getLatestChildByMotherId(Long.valueOf(this.memberSelected.getId()));
            if (latestChildByMotherId != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LATEST_CHILD_NAME)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(latestChildByMotherId)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LATEST_CHILD_GENDER)));
                if (latestChildByMotherId.getGender().equals("M")) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.MALE));
                } else {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.FEMALE));
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LATEST_CHILD_AGE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getAgeDisplayOnGivenDate(new Date(latestChildByMotherId.getDob().longValue()), new Date())));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.ADDRESS)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId)));
        }
    }

    private void startDynamicFormActivity(String str, MemberDataBean memberDataBean) {
        try {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", this.visitForms.get(this.selectedVisitIndex));
            startActivityForResult(intent, REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HighRiskAshaActivity.this.alertDialog.dismiss();
                    HighRiskAshaActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY.intValue()) {
            showProcessDialog();
            this.selectedVisitIndex = -1;
            this.selectedWomanIndex = -1;
            this.selectedChildIndex = -1;
            setVisitSelectionScreen(this.visits);
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r6) {
        /*
            r5 = this;
            super.onOptionsItemSelected(r6)
            java.lang.String r0 = r5.screen
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lcb
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Lcb
        L11:
            int r6 = r6.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r6 != r0) goto Lca
            java.lang.String r6 = r5.screen
            r6.hashCode()
            int r0 = r6.hashCode()
            java.lang.String r3 = "ashaAreaSelectionScreen"
            r4 = -1
            switch(r0) {
                case -1701172240: goto L55;
                case -813922784: goto L4c;
                case 242061389: goto L41;
                case 754789150: goto L36;
                case 1052349652: goto L2b;
                default: goto L29;
            }
        L29:
            r6 = -1
            goto L5f
        L2b:
            java.lang.String r0 = "memberDetailsScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L34
            goto L29
        L34:
            r6 = 4
            goto L5f
        L36:
            java.lang.String r0 = "memberSelectionScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L3f
            goto L29
        L3f:
            r6 = 3
            goto L5f
        L41:
            java.lang.String r0 = "visitSelectionScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L4a
            goto L29
        L4a:
            r6 = 2
            goto L5f
        L4c:
            boolean r6 = r6.equals(r3)
            if (r6 != 0) goto L53
            goto L29
        L53:
            r6 = 1
            goto L5f
        L55:
            java.lang.String r0 = "typeSelectionScree"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L5e
            goto L29
        L5e:
            r6 = 0
        L5f:
            java.lang.String r0 = "Next"
            switch(r6) {
                case 0: goto L94;
                case 1: goto L90;
                case 2: goto L79;
                case 3: goto L65;
                case 4: goto L79;
                default: goto L64;
            }
        L64:
            goto Lc9
        L65:
            r5.selectedTypeIndex = r4
            r5.setSelectionType()
            android.widget.Button r6 = r5.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r6.setText(r0)
            android.widget.Button r6 = r5.nextButton
            r6.setOnClickListener(r5)
            goto Lc9
        L79:
            r5.showProcessDialog()
            r5.selectedChildIndex = r4
            r5.selectedWomanIndex = r4
            r6 = 0
            r5.setSubTitle(r6)
            android.widget.LinearLayout r0 = r5.bodyLayoutContainer
            r0.removeAllViews()
            r5.searchTextBox()
            r5.retrieveHighRiskWomenAndChildList(r6)
            goto Lc9
        L90:
            r5.navigateToHomeScreen(r2)
            goto Lc9
        L94:
            android.widget.LinearLayout r6 = r5.footerView
            r6.setVisibility(r2)
            android.widget.Button r6 = r5.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r6.setText(r0)
            android.widget.Button r6 = r5.nextButton
            r6.setOnClickListener(r5)
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r6 = r5.ashaAreaList
            int r6 = r6.size()
            if (r6 != r1) goto Lb3
            r5.navigateToHomeScreen(r2)
            goto Lc7
        Lb3:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r6 = r5.ashaAreaList
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto Lbf
            r5.navigateToHomeScreen(r2)
            goto Lc7
        Lbf:
            android.widget.LinearLayout r6 = r5.bodyLayoutContainer
            r6.removeAllViews()
            r5.addAshaAreaSelectionSpinner()
        Lc7:
            r5.screen = r3
        Lc9:
            return r1
        Lca:
            return r2
        Lcb:
            r5.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.HighRiskAshaActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> listRetrievePregnantWomenByAshaArea;
        int i = this.selectedTypeIndex;
        if (i == 0) {
            listRetrievePregnantWomenByAshaArea = this.fhsService.retrievePregnantWomenByAshaArea(this.selectedAreas, true, null, this.searchString, this.limit, this.offset);
        } else {
            listRetrievePregnantWomenByAshaArea = i != 1 ? null : this.fhsService.retrieveChildsBelow5YearsByAshaArea(this.selectedAreas, true, null, this.searchString, null, null, null, this.limit, this.offset);
        }
        this.offset += this.limit;
        onLoadMoreUi(listRetrievePregnantWomenByAshaArea);
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        int i = this.selectedTypeIndex;
        if (i == 0) {
            if (!list.isEmpty()) {
                this.highRiskPregnantWomen.addAll(list);
                this.memberListView.onFinishLoadingWithItem(true, addHighRiskMemberList(list));
                return;
            }
            this.memberListView.onFinishLoadingWithItem(false, null);
            return;
        }
        if (i != 1) {
            return;
        }
        if (!list.isEmpty()) {
            this.highRiskChildren.addAll(list);
            this.memberListView.onFinishLoadingWithItem(true, addHighRiskMemberList(list));
            return;
        }
        this.memberListView.onFinishLoadingWithItem(false, null);
    }
}
