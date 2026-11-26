package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.IncentiveServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.UserServiceImpl;
import com.argusoft.sewa.android.app.databean.IncentiveDetailDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveMemberDetailsDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveMonthlyDetailsDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.model.UserBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class FHWIncentiveFlowActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    public static final String ASHA_SELECTION_FOR_APPROVAL_SCREEN = "ashaSelectionForApprovalScreen";
    public static final String DISAPPROVAL_SCREEN = "disapprovalScreen";
    public static final String FHW_INCENTIVE_SCREEN = "fhwIncentiveScreen";
    private static final String FORM_SUBMISSION_SCREEN = "FORM_SUBMISSION_SCREEN";
    public static final String INCENTIVE_APPROVAL_SCREEN = "manualIncentiveScreen";
    private static final String SERVICE_SELECTION_SCREEN = "SERVICE_SELECTION_SCREEN";
    public static final String SUM_AMOUNT_SCREEN = "sumAmountScreen";
    public static final String VALIDATION_SCREEN = "validationScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    private LinearLayout globalPanel;
    private Map<Integer, IncentiveMaster> incentiveMasterWithIdMap;
    Dao<IncentiveMonthlyDetailsBean, Integer> incentiveMonthlyDetailBeanDao;
    IncentiveServiceImpl incentiveService;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableView;
    private MaterialTextView pagingHeaderView;
    private PagingListView pagingListView;
    private String screen;
    private IncentiveMonthlyDetailsDataBean selectedIncentive;
    SewaServiceImpl sewaService;
    private TextInputLayout tbiTopupInputField;
    Dao<UserBean, Integer> userDao;
    UserServiceImpl userService;
    public Context context = this;
    private int selectedPeopleIndex = -1;
    private int selectedServiceIndex = -1;
    List<UserBean> users = new ArrayList();
    private final List<IncentiveDetailDataBean> incentivesForApproval = new ArrayList();
    private List<IncentiveDetailDataBean> approvedIncentives = new ArrayList();
    private List<UserBean> memberList = new ArrayList();
    private final Map<String, LinearLayout> incentiveDetailsLayouts = new HashMap();
    private final Map<String, CheckBox> checkBoxMap = new HashMap();
    private final Map<String, View> disapprovalReasonMap = new HashMap();
    private final Map<String, TextInputLayout> disapprovalReasonMapForConfig = new HashMap();
    private final List<String> incentiveDisapproveList = new ArrayList();
    private final LinearLayout.LayoutParams incentiveTitleLayoutParam = new LinearLayout.LayoutParams(0, -2, 4.0f);
    private final LinearLayout.LayoutParams incentiveAmountLayoutParam = new LinearLayout.LayoutParams(0, -1, 2.0f);
    private final LinearLayout.LayoutParams incentiveDetailsLayoutParam = new LinearLayout.LayoutParams(-2, -2, 1.0f);
    private final LinearLayout.LayoutParams layoutParamsForRow = new LinearLayout.LayoutParams(-1, -2);
    private final Map<IncentiveMonthlyDetailsBean, Integer> incentiveMonthlyDetailsAmountMap = new HashMap();
    private final SimpleDateFormat mmmmYyyy = new SimpleDateFormat("MMMM yyyy", Locale.getDefault());
    private int disapprovedAmt = 0;
    private String tbiTopupAmount = "0";

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
    }

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
        setTitle(UtilBean.getTitleText(LabelConstants.INCENTIVE));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setContentView(this.globalPanel);
        setBodyDetail();
    }

    public void setBodyDetail() {
        this.bodyLayoutContainer.removeAllViews();
        retrieveAshaInLocation();
    }

    public void retrieveAshaInLocation() {
        this.memberList = this.userService.retrieveUsersAssigned();
        addUsersForApprovalToScreen();
    }

    public void addUsersForApprovalToScreen() {
        this.users.clear();
        this.screen = "ashaSelectionForApprovalScreen";
        for (UserBean userBean : this.memberList) {
            List<IncentiveMonthlyDetailsBean> listRetrieveAshaFacApprovedIncentives = this.incentiveService.retrieveAshaFacApprovedIncentives(userBean.getId());
            Iterator<IncentiveMonthlyDetailsBean> it = listRetrieveAshaFacApprovedIncentives.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (it.next().getIncentiveDetails() == null) {
                    i++;
                }
            }
            if (i != listRetrieveAshaFacApprovedIncentives.size() && listRetrieveAshaFacApprovedIncentives != null && !listRetrieveAshaFacApprovedIncentives.isEmpty()) {
                this.users.add(userBean);
            }
        }
        List<UserBean> list = this.users;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select an Asha User");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.users), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FHWIncentiveFlowActivity.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    FHWIncentiveFlowActivity.this.selectedPeopleIndex = i2;
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_ASHA_IN_AREA_FOR_INCENTIVES);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        hideProcessDialog();
    }

    public void retrieveScreenForFhw(int i) {
        this.screen = FHW_INCENTIVE_SCREEN;
        final List<IncentiveMonthlyDetailsBean> listRetrieveAshaFacApprovedIncentives = this.incentiveService.retrieveAshaFacApprovedIncentives(i);
        if (listRetrieveAshaFacApprovedIncentives.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.INCENTIVE_DETAILS_NOT_FOUND));
            this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.MAIN_MENU));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FHWIncentiveFlowActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m164xdefd67c7(view);
                }
            });
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean : listRetrieveAshaFacApprovedIncentives) {
            if (incentiveMonthlyDetailsBean.getIncentiveMonth() != null) {
                arrayList.add(new ListItemDataBean(this.mmmmYyyy.format(incentiveMonthlyDetailsBean.getIncentiveMonth())));
            }
        }
        this.nextButton.setVisibility(8);
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FHWIncentiveFlowActivity$$ExternalSyntheticLambda4
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                this.f$0.m165x2cbcdfc8(listRetrieveAshaFacApprovedIncentives, adapterView, view, i2, j);
            }
        }, null));
    }

    /* renamed from: lambda$retrieveScreenForFhw$0$com-argusoft-sewa-android-app-activity-FHWIncentiveFlowActivity, reason: not valid java name */
    /* synthetic */ void m164xdefd67c7(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$retrieveScreenForFhw$1$com-argusoft-sewa-android-app-activity-FHWIncentiveFlowActivity, reason: not valid java name */
    /* synthetic */ void m165x2cbcdfc8(List list, AdapterView adapterView, View view, int i, long j) {
        retrieveSelectedIncentiveDetails((IncentiveMonthlyDetailsBean) list.get(i));
    }

    public void retrieveSelectedIncentiveDetails(IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean) {
        if (incentiveMonthlyDetailsBean == null) {
            SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_DETAILS_NOT_FOUND);
            return;
        }
        this.nextButton.setVisibility(0);
        this.incentiveMonthlyDetailsAmountMap.put(incentiveMonthlyDetailsBean, 0);
        this.selectedIncentive = new IncentiveMonthlyDetailsDataBean(incentiveMonthlyDetailsBean);
        this.incentiveMasterWithIdMap = new HashMap();
        this.incentivesForApproval.clear();
        this.checkBoxMap.clear();
        this.disapprovalReasonMap.clear();
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.selectedIncentive.getIncentiveDetails()) {
            IncentiveMaster incentiveMasterById = this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId());
            this.incentiveMasterWithIdMap.put(incentiveDetailDataBean.getIncentiveId(), incentiveMasterById);
            incentiveDetailDataBean.setIncentiveGroup(incentiveMasterById.getIncentiveGroup());
            incentiveDetailDataBean.setOrder(incentiveMasterById.getOrder());
            this.incentivesForApproval.add(incentiveDetailDataBean);
        }
        sortIncentiveDetails(this.incentivesForApproval);
        setIncentiveApprovalScreen();
    }

    public void storeIncentiveForm() {
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
        storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setAnswerEntity(FormConstants.FHW_INCENTIVE);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setBeneficiaryName("Incentive Entry");
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setTaskName(UtilBean.getUserFullName(this.users.get(this.selectedPeopleIndex)) + " - " + this.mmmmYyyy.format(this.selectedIncentive.getIncentiveMonth()));
        loggerBean.setFormType(FormConstants.FHW_INCENTIVE);
        try {
            IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBeanRetrieveIncentiveMonthlyBeanByActualId = this.incentiveService.retrieveIncentiveMonthlyBeanByActualId(this.selectedIncentive.getId());
            incentiveMonthlyDetailsBeanRetrieveIncentiveMonthlyBeanByActualId.setIncentiveMonth(null);
            incentiveMonthlyDetailsBeanRetrieveIncentiveMonthlyBeanByActualId.setModifiedOn(Calendar.getInstance().getTime());
            incentiveMonthlyDetailsBeanRetrieveIncentiveMonthlyBeanByActualId.setIncentiveDetails(new Gson().toJson(this.incentivesForApproval));
            incentiveMonthlyDetailsBeanRetrieveIncentiveMonthlyBeanByActualId.setStatus(IncentiveMonthlyDetailsBean.Status.APPROVAL_PENDING);
            this.incentiveMonthlyDetailBeanDao.update((Dao<IncentiveMonthlyDetailsBean, Integer>) incentiveMonthlyDetailsBeanRetrieveIncentiveMonthlyBeanByActualId);
            this.selectedIncentive.setIncentiveDetails(this.incentivesForApproval);
            this.selectedIncentive.setIncentiveMonth(null);
            this.selectedIncentive.setModifiedOn(null);
            storeAnswerBean.setAnswer(new Gson().toJson(this.selectedIncentive));
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
        }
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        this.sewaService.createLoggerBean(loggerBean);
    }

    private MaterialTextView getTableRowCellText(boolean z, String str, int i) {
        MaterialTextView materialTextView = new MaterialTextView(this);
        materialTextView.setGravity(i);
        materialTextView.setText(UtilBean.getMyLabel(str));
        if (z) {
            materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        return materialTextView;
    }

    private LinearLayout getTableRowLayout() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(10, 15, 10, 15);
        linearLayout.setLayoutParams(this.layoutParamsForRow);
        return linearLayout;
    }

    private List<ListItemDataBean> getMembersList(List<UserBean> list) {
        ArrayList arrayList = new ArrayList();
        for (UserBean userBean : list) {
            arrayList.add(new ListItemDataBean(userBean.getUserName(), userBean.getLocationId(), UtilBean.getUserFullName(userBean)));
        }
        return arrayList;
    }

    public void setFormSubmissionScreen() {
        this.screen = FORM_SUBMISSION_SCREEN;
        this.nextButton.setText(GlobalTypes.EVENT_SUBMIT);
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.YOUR_FORM_IS_COMPLETE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.COMPLETED_INCENTIVE_FORM)));
    }

    private void setIncentiveApprovalScreen() {
        this.incentiveDetailsLayouts.clear();
        this.screen = "manualIncentiveScreen";
        this.bodyLayoutContainer.removeAllViews();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM yyyy", Locale.getDefault());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel("Incentive Details for") + " " + simpleDateFormat.format(this.selectedIncentive.getIncentiveMonth())));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(5, 16, 5, 10);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 20, 0, 10);
        linearLayout.setLayoutParams(layoutParams);
        this.bodyLayoutContainer.addView(linearLayout);
        LinearLayout tableRowLayout = getTableRowLayout();
        tableRowLayout.addView(getTableRowCellText(true, LabelConstants.SERVICE_PROVIDED, GravityCompat.START), this.incentiveTitleLayoutParam);
        tableRowLayout.addView(getTableRowCellText(true, LabelConstants.MEMBER_COUNT, 17), this.incentiveAmountLayoutParam);
        tableRowLayout.addView(getTableRowCellText(true, LabelConstants.AMOUNT, 17), this.incentiveAmountLayoutParam);
        tableRowLayout.addView(getTableRowCellText(true, "   ", GravityCompat.END), this.incentiveDetailsLayoutParam);
        String incentiveGroup = null;
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.incentivesForApproval) {
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
            if (incentiveMaster != null) {
                if (incentiveGroup == null || !incentiveGroup.equals(incentiveMaster.getIncentiveGroup())) {
                    incentiveGroup = incentiveMaster.getIncentiveGroup();
                    MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, incentiveMaster.getIncentiveGroup());
                    listTitleView.setGravity(17);
                    this.bodyLayoutContainer.addView(listTitleView);
                }
                LinearLayout incentiveLayoutForIncentive = this.incentiveDetailsLayouts.get(incentiveDetailDataBean.getIncentiveId().toString());
                if (incentiveLayoutForIncentive == null) {
                    incentiveLayoutForIncentive = getIncentiveLayoutForIncentive(incentiveDetailDataBean, incentiveMaster);
                    this.incentiveDetailsLayouts.put(incentiveDetailDataBean.getIncentiveId().toString(), incentiveLayoutForIncentive);
                }
                this.bodyLayoutContainer.addView(incentiveLayoutForIncentive);
            }
        }
    }

    private LinearLayout getIncentiveLayoutForIncentive(IncentiveDetailDataBean incentiveDetailDataBean, IncentiveMaster incentiveMaster) {
        String str;
        final MaterialTextView materialTextViewGenerateAnswerView;
        final TextInputLayout editText = null;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.cho_incentive_details, (ViewGroup) null);
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R.id.memberDetailsLayout);
        linearLayout.setTag(incentiveDetailDataBean.getId());
        CheckBox checkBox = (CheckBox) linearLayout.findViewById(R.id.checkbox);
        checkBox.setChecked(true);
        checkBox.setVisibility(8);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.service);
        materialTextView.setText("For " + incentiveMaster.getIncentiveTitle());
        materialTextView.setTextColor(-16776961);
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.count);
        if (incentiveDetailDataBean.getAmount() != null) {
            str = "Amount : ₹ " + incentiveDetailDataBean.getAmount().toString() + "/-";
        } else {
            str = "₹ 0/-";
        }
        materialTextView2.setText(str);
        MaterialTextView materialTextView3 = (MaterialTextView) linearLayout.findViewById(R.id.amount);
        if (incentiveMaster.getCode().equalsIgnoreCase(LabelConstants.SNC_IRON_SYRUP)) {
            materialTextView3.setText(this.selectedIncentive.getIronSyrupCount().toString());
        } else {
            if (incentiveMaster.getAllowApproval().booleanValue()) {
                materialTextView3.setText(incentiveDetailDataBean.getVal() != null ? incentiveDetailDataBean.getVal().toString() : "0");
            } else {
                materialTextView3.setText(incentiveDetailDataBean.getVal() != null ? incentiveDetailDataBean.getVal().toString() : "0");
            }
        }
        if (incentiveDetailDataBean.getIncentiveMemberDetails() != null && !incentiveDetailDataBean.getIncentiveMemberDetails().isEmpty()) {
            linearLayout2.addView(getIncentiveDetailTableForEachIncentive(incentiveDetailDataBean));
        } else {
            checkBox.setVisibility(0);
            if (incentiveDetailDataBean.getComment() == null || incentiveDetailDataBean.getComment().equalsIgnoreCase("APPROVED")) {
                materialTextViewGenerateAnswerView = null;
            } else {
                materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, "Asha Facilitator's comment: " + incentiveDetailDataBean.getComment());
            }
            if (materialTextViewGenerateAnswerView == null) {
                editText = MyStaticComponents.getEditText(this.context, "Reason for " + incentiveMaster.getIncentiveTitle(), -1, 100, 1);
            }
            if (materialTextViewGenerateAnswerView != null) {
                materialTextViewGenerateAnswerView.setPadding(15, 20, 15, 20);
                materialTextViewGenerateAnswerView.setTag(incentiveDetailDataBean.getIncentiveId().toString());
                linearLayout.addView(materialTextViewGenerateAnswerView);
                this.disapprovalReasonMap.put(incentiveDetailDataBean.getIncentiveId().toString(), materialTextViewGenerateAnswerView);
            }
            if (editText != null) {
                editText.setPadding(15, 20, 15, 20);
                linearLayout.addView(editText);
                this.disapprovalReasonMap.put(incentiveDetailDataBean.getIncentiveId().toString(), editText);
            }
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.FHWIncentiveFlowActivity$$ExternalSyntheticLambda0
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    FHWIncentiveFlowActivity.lambda$getIncentiveLayoutForIncentive$2(materialTextViewGenerateAnswerView, editText, compoundButton, z);
                }
            });
            this.checkBoxMap.put(incentiveDetailDataBean.getIncentiveId().toString(), checkBox);
        }
        hideProcessDialog();
        return linearLayout;
    }

    static /* synthetic */ void lambda$getIncentiveLayoutForIncentive$2(MaterialTextView materialTextView, TextInputLayout textInputLayout, CompoundButton compoundButton, boolean z) {
        if (materialTextView != null) {
            materialTextView.setVisibility(!z ? 0 : 8);
        }
        if (textInputLayout != null) {
            textInputLayout.setVisibility(z ? 8 : 0);
        }
    }

    private LinearLayout getIncentiveDetailTableForEachIncentive(IncentiveDetailDataBean incentiveDetailDataBean) {
        int i;
        LinearLayout linearLayout = new LinearLayout(this);
        int i2 = 1;
        linearLayout.setOrientation(1);
        int i3 = 15;
        linearLayout.setPadding(5, 15, 5, 15);
        linearLayout.setLayoutParams(new TableLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        int i4 = 10;
        linearLayout2.setPadding(10, 15, 10, 15);
        linearLayout2.setLayoutParams(this.layoutParamsForRow);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        linearLayout3.setLayoutParams(this.layoutParamsForRow);
        int i5 = 0;
        for (IncentiveMemberDetailsDataBean incentiveMemberDetailsDataBean : incentiveDetailDataBean.getIncentiveMemberDetails()) {
            LinearLayout linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(0);
            linearLayout4.setPadding(i4, i3, i4, i3);
            linearLayout4.setLayoutParams(this.layoutParamsForRow);
            LinearLayout linearLayout5 = new LinearLayout(this);
            linearLayout5.setOrientation(i2);
            linearLayout5.setLayoutParams(this.layoutParamsForRow);
            String str = incentiveDetailDataBean.getIncentiveId() + "_" + i5;
            final MaterialTextView materialTextView = (incentiveMemberDetailsDataBean.getComment() == null || incentiveMemberDetailsDataBean.getComment().equalsIgnoreCase("APPROVED")) ? null : MyStaticComponents.getMaterialTextView(this.context, "Asha Facilitator's comment: " + incentiveMemberDetailsDataBean.getComment(), i5, 100, false);
            final TextInputLayout editText = materialTextView == null ? MyStaticComponents.getEditText(this.context, "Reason for not selecting " + incentiveMemberDetailsDataBean.getName(), i5, 100, i2) : null;
            MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, String.format("%s - %s%s", (incentiveMemberDetailsDataBean.getUniqueHealthId() == null || incentiveMemberDetailsDataBean.getUniqueHealthId().isEmpty()) ? "" : incentiveMemberDetailsDataBean.getUniqueHealthId(), incentiveMemberDetailsDataBean.getName(), incentiveMemberDetailsDataBean.getServiceDate() != null ? " (" + convertDate(incentiveMemberDetailsDataBean.getServiceDate()) + ")" : ""), i5, true);
            checkBox.setChecked(true);
            checkBox.setTag(str);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.FHWIncentiveFlowActivity$$ExternalSyntheticLambda1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    FHWIncentiveFlowActivity.lambda$getIncentiveDetailTableForEachIncentive$3(materialTextView, editText, compoundButton, z);
                }
            });
            linearLayout4.addView(checkBox, layoutParams);
            linearLayout5.addView(linearLayout4);
            if (materialTextView != null) {
                materialTextView.setTag(str);
                i = 15;
                materialTextView.setPadding(15, 20, 15, 20);
                this.disapprovalReasonMap.put(str, materialTextView);
                linearLayout5.addView(materialTextView);
            } else {
                i = 15;
            }
            if (editText != null) {
                editText.setTag(str);
                editText.setPadding(i, 20, i, 20);
                this.disapprovalReasonMap.put(str, editText);
                linearLayout5.addView(editText);
            }
            this.checkBoxMap.put(str, checkBox);
            linearLayout.addView(linearLayout5, i5);
            i5++;
            i2 = 1;
            i3 = 15;
            i4 = 10;
        }
        return linearLayout;
    }

    static /* synthetic */ void lambda$getIncentiveDetailTableForEachIncentive$3(MaterialTextView materialTextView, TextInputLayout textInputLayout, CompoundButton compoundButton, boolean z) {
        if (materialTextView != null) {
            materialTextView.setVisibility(!z ? 0 : 8);
        }
        if (textInputLayout != null) {
            textInputLayout.setVisibility(z ? 8 : 0);
        }
    }

    private String convertDate(String str) {
        SimpleDateFormat simpleDateFormat;
        if (str.contains("T")) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
        } else {
            simpleDateFormat = new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4, Locale.US);
        }
        try {
            return new SimpleDateFormat("dd/MM/yyyy").format(simpleDateFormat.parse(str));
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    private void addCommentScreen() {
        this.screen = "sumAmountScreen";
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ASHA_FORM_SUBMIT_MSG) + this.mmmmYyyy.format(this.selectedIncentive.getIncentiveMonth())));
        Set<String> hashSet = new HashSet<>(Arrays.asList("NDCP_TB_DRUG_RESISTANT_CP", "NDCP_TB_DRUG_RESISTANT", "NDCP_TB_PREVENTIVE"));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        double d = 0.0d;
        double dShortValue = 0.0d;
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.approvedIncentives) {
            IncentiveMaster incentiveMasterById = this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId());
            if (incentiveMasterById != null && incentiveMasterById.getActive().booleanValue()) {
                boolean zContains = hashSet.contains(incentiveMasterById.getCode());
                boolean zEqualsIgnoreCase = incentiveMasterById.getIncentiveGroup().equalsIgnoreCase("7 - Routine Activities");
                if (incentiveDetailDataBean.getAmount().intValue() > 0 || zContains) {
                    if (zEqualsIgnoreCase) {
                        arrayList.add(incentiveDetailDataBean);
                    } else {
                        arrayList2.add(incentiveDetailDataBean);
                    }
                    double dDoubleValue = incentiveDetailDataBean.getAmount().doubleValue();
                    d += dDoubleValue;
                    dShortValue += (zContains && dDoubleValue == 0.0d) ? incentiveMasterById.getAmount().shortValue() / 2.0d : dDoubleValue / 2.0d;
                }
            }
        }
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(this.context, "Incentive-wise Amounts:");
        materialTextViewGenerateSubTitleView.setPadding(0, 16, 0, 16);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView);
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        if (!arrayList.isEmpty()) {
            MaterialTextView materialTextViewGenerateSubTitleView2 = MyStaticComponents.generateSubTitleView(this.context, "(Routine Activities)");
            materialTextViewGenerateSubTitleView2.setGravity(17);
            materialTextViewGenerateSubTitleView2.setPadding(0, 16, 0, 8);
            linearLayout.addView(materialTextViewGenerateSubTitleView2);
            addTableHeader(linearLayout);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                addIncentiveRow(linearLayout, (IncentiveDetailDataBean) it.next(), hashSet);
            }
        }
        if (!arrayList2.isEmpty()) {
            MaterialTextView materialTextViewGenerateSubTitleView3 = MyStaticComponents.generateSubTitleView(this.context, "(RCH)");
            materialTextViewGenerateSubTitleView3.setGravity(17);
            materialTextViewGenerateSubTitleView3.setPadding(0, 24, 0, 8);
            linearLayout.addView(materialTextViewGenerateSubTitleView3);
            addTableHeader(linearLayout);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                addIncentiveRow(linearLayout, (IncentiveDetailDataBean) it2.next(), hashSet);
            }
        }
        this.bodyLayoutContainer.addView(linearLayout);
        View view = new View(this.context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (this.context.getResources().getDisplayMetrics().density * 16.0f)));
        this.bodyLayoutContainer.addView(view);
        double d2 = d + dShortValue + 2500.0d;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateBoldAnswerView(this.context, "NHM Incentive Total: ₹ " + String.format("%.1f", Double.valueOf(d)) + "/-"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateBoldAnswerView(this.context, "State 50% Top-Up Total: ₹ " + String.format("%.1f", Double.valueOf(dShortValue)) + "/-"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateBoldAnswerView(this.context, "State Fixed Amount: ₹ " + String.format("%.1f", Double.valueOf(2500.0d)) + "/-"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, "Total Amount: ₹ " + String.format("%.1f", Double.valueOf(d2)) + "/-"));
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, "I declare that I have verified all the claimed incentive heads against relevant records and registers, post which the recommendation has been granted.", 1, false);
        this.checkBoxMap.put("MyCheckBox", checkBox);
        this.bodyLayoutContainer.addView(checkBox);
    }

    private void addTableHeader(LinearLayout linearLayout) {
        LinearLayout linearLayout2 = new LinearLayout(this.context);
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.setPadding(8, 8, 8, 8);
        TextView textView = new TextView(this.context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.5f));
        textView.setText("Incentive Title");
        textView.setTypeface(null, 1);
        textView.setTextSize(14.0f);
        TextView textView2 = new TextView(this.context);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
        textView2.setText("NHM Incentive");
        textView2.setLines(2);
        textView2.setTypeface(null, 1);
        textView2.setTextAlignment(6);
        textView2.setTextSize(14.0f);
        TextView textView3 = new TextView(this.context);
        textView3.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
        textView3.setText("State Top-up 50%");
        textView3.setLines(2);
        textView3.setTypeface(null, 1);
        textView3.setTextAlignment(6);
        textView3.setTextSize(14.0f);
        linearLayout2.addView(textView);
        linearLayout2.addView(textView2);
        linearLayout2.addView(textView3);
        linearLayout.addView(linearLayout2);
    }

    private void addIncentiveRow(LinearLayout linearLayout, IncentiveDetailDataBean incentiveDetailDataBean, Set<String> set) {
        IncentiveMaster incentiveMasterById = this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId());
        if (incentiveMasterById == null) {
            return;
        }
        boolean zContains = set.contains(incentiveMasterById.getCode());
        double dDoubleValue = incentiveDetailDataBean.getAmount().doubleValue();
        double dShortValue = (zContains && dDoubleValue == 0.0d) ? incentiveMasterById.getAmount().shortValue() / 2.0d : dDoubleValue / 2.0d;
        LinearLayout linearLayout2 = new LinearLayout(this.context);
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.setPadding(8, 8, 8, 8);
        TextView textView = new TextView(this.context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.5f));
        textView.setText(incentiveMasterById.getIncentiveTitle());
        textView.setTextSize(14.0f);
        TextView textView2 = new TextView(this.context);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
        textView2.setText("₹ " + String.format("%.1f", Double.valueOf(dDoubleValue)));
        textView2.setTextAlignment(6);
        textView2.setTextSize(14.0f);
        TextView textView3 = new TextView(this.context);
        textView3.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
        textView3.setText("₹ " + String.format("%.1f", Double.valueOf(dShortValue)));
        textView3.setTextAlignment(6);
        textView3.setTextSize(14.0f);
        linearLayout2.addView(textView);
        linearLayout2.addView(textView2);
        linearLayout2.addView(textView3);
        linearLayout.addView(linearLayout2);
    }

    private boolean validateDisapproval() {
        if (this.checkBoxMap.get("MyCheckBox").isChecked()) {
            return true;
        }
        SewaUtil.generateToast(this.context, "Please accept the disclaimer");
        return false;
    }

    private boolean validateCheckBoxesAndDisapprovalReason() {
        this.disapprovedAmt = 0;
        this.approvedIncentives.clear();
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.incentivesForApproval) {
            incentiveDetailDataBean.setApprovedAmount(incentiveDetailDataBean.getAmount().intValue());
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
            if (!this.incentiveDisapproveList.contains(incentiveMaster.getIncentiveTitle())) {
                String strTrim = "";
                if (incentiveDetailDataBean.getIncentiveMemberDetails() != null) {
                    int iAbs = Math.abs(incentiveDetailDataBean.getAmount().intValue() / incentiveDetailDataBean.getIncentiveMemberDetails().size());
                    int i = 0;
                    int i2 = 0;
                    for (IncentiveMemberDetailsDataBean incentiveMemberDetailsDataBean : incentiveDetailDataBean.getIncentiveMemberDetails()) {
                        String str = incentiveDetailDataBean.getIncentiveId().toString() + "_" + i2;
                        CheckBox checkBox = this.checkBoxMap.get(str);
                        View view = this.disapprovalReasonMap.get(str);
                        if (view instanceof MaterialTextView) {
                            incentiveMemberDetailsDataBean.setComment(((MaterialTextView) view).getText().toString().replace("Asha Facilitator's comment: ", ""));
                        } else {
                            TextInputLayout textInputLayout = view instanceof TextInputLayout ? (TextInputLayout) view : null;
                            if (checkBox != null && !checkBox.isChecked()) {
                                i++;
                                if (incentiveDetailDataBean.getAmount().intValue() != 0) {
                                    String strTrim2 = (textInputLayout == null || textInputLayout.getEditText() == null) ? "" : textInputLayout.getEditText().getText().toString().trim();
                                    if (strTrim2.isEmpty()) {
                                        SewaUtil.generateToast(this.context, "Please enter disapproval reason for " + incentiveMemberDetailsDataBean.getName() + " in " + incentiveMaster.getIncentiveTitle());
                                        return false;
                                    }
                                    incentiveMemberDetailsDataBean.setComment(strTrim2);
                                    if (incentiveMaster.getMultiplier().booleanValue()) {
                                        incentiveDetailDataBean.setApprovedAmount(incentiveDetailDataBean.getAmount().intValue() - (i * iAbs));
                                    } else {
                                        incentiveDetailDataBean.setApprovedAmount(incentiveDetailDataBean.getAmount().intValue() - iAbs);
                                    }
                                    this.disapprovedAmt += iAbs;
                                } else {
                                    continue;
                                }
                            } else {
                                incentiveMemberDetailsDataBean.setComment("APPROVED");
                            }
                        }
                        i2++;
                    }
                    if (i != incentiveDetailDataBean.getIncentiveMemberDetails().size()) {
                        this.approvedIncentives.add(incentiveDetailDataBean);
                    }
                } else {
                    String string = incentiveDetailDataBean.getIncentiveId().toString();
                    CheckBox checkBox2 = this.checkBoxMap.get(string);
                    View view2 = this.disapprovalReasonMap.get(string);
                    if (view2 instanceof MaterialTextView) {
                        incentiveDetailDataBean.setComment(((MaterialTextView) view2).getText().toString().replace("Asha Facilitator's comment: ", ""));
                    } else {
                        TextInputLayout textInputLayout2 = view2 instanceof TextInputLayout ? (TextInputLayout) view2 : null;
                        if (checkBox2 != null && !checkBox2.isChecked()) {
                            if (incentiveDetailDataBean.getAmount().intValue() == 0) {
                                incentiveDetailDataBean.setComment("APPROVED");
                            } else {
                                if (textInputLayout2 != null && textInputLayout2.getEditText() != null) {
                                    strTrim = textInputLayout2.getEditText().getText().toString().trim();
                                }
                                if (strTrim.isEmpty()) {
                                    SewaUtil.generateToast(this.context, "Please enter disapproval reason for " + this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId()).getIncentiveTitle());
                                    return false;
                                }
                                incentiveDetailDataBean.setComment(strTrim);
                                this.disapprovedAmt += incentiveDetailDataBean.getAmount().intValue();
                            }
                        } else {
                            incentiveDetailDataBean.setComment("APPROVED");
                            this.approvedIncentives.add(incentiveDetailDataBean);
                        }
                    }
                }
            }
        }
        return true;
    }

    private static void sortIncentiveDetails(List<IncentiveDetailDataBean> list) {
        Collections.sort(list, new Comparator() { // from class: com.argusoft.sewa.android.app.activity.FHWIncentiveFlowActivity$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return FHWIncentiveFlowActivity.lambda$sortIncentiveDetails$4(obj, obj2);
            }
        });
    }

    static /* synthetic */ int lambda$sortIncentiveDetails$4(Object obj, Object obj2) {
        IncentiveDetailDataBean incentiveDetailDataBean = (IncentiveDetailDataBean) obj;
        IncentiveDetailDataBean incentiveDetailDataBean2 = (IncentiveDetailDataBean) obj2;
        int iCompareTo = incentiveDetailDataBean.getIncentiveGroup().compareTo(incentiveDetailDataBean2.getIncentiveGroup());
        return iCompareTo != 0 ? iCompareTo : incentiveDetailDataBean.getOrder().compareTo(incentiveDetailDataBean2.getOrder());
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            switch (str2) {
                case "fhwIncentiveScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    addUsersForApprovalToScreen();
                    this.nextButton.setVisibility(0);
                    break;
                case "manualIncentiveScreen":
                    int id = this.users.get(this.selectedPeopleIndex).getId();
                    this.bodyLayoutContainer.removeAllViews();
                    retrieveScreenForFhw(id);
                    break;
                case "ashaSelectionForApprovalScreen":
                    navigateToHomeScreen(false);
                    break;
                case "FORM_SUBMISSION_SCREEN":
                    addCommentScreen();
                    break;
                case "sumAmountScreen":
                    this.approvedIncentives.clear();
                    this.incentiveDisapproveList.clear();
                    setIncentiveApprovalScreen();
                    break;
                default:
                    finish();
                    break;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r4) {
        /*
            r3 = this;
            int r4 = r4.getId()
            int r0 = com.argusoft.sewa.android.app.util.DynamicUtils.ID_NEXT_BUTTON
            if (r4 != r0) goto La4
            r4 = 0
            r3.setSubTitle(r4)
            java.lang.String r4 = r3.screen
            r4.hashCode()
            int r0 = r4.hashCode()
            r1 = 0
            r2 = -1
            switch(r0) {
                case -2100524899: goto L48;
                case -748431087: goto L3d;
                case -698150249: goto L32;
                case -562707964: goto L27;
                case 1555059919: goto L1c;
                default: goto L1a;
            }
        L1a:
            r4 = -1
            goto L52
        L1c:
            java.lang.String r0 = "sumAmountScreen"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L25
            goto L1a
        L25:
            r4 = 4
            goto L52
        L27:
            java.lang.String r0 = "FORM_SUBMISSION_SCREEN"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L30
            goto L1a
        L30:
            r4 = 3
            goto L52
        L32:
            java.lang.String r0 = "ashaSelectionForApprovalScreen"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L3b
            goto L1a
        L3b:
            r4 = 2
            goto L52
        L3d:
            java.lang.String r0 = "manualIncentiveScreen"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L46
            goto L1a
        L46:
            r4 = 1
            goto L52
        L48:
            java.lang.String r0 = "disapprovalScreen"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L51
            goto L1a
        L51:
            r4 = 0
        L52:
            switch(r4) {
                case 0: goto L9c;
                case 1: goto L92;
                case 2: goto L67;
                case 3: goto L60;
                case 4: goto L56;
                default: goto L55;
            }
        L55:
            goto La4
        L56:
            boolean r4 = r3.validateDisapproval()
            if (r4 == 0) goto La4
            r3.setFormSubmissionScreen()
            goto La4
        L60:
            r3.storeIncentiveForm()
            r3.navigateToHomeScreen(r1)
            goto La4
        L67:
            int r4 = r3.selectedPeopleIndex
            if (r4 == r2) goto L8a
            java.util.List<com.argusoft.sewa.android.app.model.UserBean> r0 = r3.users
            int r0 = r0.size()
            if (r4 == r0) goto L8a
            java.util.List<com.argusoft.sewa.android.app.model.UserBean> r4 = r3.users
            int r0 = r3.selectedPeopleIndex
            java.lang.Object r4 = r4.get(r0)
            com.argusoft.sewa.android.app.model.UserBean r4 = (com.argusoft.sewa.android.app.model.UserBean) r4
            int r4 = r4.getId()
            android.widget.LinearLayout r0 = r3.bodyLayoutContainer
            r0.removeAllViews()
            r3.retrieveScreenForFhw(r4)
            goto La4
        L8a:
            android.content.Context r4 = r3.context
            java.lang.String r0 = "Please select an ASHA"
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r4, r0)
            goto La4
        L92:
            boolean r4 = r3.validateCheckBoxesAndDisapprovalReason()
            if (r4 == 0) goto La4
            r3.addCommentScreen()
            goto La4
        L9c:
            android.widget.LinearLayout r4 = r3.bodyLayoutContainer
            r4.removeAllViews()
            r3.setIncentiveApprovalScreen()
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FHWIncentiveFlowActivity.onClick(android.view.View):void");
    }
}
