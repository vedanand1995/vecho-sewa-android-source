package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.pdf.PdfDocument;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.IncentiveDateComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.MenuConstants;
import com.argusoft.sewa.android.app.core.impl.IncentiveServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveDetailDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveMemberDetailsDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveMonthlyDetailsDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.ListOfIncentives;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.IncentiveOccurrenceBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.function.Function;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class IncentivesReportActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FORM_SUBMISSION_SCREEN = "FORM_SUBMISSION_SCREEN";
    private static final String INCENTIVE_COUNT_ENTRY_SCREEN = "INCENTIVE_COUNT_ENTRY_SCREEN";
    public static final String IRON_SYRUP_SCREEN = "IRON_SYRUP_SCREEN";
    private static final String IRON_SYRUP_UI_SCREEN = "IRON_SYRUP_UI_SCREEN";
    private static final String MANUAL_INCENTIVE_SCREEN = "MANUAL_INCENTIVE_SCREEN";
    private static final String MONTH_YEAR_SELECTION_SCREEN = "MONTH_YEAR_SELECTION_SCREEN";
    private static final String PREVIOUS_YEAR_SCREEN = "PREVIOUS_YEAR_SCREEN";
    private static final String ROUTINE_INCENTIVE_SCREEN = "ROUTINE_INCENTIVE_SCREEN";
    private static final String SUM_AMOUNT_SCREEN = "SUM_AMOUNT_SCREEN";
    private static final String SYSTEM_INCENTIVE_SCREEN = "SYSTEM_INCENTIVE_SCREEN";
    public static final String TAG = "IncentiveReportActivity";
    private LinearLayout amountLayout;
    private LinearLayout bodyLayoutContainer;
    private LinearLayout checkBoxListView;
    Dao<FamilyBean, Integer> familyBeanDao;
    List<FamilyDataBean> familyDataBeans;
    SewaFhsServiceImpl fhsService;
    private List<String> filteredIncentives;
    private LinearLayout footerView;
    private LinearLayout globalPanel;
    private MaterialTextView headerTitle;
    Dao<IncentiveMaster, Integer> incentiveMasterDao;
    private Map<Integer, IncentiveMaster> incentiveMasterWithIdMap;
    Dao<IncentiveMonthlyDetailsBean, Integer> incentiveMonthlyDetailBeanDao;
    Dao<IncentiveOccurrenceBean, Integer> incentiveOccurrenceDao;
    IncentiveServiceImpl incentiveService;
    private List<IncentiveDetailDataBean> manualIncentives;
    Dao<MemberBean, Integer> memberBeanDao;
    List<MemberDataBean> memberDataBeans;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableView;
    private PagingListView paginatedListView;
    private List<IncentiveDetailDataBean> routineIncentives;
    private String screen;
    private String searchString;
    private TextInputLayout searchText;
    private IncentiveMonthlyDetailsDataBean selectedIncentive;
    SewaServiceImpl sewaService;
    private List<IncentiveDetailDataBean> systemIncentives;
    private MaterialTextView titleView;
    private final Long limit = 30L;
    private Long offset = 0L;
    private Timer timer = new Timer();
    private final Map<String, List<String>> mapOfSelectedMemberIds = new HashMap();
    private final Map<String, List<String>> mapOfSelectedFamilyIds = new HashMap();
    private List<String> memberIds = new ArrayList();
    private final Map<Integer, LinearLayout> incentiveDetailsIdCardViewMap = new HashMap();
    private final Map<IncentiveMonthlyDetailsBean, Integer> incentiveMonthlyDetailsAmountMap = new HashMap();
    private final Map<String, LinearLayout> systemIncentiveDetailsLayouts = new HashMap();
    private final LinearLayout.LayoutParams layoutParamsForRow = new LinearLayout.LayoutParams(-1, -2);
    private final LinearLayout.LayoutParams incentiveTitleLayoutParam = new LinearLayout.LayoutParams(0, -2, 4.0f);
    private final LinearLayout.LayoutParams incentiveAmountLayoutParam = new LinearLayout.LayoutParams(0, -1, 2.0f);
    private final LinearLayout.LayoutParams incentiveDetailsLayoutParam = new LinearLayout.LayoutParams(-2, -2, 1.0f);
    private final SimpleDateFormat mmmmYyyy = new SimpleDateFormat("MMMM yyyy", Locale.getDefault());
    String type = "";
    List<String> listIncentives = new ArrayList();
    int i = 0;
    List<ListItemDataBean> allListItems = new ArrayList();
    private List<String> familyIds = new ArrayList();
    Map<String, Integer> incentiveTypeCountMap = new LinkedHashMap();
    private boolean isIronSyrupFlowStarted = false;
    private final Map<String, EditText> editTextMap = new LinkedHashMap();
    Integer selectedMemberIndex = -1;
    Integer selectedFamilyIndex = -1;
    private boolean newAdded = false;
    private boolean countMismatch = false;

    static /* synthetic */ void lambda$setIronPillsMemberCheckBoxList$13(AdapterView adapterView, View view, int i, long j) {
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
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        LinearLayout linearLayout = (LinearLayout) this.globalPanel.findViewById(R.id.amountLayoutForMainScreen);
        this.amountLayout = linearLayout;
        linearLayout.setVisibility(8);
        try {
            this.listIncentives = (List) this.incentiveMasterDao.queryBuilder().selectColumns("code").orderBy("incentiveGroup", true).where().eq(FieldNameConstants.MANUAL_TYPE, "LIST").and().isNotNull(FieldNameConstants.QUERY_FOR_LIST).queryRaw().getResults().stream().map(new Function() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IncentivesReportActivity.lambda$initView$0((String[]) obj);
                }
            }).collect(Collectors.toList());
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        setContentView(this.globalPanel);
        setBodyDetail();
    }

    static /* synthetic */ String lambda$initView$0(String[] strArr) {
        return strArr[0];
    }

    private void setBodyDetail() {
        retrieveIncentiveMonthYear();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_INCENTIVE_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m231x6a9fff6e(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$1$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m231x6a9fff6e(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    public void retrieveIncentiveMonthYear() {
        SewaTransformer.loginBean.getUserID();
        List<IncentiveMonthlyDetailsBean> listRetrievePendingIncentives = this.incentiveService.retrievePendingIncentives();
        List<IncentiveMonthlyDetailsBean> listRetrieveApprovedIncentives = this.incentiveService.retrieveApprovedIncentives();
        final ArrayList arrayList = new ArrayList();
        this.bodyLayoutContainer.removeAllViews();
        this.incentiveTypeCountMap.clear();
        this.screen = MONTH_YEAR_SELECTION_SCREEN;
        if (listRetrievePendingIncentives.isEmpty() && listRetrieveApprovedIncentives.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, "Incentive Months not found"));
            this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.MAIN_MENU));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m234x4388fabb(view);
                }
            });
            return;
        }
        this.nextButton.setVisibility(8);
        ArrayList arrayList2 = new ArrayList();
        for (IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean : listRetrievePendingIncentives) {
            if (incentiveMonthlyDetailsBean.getIncentiveDetails() != null) {
                arrayList2.add(new ListItemDataBean(this.mmmmYyyy.format(incentiveMonthlyDetailsBean.getIncentiveMonth())));
                arrayList.add(incentiveMonthlyDetailsBean);
            }
        }
        if (arrayList2.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("No Incentives Details Found")));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select Incentive month year")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList2, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda20
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m235x914872bc(arrayList, adapterView, view, i, j);
            }
        }, null));
        ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        if (listRetrieveApprovedIncentives != null && !listRetrieveApprovedIncentives.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Previous year incentive"));
            for (IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean2 : listRetrieveApprovedIncentives) {
                if (incentiveMonthlyDetailsBean2.getIncentiveDetails() != null) {
                    arrayList4.add(incentiveMonthlyDetailsBean2);
                    arrayList3.add(new ListItemDataBean("Approved Incentive For Month " + this.mmmmYyyy.format(incentiveMonthlyDetailsBean2.getIncentiveMonth())));
                }
            }
        }
        if (!arrayList4.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList3, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda4
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m236xdf07eabd(arrayList4, adapterView, view, i, j);
                }
            }, null));
        }
        if (arrayList2.isEmpty() && arrayList3.isEmpty()) {
            this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.MAIN_MENU));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m237x2cc762be(view);
                }
            });
        }
        resetScroll();
    }

    /* renamed from: lambda$retrieveIncentiveMonthYear$2$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m234x4388fabb(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$retrieveIncentiveMonthYear$3$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m235x914872bc(List list, AdapterView adapterView, View view, int i, long j) {
        retrieveSelectedIncentiveDetails((IncentiveMonthlyDetailsBean) list.get(i));
    }

    /* renamed from: lambda$retrieveIncentiveMonthYear$4$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m236xdf07eabd(List list, AdapterView adapterView, View view, int i, long j) {
        previousYearIncentiveDetails((IncentiveMonthlyDetailsBean) list.get(i));
    }

    /* renamed from: lambda$retrieveIncentiveMonthYear$5$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m237x2cc762be(View view) {
        navigateToHomeScreen(false);
    }

    public void previousYearIncentiveDetails(IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean) {
        if (incentiveMonthlyDetailsBean != null) {
            setPreviousYearIncentiveScreen(incentiveMonthlyDetailsBean);
        }
    }

    private void setPreviousYearIncentiveScreen(final IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean) {
        IncentiveMaster incentiveMaster;
        this.screen = PREVIOUS_YEAR_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.nextButton.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.MAIN_MENU));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel("Incentive Details for") + " " + this.mmmmYyyy.format(incentiveMonthlyDetailsBean.getIncentiveMonth())));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(5, 16, 5, 10);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 20, 0, 10);
        linearLayout.setLayoutParams(layoutParams);
        this.bodyLayoutContainer.addView(linearLayout);
        LinearLayout tableRowLayout = getTableRowLayout();
        tableRowLayout.addView(getTableRowCellText(true, LabelConstants.SERVICE_PROVIDED, GravityCompat.START), this.incentiveTitleLayoutParam);
        tableRowLayout.addView(getTableRowCellText(true, LabelConstants.INCENTIVE_TYPE, 17), this.incentiveAmountLayoutParam);
        tableRowLayout.addView(getTableRowCellText(true, LabelConstants.AMOUNT, 17), this.incentiveAmountLayoutParam);
        tableRowLayout.addView(getTableRowCellText(true, "   ", GravityCompat.END), this.incentiveDetailsLayoutParam);
        linearLayout.addView(tableRowLayout, 0);
        new ArrayList();
        this.incentiveMasterWithIdMap = new HashMap();
        IncentiveMonthlyDetailsDataBean incentiveMonthlyDetailsDataBean = new IncentiveMonthlyDetailsDataBean(incentiveMonthlyDetailsBean);
        this.selectedIncentive = incentiveMonthlyDetailsDataBean;
        final List<IncentiveDetailDataBean> incentiveDetails = incentiveMonthlyDetailsDataBean.getIncentiveDetails();
        if (incentiveDetails == null) {
            SewaUtil.generateToast(this.context, "No Previous Incentive available");
            return;
        }
        for (IncentiveDetailDataBean incentiveDetailDataBean : incentiveDetails) {
            IncentiveMaster incentiveMasterById = this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId());
            this.incentiveMasterWithIdMap.put(incentiveDetailDataBean.getIncentiveId(), incentiveMasterById);
            incentiveDetailDataBean.setIncentiveGroup(incentiveMasterById.getIncentiveGroup());
            incentiveDetailDataBean.setOrder(incentiveMasterById.getOrder());
        }
        sortIncentiveDetails(incentiveDetails);
        String incentiveGroup = null;
        int approvedAmount = 0;
        for (IncentiveDetailDataBean incentiveDetailDataBean2 : incentiveDetails) {
            if (incentiveDetailDataBean2.getApprovedAmount() != 0 && (incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean2.getIncentiveId())) != null) {
                if (incentiveGroup == null || !incentiveGroup.equals(incentiveMaster.getIncentiveGroup())) {
                    incentiveGroup = incentiveMaster.getIncentiveGroup();
                    MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, incentiveMaster.getIncentiveGroup());
                    listTitleView.setGravity(17);
                    this.bodyLayoutContainer.addView(listTitleView);
                }
                LinearLayout linearLayout2 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.incentive_details_system, (ViewGroup) null);
                linearLayout2.setTag(incentiveDetailDataBean2.getId());
                ((MaterialTextView) linearLayout2.findViewById(R.id.service)).setText(incentiveMaster.getIncentiveTitle());
                ((MaterialTextView) linearLayout2.findViewById(R.id.count)).setText(incentiveDetailDataBean2.getVal() != null ? incentiveDetailDataBean2.getVal().toString() : "0");
                ((MaterialTextView) linearLayout2.findViewById(R.id.amount)).setText(String.valueOf(incentiveDetailDataBean2.getApprovedAmount()));
                approvedAmount += incentiveDetailDataBean2.getApprovedAmount();
                ImageView imageView = (ImageView) linearLayout2.findViewById(R.id.downArrow);
                imageView.setTag("a");
                imageView.setVisibility(0);
                addIncentiveDetailsLayoutForEachIncentive((LinearLayout) linearLayout2.findViewById(R.id.memberDetailsLayout), incentiveDetailDataBean2, imageView);
                this.bodyLayoutContainer.addView(linearLayout2);
                this.amountLayout.setVisibility(0);
                ((Button) this.amountLayout.findViewById(R.id.amountButton)).setText("Total Approved Amount is : ₹ " + approvedAmount);
            }
        }
        Button button = new Button(this);
        button.setText(UtilBean.getMyLabel("Print"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(16, 16, 16, 16);
        button.setLayoutParams(layoutParams2);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                this.f$0.m238xda519f2(incentiveDetails, incentiveMonthlyDetailsBean, view);
            }
        });
        this.bodyLayoutContainer.addView(button);
        resetScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: printIncentiveDetails, reason: merged with bridge method [inline-methods] */
    public void m238xda519f2(View view, List<IncentiveDetailDataBean> list, IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean) throws IOException {
        createPdf(list, incentiveMonthlyDetailsBean);
    }

    private void createPdf(List<IncentiveDetailDataBean> list, IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean) throws IOException {
        PdfDocument pdfDocument = new PdfDocument();
        PdfDocument.PageInfo pageInfoCreate = new PdfDocument.PageInfo.Builder(595, 842, 1).create();
        PdfDocument.Page pageStartPage = pdfDocument.startPage(pageInfoCreate);
        Canvas canvas = pageStartPage.getCanvas();
        Paint paint = new Paint();
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setTextSize(18.0f);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        float f = 40;
        canvas.drawText(UtilBean.getMyLabel("Incentive Details For " + this.mmmmYyyy.format(incentiveMonthlyDetailsBean.getIncentiveMonth())), f, f, paint);
        paint.setStrokeWidth(2.0f);
        float f2 = (float) 50;
        canvas.drawLine(f, f2, pageInfoCreate.getPageWidth() - 40, f2, paint);
        paint.setTextSize(16.0f);
        int pageWidth = pageInfoCreate.getPageWidth() + DynamicUtils.LOGIN_BUTTON_ALERT;
        float f3 = 80;
        canvas.drawText(UtilBean.getMyLabel("Incentive Title"), f, f3, paint);
        float f4 = pageWidth;
        canvas.drawText(UtilBean.getMyLabel("Amount ") + "(₹)", f4, f3, paint);
        paint.setStrokeWidth(1.0f);
        float f5 = (float) 95;
        canvas.drawLine(f, f5, (float) (pageInfoCreate.getPageWidth() - 40), f5, paint);
        paint.setTextSize(14.0f);
        int i = 0;
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
        int i2 = 115;
        for (IncentiveDetailDataBean incentiveDetailDataBean : list) {
            if (incentiveDetailDataBean.getApprovedAmount() != 0) {
                int approvedAmount = i + incentiveDetailDataBean.getApprovedAmount();
                float f6 = i2;
                canvas.drawText(this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId()).getIncentiveTitle(), f, f6, paint);
                canvas.drawText("₹" + incentiveDetailDataBean.getApprovedAmount(), f4, f6, paint);
                float f7 = (float) (i2 + 25);
                canvas.drawLine(f, f7, (float) (pageInfoCreate.getPageWidth() - 40), f7, paint);
                i2 += 40;
                i = approvedAmount;
            }
        }
        paint.setTextSize(16.0f);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        canvas.drawText(UtilBean.getMyLabel("Total Approved Amount: ₹" + i), f, i2 + 20, paint);
        pdfDocument.finishPage(pageStartPage);
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString(), "incentive_details_" + this.mmmmYyyy.format(incentiveMonthlyDetailsBean.getIncentiveMonth()) + ".pdf");
        try {
            pdfDocument.writeTo(new FileOutputStream(file));
            SewaUtil.generateToast(this, "PDF saved to " + file.getAbsolutePath());
        } catch (IOException e) {
            Log.e(TAG, e.getMessage(), e);
            SewaUtil.generateToast(this, "Error saving PDF: " + e.getMessage());
        }
        pdfDocument.close();
    }

    public void retrieveSelectedIncentiveDetails(IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean) {
        if (incentiveMonthlyDetailsBean != null) {
            this.nextButton.setVisibility(0);
            this.incentiveMonthlyDetailsAmountMap.put(incentiveMonthlyDetailsBean, 0);
            this.selectedIncentive = new IncentiveMonthlyDetailsDataBean(incentiveMonthlyDetailsBean);
            this.systemIncentives = new LinkedList();
            this.manualIncentives = new LinkedList();
            this.routineIncentives = new LinkedList();
            this.incentiveMasterWithIdMap = new HashMap();
            List<IncentiveDetailDataBean> incentiveDetails = this.selectedIncentive.getIncentiveDetails();
            if (incentiveDetails == null) {
                return;
            }
            for (IncentiveDetailDataBean incentiveDetailDataBean : incentiveDetails) {
                IncentiveMaster incentiveMasterById = this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId());
                this.incentiveMasterWithIdMap.put(incentiveDetailDataBean.getIncentiveId(), incentiveMasterById);
                incentiveDetailDataBean.setIncentiveGroup(incentiveMasterById.getIncentiveGroup());
                incentiveDetailDataBean.setOrder(incentiveMasterById.getOrder());
            }
            sortIncentiveDetails(incentiveDetails);
            for (IncentiveDetailDataBean incentiveDetailDataBean2 : incentiveDetails) {
                IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean2.getIncentiveId());
                if (incentiveMaster.getActive().booleanValue()) {
                    if (incentiveMaster.getSystemCalculated().booleanValue()) {
                        Integer amount = incentiveDetailDataBean2.getAmount();
                        amount.intValue();
                        incentiveDetailDataBean2.setAmount(amount);
                        this.systemIncentives.add(incentiveDetailDataBean2);
                    } else if (!IncentiveMaster.ManualType.valueOf(incentiveMaster.getManualType()).equals(IncentiveMaster.ManualType.DEPENDENT) && !IncentiveMaster.ManualType.valueOf(incentiveMaster.getManualType()).equals(IncentiveMaster.ManualType.LIST)) {
                        if (IncentiveMaster.ManualType.valueOf(incentiveMaster.getManualType()).equals(IncentiveMaster.ManualType.MAMTA_DAY) || IncentiveMaster.ManualType.valueOf(incentiveMaster.getManualType()).equals(IncentiveMaster.ManualType.AM)) {
                            incentiveDetailDataBean2.setAmount(Integer.valueOf(incentiveMaster.getAmount().shortValue()));
                            this.routineIncentives.add(incentiveDetailDataBean2);
                        } else {
                            incentiveDetailDataBean2.setAmount(Integer.valueOf(incentiveMaster.getAmount().shortValue()));
                            this.manualIncentives.add(incentiveDetailDataBean2);
                        }
                    }
                }
            }
        }
        setSystemIncentiveScreen();
    }

    private void setSystemIncentiveScreen() {
        this.screen = SYSTEM_INCENTIVE_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        List<IncentiveDetailDataBean> list = this.systemIncentives;
        if (list == null || list.isEmpty()) {
            setRoutineIncentiveScreen();
            return;
        }
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
        linearLayout.addView(tableRowLayout, 0);
        String incentiveGroup = null;
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.systemIncentives) {
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
            if (incentiveMaster != null) {
                if (incentiveGroup == null || !incentiveGroup.equals(incentiveMaster.getIncentiveGroup())) {
                    incentiveGroup = incentiveMaster.getIncentiveGroup();
                    MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, incentiveMaster.getIncentiveGroup());
                    listTitleView.setGravity(17);
                    this.bodyLayoutContainer.addView(listTitleView);
                }
                LinearLayout linearLayout2 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.incentive_details_system, (ViewGroup) null);
                linearLayout2.setTag(incentiveDetailDataBean.getId());
                if (incentiveDetailDataBean.getIncentiveMemberDetails() != null) {
                    linearLayout2.setOnClickListener(getRowClickListenerForSystemIncentive(linearLayout2));
                }
                ((MaterialTextView) linearLayout2.findViewById(R.id.service)).setText(incentiveMaster.getIncentiveTitle());
                ((MaterialTextView) linearLayout2.findViewById(R.id.count)).setText(incentiveDetailDataBean.getVal() != null ? incentiveDetailDataBean.getVal().toString() : "0");
                ((MaterialTextView) linearLayout2.findViewById(R.id.amount)).setText(incentiveDetailDataBean.getAmount() != null ? incentiveDetailDataBean.getAmount().toString() : "0");
                ImageView imageView = (ImageView) linearLayout2.findViewById(R.id.downArrow);
                imageView.setTag("a");
                imageView.setVisibility(0);
                addIncentiveDetailsLayoutForEachIncentive((LinearLayout) linearLayout2.findViewById(R.id.memberDetailsLayout), incentiveDetailDataBean, imageView);
                this.bodyLayoutContainer.addView(linearLayout2);
            }
        }
        resetScroll();
    }

    private void setRoutineIncentiveScreen() {
        IncentiveOccurrenceBean incentiveOccurrenceBeanRetrieveIncentiveOccurrence;
        this.screen = ROUTINE_INCENTIVE_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        List<IncentiveDetailDataBean> list = this.routineIncentives;
        if (list == null || list.isEmpty()) {
            setManualIncentiveScreen();
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM yyyy", Locale.getDefault());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel("Please enter Incentive Details for") + " " + simpleDateFormat.format(this.selectedIncentive.getIncentiveMonth())));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel("ROUTINE ACTIVITIES")));
        Iterator<IncentiveDetailDataBean> it = this.routineIncentives.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(it.next().getIncentiveId());
            if (incentiveMaster.getOccurrenceFrequency() != null && incentiveMaster.getMaxOccurrence() != null) {
                Long userID = SewaTransformer.loginBean != null ? SewaTransformer.loginBean.getUserID() : null;
                if (userID != null && (incentiveOccurrenceBeanRetrieveIncentiveOccurrence = this.incentiveService.retrieveIncentiveOccurrence(userID, incentiveMaster.getActualId().intValue())) != null && incentiveOccurrenceBeanRetrieveIncentiveOccurrence.getNextOccurrenceOn() != null) {
                    Date dateClearTimeFromDate = UtilBean.clearTimeFromDate(incentiveOccurrenceBeanRetrieveIncentiveOccurrence.getNextOccurrenceOn());
                    Date dateClearTimeFromDate2 = UtilBean.clearTimeFromDate(this.selectedIncentive.getIncentiveMonth());
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(dateClearTimeFromDate);
                    Calendar calendar2 = Calendar.getInstance();
                    calendar2.setTime(dateClearTimeFromDate2);
                    if (calendar.get(2) != calendar2.get(2) || calendar.get(1) != calendar2.get(1)) {
                        it.remove();
                    }
                }
            }
        }
        for (final IncentiveDetailDataBean incentiveDetailDataBean : this.routineIncentives) {
            final IncentiveMaster incentiveMaster2 = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
            LinearLayout linearLayout = this.incentiveDetailsIdCardViewMap.get(incentiveDetailDataBean.getId());
            if (linearLayout == null) {
                linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.incentive_details_manual, (ViewGroup) null);
                this.incentiveDetailsIdCardViewMap.put(incentiveDetailDataBean.getId(), linearLayout);
                ((MaterialTextView) linearLayout.findViewById(R.id.incentiveForHeading)).setText(UtilBean.getMyLabel("Incentive For") + " :");
                ((MaterialTextView) linearLayout.findViewById(R.id.incentiveTitle)).setText(UtilBean.getMyLabel(incentiveMaster2.getIncentiveTitle()));
                ((MaterialTextView) linearLayout.findViewById(R.id.totalMembersHeading)).setText(UtilBean.getMyLabel("Total Members") + " :");
                final MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.amountCalculated);
                materialTextView.setText("0");
                ((RadioGroup) linearLayout.findViewById(R.id.radioGroup)).setOnCheckedChangeListener(getRadioGroupCheckChangeListener(materialTextView, incentiveMaster2, incentiveDetailDataBean));
                ((MaterialTextView) linearLayout.findViewById(R.id.attendedLabelLayout)).setText(UtilBean.getMyLabel("Attended"));
                String manualType = incentiveMaster2.getManualType();
                if (manualType != null) {
                    int i = AnonymousClass4.$SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.valueOf(manualType).ordinal()];
                    if (i == 1) {
                        linearLayout.findViewById(R.id.radioGroupLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.locationLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.dateLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.attendedGroupLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.amountLayout).setVisibility(0);
                        linearLayout.findViewById(R.id.memberCountLayout).setVisibility(0);
                        ((MaterialTextView) linearLayout.findViewById(R.id.totalMembersHeading)).setText(UtilBean.getMyLabel("Total Meetings") + " : ");
                        EditText editText = (EditText) linearLayout.findViewById(R.id.memberCountEditText);
                        editText.setHint(UtilBean.getMyLabel("Enter meeting count"));
                        editText.setText("0");
                        incentiveDetailDataBean.setVal(0);
                        editText.addTextChangedListener(getTextChangeListenerForManualCountInput(incentiveDetailDataBean, materialTextView, (LinearLayout) linearLayout.findViewById(R.id.memberDetailsLayout)));
                    } else if (i == 2) {
                        linearLayout.findViewById(R.id.radioGroupLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.locationLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.dateLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.memberCountLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.multipleMamtaGroupLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.adolescentLayout).setVisibility(8);
                        linearLayout.findViewById(R.id.attendedGroupLayout).setVisibility(0);
                        linearLayout.findViewById(R.id.amountLayout).setVisibility(0);
                        ((MaterialTextView) linearLayout.findViewById(R.id.attendedLabelLayout)).setText(UtilBean.getMyLabel("Attended?"));
                        RadioGroup radioGroup = (RadioGroup) linearLayout.findViewById(R.id.attendedRadioGroup);
                        radioGroup.check(R.id.attendedNo);
                        incentiveDetailDataBean.setAmount(0);
                        materialTextView.setText("0");
                        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda6
                            @Override // android.widget.RadioGroup.OnCheckedChangeListener
                            public final void onCheckedChanged(RadioGroup radioGroup2, int i2) {
                                IncentivesReportActivity.lambda$setRoutineIncentiveScreen$7(incentiveMaster2, incentiveDetailDataBean, materialTextView, radioGroup2, i2);
                            }
                        });
                    }
                }
            }
            this.bodyLayoutContainer.addView(linearLayout);
        }
        resetScroll();
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType;

        static {
            int[] iArr = new int[IncentiveMaster.ManualType.values().length];
            $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType = iArr;
            try {
                iArr[IncentiveMaster.ManualType.MAMTA_DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.AM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.BOOL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.CNT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.CNT_DET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.CNT_DATE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.LIST.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    static /* synthetic */ void lambda$setRoutineIncentiveScreen$7(IncentiveMaster incentiveMaster, IncentiveDetailDataBean incentiveDetailDataBean, MaterialTextView materialTextView, RadioGroup radioGroup, int i) {
        if (i == R.id.attendedYes) {
            short sShortValue = incentiveMaster.getAmount() != null ? incentiveMaster.getAmount().shortValue() : (short) 0;
            incentiveDetailDataBean.setAmount(Integer.valueOf(sShortValue));
            materialTextView.setText(String.valueOf((int) sShortValue));
        } else {
            incentiveDetailDataBean.setAmount(0);
            materialTextView.setText("0");
        }
    }

    private void setManualIncentiveScreen() {
        ViewGroup viewGroup;
        Iterator<IncentiveDetailDataBean> it;
        LinearLayout linearLayout;
        IncentiveOccurrenceBean incentiveOccurrenceBeanRetrieveIncentiveOccurrence;
        this.screen = MANUAL_INCENTIVE_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        List<IncentiveDetailDataBean> list = this.manualIncentives;
        if (list == null || list.isEmpty()) {
            showIncentiveCountEntryScreen();
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM yyyy", Locale.getDefault());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel("Please enter Incentive Details for") + " " + simpleDateFormat.format(this.selectedIncentive.getIncentiveMonth())));
        Iterator<IncentiveDetailDataBean> it2 = this.manualIncentives.iterator();
        while (true) {
            viewGroup = null;
            if (!it2.hasNext()) {
                break;
            }
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(it2.next().getIncentiveId());
            if (incentiveMaster.getOccurrenceFrequency() != null && incentiveMaster.getMaxOccurrence() != null) {
                Long userID = SewaTransformer.loginBean != null ? SewaTransformer.loginBean.getUserID() : null;
                if (userID != null && (incentiveOccurrenceBeanRetrieveIncentiveOccurrence = this.incentiveService.retrieveIncentiveOccurrence(userID, incentiveMaster.getActualId().intValue())) != null && incentiveOccurrenceBeanRetrieveIncentiveOccurrence.getNextOccurrenceOn() != null) {
                    Date dateClearTimeFromDate = UtilBean.clearTimeFromDate(incentiveOccurrenceBeanRetrieveIncentiveOccurrence.getNextOccurrenceOn());
                    Date dateClearTimeFromDate2 = UtilBean.clearTimeFromDate(this.selectedIncentive.getIncentiveMonth());
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(dateClearTimeFromDate);
                    Calendar calendar2 = Calendar.getInstance();
                    calendar2.setTime(dateClearTimeFromDate2);
                    if (calendar.get(2) != calendar2.get(2) || calendar.get(1) != calendar2.get(1)) {
                        it2.remove();
                    }
                }
            }
        }
        Iterator<IncentiveDetailDataBean> it3 = this.manualIncentives.iterator();
        while (it3.hasNext()) {
            IncentiveDetailDataBean next = it3.next();
            IncentiveMaster incentiveMaster2 = this.incentiveMasterWithIdMap.get(next.getIncentiveId());
            LinearLayout linearLayout2 = this.incentiveDetailsIdCardViewMap.get(next.getId());
            if (linearLayout2 == null) {
                LinearLayout linearLayout3 = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.incentive_details_manual, viewGroup);
                this.incentiveDetailsIdCardViewMap.put(next.getId(), linearLayout3);
                LinearLayout linearLayout4 = (LinearLayout) linearLayout3.findViewById(R.id.memberCountLayout);
                LinearLayout linearLayout5 = (LinearLayout) linearLayout3.findViewById(R.id.radioGroupLayout);
                LinearLayout linearLayout6 = (LinearLayout) linearLayout3.findViewById(R.id.memberDetailsLayout);
                LinearLayout linearLayout7 = (LinearLayout) linearLayout3.findViewById(R.id.amountLayout);
                LinearLayout linearLayout8 = (LinearLayout) linearLayout3.findViewById(R.id.dateLayout);
                LinearLayout linearLayout9 = (LinearLayout) linearLayout3.findViewById(R.id.locationLayout);
                LinearLayout linearLayout10 = (LinearLayout) linearLayout3.findViewById(R.id.memberCountLayoutForMamta);
                LinearLayout linearLayout11 = (LinearLayout) linearLayout3.findViewById(R.id.dateLayoutForMamta);
                LinearLayout linearLayout12 = (LinearLayout) linearLayout3.findViewById(R.id.locationLayoutForMamta);
                LinearLayout linearLayout13 = (LinearLayout) linearLayout3.findViewById(R.id.adolescentLayout);
                ((MaterialTextView) linearLayout3.findViewById(R.id.incentiveForHeading)).setText(UtilBean.getMyLabel("Incentive For") + " :");
                ((MaterialTextView) linearLayout3.findViewById(R.id.incentiveTitle)).setText(UtilBean.getMyLabel(incentiveMaster2.getIncentiveTitle()));
                MaterialTextView materialTextView = (MaterialTextView) linearLayout3.findViewById(R.id.totalMembersHeading);
                it = it3;
                if (incentiveMaster2.getCode().equalsIgnoreCase(LabelConstants.CHILD_ORS)) {
                    StringBuilder sb = new StringBuilder();
                    linearLayout = linearLayout11;
                    sb.append(UtilBean.getMyLabel(LabelConstants.TOTAL_FAMILIES));
                    sb.append(" : ");
                    materialTextView.setText(sb.toString());
                } else {
                    linearLayout = linearLayout11;
                    materialTextView.setText(UtilBean.getMyLabel("Total Members") + " : ");
                }
                EditText editText = (EditText) linearLayout3.findViewById(R.id.memberCountEditText);
                if (incentiveMaster2.getCode().equalsIgnoreCase(LabelConstants.CHILD_ORS)) {
                    editText.setHint(UtilBean.getMyLabel(LabelConstants.TOTAL_FAMILIES));
                } else {
                    editText.setHint(UtilBean.getMyLabel(LabelConstants.ENTER_MEMBER_COUNT));
                }
                MaterialTextView materialTextView2 = (MaterialTextView) linearLayout3.findViewById(R.id.amountCalculated);
                materialTextView2.setText(UtilBean.getMyLabel(LabelConstants.N_A));
                ((MaterialTextView) linearLayout3.findViewById(R.id.radioGroupHeading)).setText(UtilBean.getMyLabel(LabelConstants.SELECT));
                ((RadioGroup) linearLayout3.findViewById(R.id.radioGroup)).setOnCheckedChangeListener(getRadioGroupCheckChangeListener(materialTextView2, incentiveMaster2, next));
                ((MaterialTextView) linearLayout3.findViewById(R.id.amountHeading)).setText(UtilBean.getMyLabel("Amount calculated") + " : ");
                editText.addTextChangedListener(getTextChangeListenerForManualCountInput(next, materialTextView2, linearLayout6));
                ((RadioGroup) linearLayout3.findViewById(R.id.attendedRadioGroup)).setOnCheckedChangeListener(getRadioCheckChangeListener(linearLayout9, linearLayout8, linearLayout4, linearLayout7, (LinearLayout) linearLayout3.findViewById(R.id.multipleMamtaGroupLayout), linearLayout13));
                ((RadioGroup) linearLayout3.findViewById(R.id.mamtaRadioGroup)).setOnCheckedChangeListener(getMamtaDiwasRadioListener(linearLayout12, linearLayout, linearLayout10));
                ((MaterialTextView) linearLayout3.findViewById(R.id.dateHeading)).setText(UtilBean.getMyLabel(LabelConstants.DATE) + " : ");
                ((MaterialTextView) linearLayout3.findViewById(R.id.attendedLabelLayout)).setText(UtilBean.getMyLabel("Attended"));
                ((MaterialTextView) linearLayout3.findViewById(R.id.locationHeadingForMamta)).setText(UtilBean.getMyLabel("Attended Location : "));
                ((MaterialTextView) linearLayout3.findViewById(R.id.multipleMamtaLayout)).setText(UtilBean.getMyLabel("Any more Mamta"));
                ((MaterialTextView) linearLayout3.findViewById(R.id.dateHeadingForMamta)).setText(UtilBean.getMyLabel("Date :"));
                ((MaterialTextView) linearLayout3.findViewById(R.id.totalMembersHeadingForMamta)).setText(UtilBean.getMyLabel("Total Members :"));
                ((MaterialTextView) linearLayout3.findViewById(R.id.adolescentHeading)).setText(UtilBean.getMyLabel("Adolescent Screening Done ?"));
                String manualType = incentiveMaster2.getManualType();
                if (manualType != null) {
                    int i = AnonymousClass4.$SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType[IncentiveMaster.ManualType.valueOf(manualType).ordinal()];
                    if (i == 3) {
                        linearLayout4.setVisibility(8);
                        linearLayout8.setVisibility(8);
                        RadioGroup radioGroup = (RadioGroup) linearLayout3.findViewById(R.id.radioGroup);
                        RadioButton radioButton = (RadioButton) linearLayout3.findViewById(R.id.radioButtonNo);
                        if (radioGroup != null && radioButton != null) {
                            radioGroup.check(radioButton.getId());
                            next.setVal(0);
                        }
                    } else if (i == 4 || i == 5) {
                        linearLayout5.setVisibility(8);
                        linearLayout8.setVisibility(8);
                    } else if (i == 6) {
                        linearLayout5.setVisibility(8);
                        linearLayout5.setVisibility(8);
                    } else if (i == 7) {
                        it3 = it;
                        viewGroup = null;
                    }
                }
                linearLayout2 = linearLayout3;
            } else {
                it = it3;
            }
            this.bodyLayoutContainer.addView(linearLayout2);
            it3 = it;
            viewGroup = null;
        }
        resetScroll();
    }

    private boolean validateAndSetManualEntryAnswers() throws SQLException {
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.manualIncentives) {
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
            String manualType = incentiveMaster.getManualType();
            LinearLayout linearLayout = this.incentiveDetailsIdCardViewMap.get(incentiveDetailDataBean.getId());
            if (manualType != null && IncentiveMaster.ManualType.BOOL.equals(IncentiveMaster.ManualType.valueOf(manualType))) {
                RadioGroup radioGroup = (RadioGroup) linearLayout.findViewById(R.id.radioGroup);
                if (radioGroup.getCheckedRadioButtonId() == -1) {
                    SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_SELECT_YES_NO_REQUIRED_ALERT + incentiveMaster.getIncentiveTitle());
                    return false;
                }
                if (radioGroup.getCheckedRadioButtonId() == R.id.radioButtonYes) {
                    incentiveDetailDataBean.setVal(1);
                    incentiveDetailDataBean.setAmount(Integer.valueOf(incentiveMaster.getAmount().shortValue()));
                } else {
                    incentiveDetailDataBean.setVal(0);
                    incentiveDetailDataBean.setAmount(0);
                }
            } else if (manualType != null && IncentiveMaster.ManualType.CNT.equals(IncentiveMaster.ManualType.valueOf(manualType))) {
                EditText editText = (EditText) linearLayout.findViewById(R.id.memberCountEditText);
                if (editText.getText().toString().isEmpty()) {
                    SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_MEMBER_COUNT_REQUIRED_ALERT + incentiveMaster.getIncentiveTitle());
                    return false;
                }
                incentiveDetailDataBean.setVal(Integer.valueOf(editText.getText().toString().trim()));
                if (incentiveMaster.getMultiplier().booleanValue()) {
                    incentiveDetailDataBean.setAmount(Integer.valueOf(Integer.parseInt(editText.getText().toString().trim()) * incentiveMaster.getAmount().shortValue()));
                    if (Integer.parseInt(editText.getText().toString().trim()) > 0) {
                        incentiveDetailDataBean.setStatus("PENDING");
                    }
                } else if (Integer.parseInt(editText.getText().toString().trim()) == 0) {
                    incentiveDetailDataBean.setAmount(0);
                } else {
                    incentiveDetailDataBean.setAmount(Integer.valueOf(incentiveMaster.getAmount().shortValue()));
                    incentiveDetailDataBean.setStatus("PENDING");
                }
            } else if (manualType != null && IncentiveMaster.ManualType.CNT_DATE.equals(IncentiveMaster.ManualType.valueOf(manualType))) {
                EditText editText2 = (EditText) linearLayout.findViewById(R.id.memberCountEditText);
                if (editText2.getText().toString().isEmpty()) {
                    SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_MEMBER_COUNT_REQUIRED_ALERT + incentiveMaster.getIncentiveTitle());
                    return false;
                }
                IncentiveDateComponent incentiveDateComponent = (IncentiveDateComponent) linearLayout.findViewById(R.id.dateEditText);
                incentiveDateComponent.setHint(UtilBean.getMyLabel(LabelConstants.CLICK_TO_SELECT_DATE));
                if (Integer.parseInt(editText2.getText().toString()) > 0) {
                    if (incentiveDateComponent.getSelectedDate() == null) {
                        SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_DATE_REQUIRED_ALERT + incentiveMaster.getIncentiveTitle());
                        return false;
                    }
                    incentiveDetailDataBean.setIncentiveDate(Long.valueOf(incentiveDateComponent.getSelectedDate().getTime()));
                } else if (incentiveDateComponent.getSelectedDate() == null) {
                    incentiveDetailDataBean.setIncentiveDate(null);
                }
                incentiveDetailDataBean.setVal(Integer.valueOf(editText2.getText().toString().trim()));
                if (incentiveMaster.getMultiplier().booleanValue()) {
                    incentiveDetailDataBean.setAmount(Integer.valueOf(Integer.parseInt(editText2.getText().toString().trim()) * incentiveMaster.getAmount().shortValue()));
                    if (Integer.valueOf(editText2.getText().toString().trim()).intValue() > 0) {
                        incentiveDetailDataBean.setStatus("PENDING");
                    }
                } else if (Integer.valueOf(editText2.getText().toString().trim()).intValue() == 0) {
                    incentiveDetailDataBean.setAmount(0);
                } else {
                    incentiveDetailDataBean.setAmount(Integer.valueOf(incentiveMaster.getAmount().shortValue()));
                    incentiveDetailDataBean.setStatus("PENDING");
                }
            }
        }
        return true;
    }

    private void updateIncentiveOccurrenceDetails(IncentiveDetailDataBean incentiveDetailDataBean, IncentiveMaster incentiveMaster) throws SQLException {
        if (incentiveDetailDataBean == null || incentiveMaster == null) {
            Log.e(MenuConstants.INCENTIVE, "Incentive detail data bean is null");
            return;
        }
        Integer occurrenceFrequency = incentiveMaster.getOccurrenceFrequency();
        Integer maxOccurrence = incentiveMaster.getMaxOccurrence();
        if (occurrenceFrequency == null || maxOccurrence == null) {
            Log.e(MenuConstants.INCENTIVE, "Frequency or MaxOccurrence is null for incentive: " + incentiveMaster.getCode());
            return;
        }
        Long userID = SewaTransformer.loginBean != null ? SewaTransformer.loginBean.getUserID() : null;
        if (userID == null) {
            Log.e(MenuConstants.INCENTIVE, "User ID is null.");
            return;
        }
        Date dateClearTimeFromDate = UtilBean.clearTimeFromDate(new Date());
        IncentiveOccurrenceBean incentiveOccurrenceBeanRetrieveIncentiveOccurrence = this.incentiveService.retrieveIncentiveOccurrence(userID, incentiveMaster.getActualId().intValue());
        if (incentiveOccurrenceBeanRetrieveIncentiveOccurrence == null) {
            return;
        }
        Integer val = incentiveDetailDataBean.getVal();
        if (val == null || val.intValue() == 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateClearTimeFromDate);
            calendar.add(2, 1);
            incentiveOccurrenceBeanRetrieveIncentiveOccurrence.setNextOccurrenceOn(calendar.getTime());
            incentiveOccurrenceBeanRetrieveIncentiveOccurrence.setModifiedOn(new Date());
            this.incentiveOccurrenceDao.update((Dao<IncentiveOccurrenceBean, Integer>) incentiveOccurrenceBeanRetrieveIncentiveOccurrence);
            return;
        }
        int iIntValue = incentiveOccurrenceBeanRetrieveIncentiveOccurrence.getYearlyOccurrenceCount() != null ? incentiveOccurrenceBeanRetrieveIncentiveOccurrence.getYearlyOccurrenceCount().intValue() : 0;
        Integer numValueOf = Integer.valueOf(iIntValue);
        numValueOf.getClass();
        if (iIntValue < maxOccurrence.intValue()) {
            incentiveOccurrenceBeanRetrieveIncentiveOccurrence.setLastOccurrenceOn(dateClearTimeFromDate);
            numValueOf.getClass();
            incentiveOccurrenceBeanRetrieveIncentiveOccurrence.setYearlyOccurrenceCount(Integer.valueOf(iIntValue + 1));
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(dateClearTimeFromDate);
            calendar2.add(2, occurrenceFrequency.intValue());
            incentiveOccurrenceBeanRetrieveIncentiveOccurrence.setNextOccurrenceOn(calendar2.getTime());
        }
        incentiveOccurrenceBeanRetrieveIncentiveOccurrence.setModifiedOn(new Date());
        this.incentiveOccurrenceDao.update((Dao<IncentiveOccurrenceBean, Integer>) incentiveOccurrenceBeanRetrieveIncentiveOccurrence);
    }

    private boolean validateAndSetRoutineEntryAnswers() throws NumberFormatException {
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.routineIncentives) {
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
            String manualType = incentiveMaster.getManualType();
            LinearLayout linearLayout = this.incentiveDetailsIdCardViewMap.get(incentiveDetailDataBean.getId());
            if (manualType != null && IncentiveMaster.ManualType.MAMTA_DAY.equals(IncentiveMaster.ManualType.valueOf(manualType))) {
                LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R.id.attendedGroupLayout);
                EditText editText = (EditText) linearLayout.findViewById(R.id.memberCountEditText);
                IncentiveDateComponent incentiveDateComponent = (IncentiveDateComponent) linearLayout.findViewById(R.id.dateEditText);
                IncentiveDateComponent incentiveDateComponent2 = (IncentiveDateComponent) linearLayout.findViewById(R.id.dateEditTextForMamta);
                incentiveDateComponent.setHint(UtilBean.getMyLabel(LabelConstants.CLICK_TO_SELECT_DATE));
                incentiveDateComponent2.setHint(UtilBean.getMyLabel(LabelConstants.CLICK_TO_SELECT_DATE));
                linearLayout2.setVisibility(8);
                try {
                    int i = Integer.parseInt(editText.getText().toString().trim());
                    if (i < 0 || i > 2) {
                        SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_MEETING_COUNT_VALIDATION + incentiveMaster.getIncentiveTitle());
                        return false;
                    }
                    incentiveDetailDataBean.setVal(Integer.valueOf(editText.getText().toString().trim()));
                    if (incentiveMaster.getMultiplier().booleanValue()) {
                        incentiveDetailDataBean.setAmount(Integer.valueOf(Integer.parseInt(editText.getText().toString().trim()) * incentiveMaster.getAmount().shortValue()));
                        if (Integer.valueOf(editText.getText().toString().trim()).intValue() > 0) {
                            incentiveDetailDataBean.setStatus("PENDING");
                        }
                    } else if (Integer.valueOf(editText.getText().toString().trim()).intValue() == 0) {
                        incentiveDetailDataBean.setAmount(0);
                    } else {
                        incentiveDetailDataBean.setAmount(Integer.valueOf(incentiveMaster.getAmount().shortValue()));
                        incentiveDetailDataBean.setStatus("PENDING");
                    }
                } catch (NumberFormatException unused) {
                    SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_MEETING_COUNT_REQUIRED_ALERT + incentiveMaster.getIncentiveTitle());
                    return false;
                }
            } else if (manualType != null && IncentiveMaster.ManualType.AM.equals(IncentiveMaster.ManualType.valueOf(manualType))) {
                RadioGroup radioGroup = (RadioGroup) linearLayout.findViewById(R.id.attendedRadioGroup);
                if (radioGroup.getCheckedRadioButtonId() == -1) {
                    SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_SELECT_YES_NO_REQUIRED_ALERT + incentiveMaster.getIncentiveTitle());
                    return false;
                }
                if (radioGroup.getCheckedRadioButtonId() == R.id.attendedYes) {
                    incentiveDetailDataBean.setVal(1);
                    incentiveDetailDataBean.setAmount(Integer.valueOf(Integer.parseInt(incentiveMaster.getAmount().toString())));
                    incentiveDetailDataBean.setStatus("PENDING");
                } else {
                    incentiveDetailDataBean.setVal(0);
                    incentiveDetailDataBean.setAmount(0);
                }
            }
        }
        return true;
    }

    private RadioGroup.OnCheckedChangeListener getRadioGroupCheckChangeListener(final MaterialTextView materialTextView, final IncentiveMaster incentiveMaster, IncentiveDetailDataBean incentiveDetailDataBean) {
        return new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda7
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                IncentivesReportActivity.lambda$getRadioGroupCheckChangeListener$8(materialTextView, incentiveMaster, radioGroup, i);
            }
        };
    }

    static /* synthetic */ void lambda$getRadioGroupCheckChangeListener$8(MaterialTextView materialTextView, IncentiveMaster incentiveMaster, RadioGroup radioGroup, int i) {
        if (i == R.id.radioButtonYes) {
            materialTextView.setText(incentiveMaster.getAmount() != null ? String.valueOf(incentiveMaster.getAmount()) : LabelConstants.N_A);
        } else {
            materialTextView.setText("0");
        }
    }

    private RadioGroup.OnCheckedChangeListener getRadioCheckChangeListener(final LinearLayout linearLayout, final LinearLayout linearLayout2, final LinearLayout linearLayout3, final LinearLayout linearLayout4, final LinearLayout linearLayout5, final LinearLayout linearLayout6) {
        return new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda9
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                IncentivesReportActivity.lambda$getRadioCheckChangeListener$9(linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, radioGroup, i);
            }
        };
    }

    static /* synthetic */ void lambda$getRadioCheckChangeListener$9(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, RadioGroup radioGroup, int i) {
        if (i == R.id.attendedYes) {
            linearLayout.setVisibility(0);
            linearLayout2.setVisibility(0);
            linearLayout3.setVisibility(0);
            linearLayout4.setVisibility(0);
            linearLayout5.setVisibility(0);
            linearLayout6.setVisibility(0);
            return;
        }
        linearLayout.setVisibility(8);
        linearLayout2.setVisibility(8);
        linearLayout3.setVisibility(8);
        linearLayout4.setVisibility(8);
        linearLayout5.setVisibility(8);
        linearLayout6.setVisibility(8);
    }

    private RadioGroup.OnCheckedChangeListener getMamtaDiwasRadioListener(final LinearLayout linearLayout, final LinearLayout linearLayout2, final LinearLayout linearLayout3) {
        return new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda8
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                IncentivesReportActivity.lambda$getMamtaDiwasRadioListener$10(linearLayout, linearLayout2, linearLayout3, radioGroup, i);
            }
        };
    }

    static /* synthetic */ void lambda$getMamtaDiwasRadioListener$10(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RadioGroup radioGroup, int i) {
        if (i == R.id.mamtaRadioButtonYes) {
            linearLayout.setVisibility(0);
            linearLayout2.setVisibility(0);
            linearLayout3.setVisibility(0);
        } else {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(8);
            linearLayout3.setVisibility(8);
        }
    }

    private TextWatcher getTextChangeListenerForManualCountInput(final IncentiveDetailDataBean incentiveDetailDataBean, final MaterialTextView materialTextView, final LinearLayout linearLayout) {
        return new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                linearLayout.removeAllViews();
                IncentivesReportActivity.this.bodyLayoutContainer.removeView(linearLayout);
                materialTextView.setText(UtilBean.getMyLabel(LabelConstants.N_A));
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int iValueOf;
                if (charSequence.toString().trim().isEmpty()) {
                    return;
                }
                IncentiveMaster incentiveMaster = (IncentiveMaster) IncentivesReportActivity.this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
                if (incentiveMaster.getMultiplier().booleanValue()) {
                    iValueOf = Integer.valueOf(Integer.parseInt(charSequence.toString()) * incentiveMaster.getAmount().shortValue());
                } else if (Integer.parseInt(charSequence.toString()) == 0) {
                    iValueOf = 0;
                } else {
                    iValueOf = Integer.valueOf(incentiveMaster.getAmount().shortValue());
                }
                materialTextView.setText(String.valueOf(iValueOf));
                incentiveDetailDataBean.setAmount(iValueOf);
                if (incentiveMaster.getManualType().equalsIgnoreCase("CNT_DET")) {
                    linearLayout.removeAllViews();
                    linearLayout.addView(LayoutInflater.from(IncentivesReportActivity.this.context).inflate(R.layout.incentive_details_manual_member_header, (ViewGroup) null));
                    ArrayList arrayList = new ArrayList();
                    for (int i4 = 0; i4 < Integer.parseInt(charSequence.toString()); i4++) {
                        LinearLayout linearLayout2 = (LinearLayout) LayoutInflater.from(IncentivesReportActivity.this.context).inflate(R.layout.incentive_details_manual_member, (ViewGroup) null);
                        linearLayout.addView(linearLayout2);
                        arrayList.add(linearLayout2);
                    }
                }
            }
        };
    }

    private void addIncentiveDetailsLayoutForEachIncentive(LinearLayout linearLayout, IncentiveDetailDataBean incentiveDetailDataBean, ImageView imageView) {
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(10, 15, 10, 15);
        linearLayout2.setLayoutParams(this.layoutParamsForRow);
        if (incentiveDetailDataBean.getIncentiveMemberDetails() != null && !incentiveDetailDataBean.getIncentiveMemberDetails().isEmpty()) {
            linearLayout2.addView(getIncentiveDetailTableForEachIncentive(incentiveDetailDataBean));
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(4);
        }
        linearLayout2.setVisibility(8);
        linearLayout.addView(linearLayout2);
        this.systemIncentiveDetailsLayouts.put(incentiveDetailDataBean.getId().toString(), linearLayout2);
    }

    private LinearLayout getIncentiveDetailTableForEachIncentive(IncentiveDetailDataBean incentiveDetailDataBean) {
        String str;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        int i = 15;
        linearLayout.setPadding(5, 15, 5, 15);
        linearLayout.setBackgroundResource(R.drawable.box_background);
        linearLayout.setLayoutParams(new TableLayout.LayoutParams(-1, -2));
        int i2 = 0;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2, 2.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.gravity = 17;
        layoutParams2.gravity = 17;
        layoutParams3.gravity = 17;
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        int i3 = 10;
        linearLayout2.setPadding(10, 15, 10, 15);
        linearLayout2.setLayoutParams(this.layoutParamsForRow);
        MaterialTextView materialTextView = new MaterialTextView(this);
        MaterialTextView materialTextView2 = new MaterialTextView(this);
        MaterialTextView materialTextView3 = new MaterialTextView(this);
        materialTextView.setGravity(17);
        materialTextView2.setGravity(17);
        materialTextView3.setGravity(17);
        materialTextView.setText(UtilBean.getMyLabel(LabelConstants.BENEFICIARY_NAME));
        materialTextView2.setText(UtilBean.getMyLabel(LabelConstants.SERVICE_DATE));
        String str2 = LabelConstants.FAMILY_PLANNING_METHOD;
        materialTextView3.setText(UtilBean.getMyLabel(LabelConstants.FAMILY_PLANNING_METHOD));
        materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
        materialTextView2.setTypeface(Typeface.DEFAULT_BOLD);
        materialTextView3.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout2.addView(materialTextView2, layoutParams);
        linearLayout2.addView(materialTextView, layoutParams2);
        IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(LabelConstants.FPM_TEMP);
        if (incentiveDetailDataBean.getIncentiveId().equals(incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getActualId())) {
            linearLayout2.addView(materialTextView3, layoutParams3);
        }
        linearLayout.addView(linearLayout2, 0);
        Iterator<IncentiveMemberDetailsDataBean> it = incentiveDetailDataBean.getIncentiveMemberDetails().iterator();
        int i4 = 1;
        while (it.hasNext()) {
            IncentiveMemberDetailsDataBean next = it.next();
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(i2);
            linearLayout3.setPadding(i3, i, i3, i);
            linearLayout3.setLayoutParams(this.layoutParamsForRow);
            MaterialTextView materialTextView4 = new MaterialTextView(this);
            MaterialTextView materialTextView5 = new MaterialTextView(this);
            MaterialTextView materialTextView6 = new MaterialTextView(this);
            Iterator<IncentiveMemberDetailsDataBean> it2 = it;
            materialTextView4.setGravity(17);
            materialTextView5.setGravity(17);
            materialTextView6.setGravity(17);
            if (i4 == 0) {
                materialTextView4.setText(UtilBean.getMyLabel(LabelConstants.BENEFICIARY_NAME));
                materialTextView5.setText(UtilBean.getMyLabel(LabelConstants.SERVICE_DATE));
                materialTextView6.setText(UtilBean.getMyLabel(str2));
                str = str2;
            } else {
                StringBuilder sb = new StringBuilder();
                str = str2;
                sb.append(next.getName());
                sb.append("(");
                sb.append(next.getUniqueHealthId());
                sb.append(")");
                materialTextView4.setText(sb.toString());
                materialTextView5.setText(convertDate(next.getServiceDate()));
                materialTextView6.setText(next.getFamilyPlanningMethod());
            }
            linearLayout3.addView(materialTextView4, layoutParams2);
            linearLayout3.addView(materialTextView5, layoutParams);
            if (incentiveDetailDataBean.getIncentiveId().equals(incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getActualId())) {
                linearLayout3.addView(materialTextView6, layoutParams3);
            }
            linearLayout.addView(linearLayout3, i4);
            i4++;
            it = it2;
            str2 = str;
            i = 15;
            i2 = 0;
            i3 = 10;
        }
        return linearLayout;
    }

    private String convertDate(String str) {
        try {
            return new SimpleDateFormat("dd/MM/yyyy").format(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US).parse(str));
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    private View.OnClickListener getRowClickListenerForSystemIncentive(final LinearLayout linearLayout) {
        return new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m230xe2e2458(linearLayout, view);
            }
        };
    }

    /* renamed from: lambda$getRowClickListenerForSystemIncentive$11$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m230xe2e2458(LinearLayout linearLayout, View view) {
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.downArrow);
        LinearLayout linearLayout2 = this.systemIncentiveDetailsLayouts.get(linearLayout.getTag().toString());
        if (linearLayout2 == null) {
            SewaUtil.generateToast(this.context, LabelConstants.INCENTIVE_DETAILS_NOT_FOUND);
            return;
        }
        if (imageView.getTag().equals("a")) {
            imageView.setImageDrawable(ContextCompat.getDrawable(this.context, R.drawable.ic_arrow_up));
            imageView.setTag("b");
            linearLayout2.setVisibility(0);
        } else {
            imageView.setImageDrawable(ContextCompat.getDrawable(this.context, R.drawable.ic_arrow_down));
            imageView.setTag("a");
            linearLayout2.setVisibility(8);
        }
    }

    private LinearLayout getTableRowLayout() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(10, 15, 10, 15);
        linearLayout.setLayoutParams(this.layoutParamsForRow);
        return linearLayout;
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

    private void addCommentScreen() {
        Iterator<String> it;
        HashSet hashSet;
        IncentiveDetailDataBean incentiveDetailDataBean;
        HashSet hashSet2;
        this.screen = SUM_AMOUNT_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ASHA_FORM_SUBMIT_MSG + this.mmmmYyyy.format(this.selectedIncentive.getIncentiveMonth())));
        IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(LabelConstants.RA_MAMTA_DIVAS);
        IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode2 = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(LabelConstants.VACCINATION_CM);
        ArrayList<IncentiveDetailDataBean> arrayList = new ArrayList();
        HashSet hashSet3 = new HashSet(Arrays.asList("NDCP_TB_DRUG_RESISTANT_CP", "NDCP_TB_DRUG_RESISTANT", "NDCP_TB_PREVENTIVE"));
        double dIntValue = 0.0d;
        double dIntValue2 = 0.0d;
        for (IncentiveDetailDataBean incentiveDetailDataBean2 : this.systemIncentives) {
            dIntValue += incentiveDetailDataBean2.getAmount().intValue();
            if (incentiveDetailDataBean2.getAmount().intValue() > 0) {
                dIntValue2 += incentiveDetailDataBean2.getAmount().intValue();
            }
            arrayList.add(incentiveDetailDataBean2);
        }
        int i = 0;
        boolean z = false;
        for (IncentiveDetailDataBean incentiveDetailDataBean3 : this.manualIncentives) {
            if (!z) {
                z = (incentiveDetailDataBean3.getIncentiveId() != incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getActualId() || incentiveDetailDataBean3.getAmount().equals(Integer.valueOf(i)) || incentiveDetailDataBean3.getIsAbsent().booleanValue()) ? false : true;
            }
            boolean z2 = z;
            dIntValue += incentiveDetailDataBean3.getAmount().intValue();
            if (incentiveDetailDataBean3.getAmount().intValue() > 0) {
                dIntValue2 += incentiveDetailDataBean3.getAmount().intValue();
            }
            arrayList.add(incentiveDetailDataBean3);
            z = z2;
            i = 0;
        }
        for (IncentiveDetailDataBean incentiveDetailDataBean4 : this.routineIncentives) {
            dIntValue += incentiveDetailDataBean4.getAmount().intValue();
            if (incentiveDetailDataBean4.getAmount().intValue() > 0) {
                dIntValue2 += incentiveDetailDataBean4.getAmount().intValue();
            }
            arrayList.add(incentiveDetailDataBean4);
        }
        List<IncentiveDetailDataBean> incentiveDetails = this.selectedIncentive.getIncentiveDetails();
        if (z) {
            for (IncentiveDetailDataBean incentiveDetailDataBean5 : incentiveDetails) {
                if (incentiveDetailDataBean5.getIncentiveId() == incentiveMasterRetrieveIncentiveMasterByIncentiveCode2.getActualId()) {
                    incentiveDetailDataBean5.setAmount(Integer.valueOf(incentiveMasterRetrieveIncentiveMasterByIncentiveCode2.getAmount().shortValue()));
                    hashSet2 = hashSet3;
                    dIntValue += incentiveDetailDataBean5.getAmount().intValue();
                    if (incentiveDetailDataBean5.getAmount().intValue() > 0) {
                        dIntValue2 += incentiveDetailDataBean5.getAmount().intValue();
                    }
                    arrayList.add(incentiveDetailDataBean5);
                } else {
                    hashSet2 = hashSet3;
                }
                hashSet3 = hashSet2;
            }
        }
        HashSet hashSet4 = hashSet3;
        Iterator<String> it2 = this.listIncentives.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode3 = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(next);
            HashSet hashSet5 = hashSet4;
            boolean zContains = hashSet5.contains(next);
            boolean z3 = ((this.mapOfSelectedMemberIds.get(next) == null || this.mapOfSelectedMemberIds.get(next).isEmpty()) && (this.mapOfSelectedFamilyIds.get(next) == null || this.mapOfSelectedFamilyIds.get(next).isEmpty())) ? false : true;
            Iterator<IncentiveDetailDataBean> it3 = incentiveDetails.iterator();
            HashSet hashSet6 = hashSet5;
            while (true) {
                if (!it3.hasNext()) {
                    it = it2;
                    hashSet = hashSet6;
                    break;
                }
                IncentiveDetailDataBean next2 = it3.next();
                it = it2;
                hashSet = hashSet6;
                if (next2.getIncentiveId() == incentiveMasterRetrieveIncentiveMasterByIncentiveCode3.getActualId()) {
                    if (z3) {
                        next2.setAmount(Integer.valueOf(incentiveMasterRetrieveIncentiveMasterByIncentiveCode3.getAmount().shortValue()));
                        next2.setStatus("PENDING");
                        incentiveDetailDataBean = next2;
                    } else {
                        incentiveDetailDataBean = next2;
                        incentiveDetailDataBean.setAmount(0);
                    }
                    arrayList.add(incentiveDetailDataBean);
                    if (!zContains || z3) {
                        dIntValue += incentiveDetailDataBean.getAmount().intValue();
                        if (incentiveDetailDataBean.getAmount().intValue() > 0) {
                            dIntValue2 += incentiveDetailDataBean.getAmount().intValue();
                        }
                    }
                } else {
                    it2 = it;
                    hashSet6 = hashSet;
                }
            }
            it2 = it;
            hashSet4 = hashSet;
        }
        HashSet hashSet7 = hashSet4;
        for (IncentiveDetailDataBean incentiveDetailDataBean6 : incentiveDetails) {
            if (incentiveDetailDataBean6.getIncentiveId().equals(incentiveMasterRetrieveIncentiveMasterByIncentiveCode2.getActualId()) && !z) {
                incentiveDetailDataBean6.setAmount(0);
            } else if (incentiveDetailDataBean6.getIncentiveId().equals(incentiveMasterRetrieveIncentiveMasterByIncentiveCode2.getActualId()) && z) {
                incentiveDetailDataBean6.setStatus("PENDING");
            }
        }
        this.selectedIncentive.setIncentiveDetails(incentiveDetails);
        Iterator<String> it4 = hashSet7.iterator();
        while (it4.hasNext()) {
            IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode4 = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(it4.next());
            Iterator it5 = arrayList.iterator();
            while (true) {
                if (it5.hasNext()) {
                    if (Objects.equals(((IncentiveDetailDataBean) it5.next()).getIncentiveId(), incentiveMasterRetrieveIncentiveMasterByIncentiveCode4.getActualId())) {
                        break;
                    }
                } else {
                    Iterator<IncentiveDetailDataBean> it6 = incentiveDetails.iterator();
                    while (true) {
                        if (it6.hasNext()) {
                            IncentiveDetailDataBean next3 = it6.next();
                            if (Objects.equals(next3.getIncentiveId(), incentiveMasterRetrieveIncentiveMasterByIncentiveCode4.getActualId())) {
                                next3.setAmount(0);
                                arrayList.add(next3);
                                break;
                            }
                        }
                    }
                }
            }
        }
        double dShortValue = 0.0d;
        for (String str : hashSet7) {
            IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode5 = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(str);
            if (this.mapOfSelectedMemberIds.get(str) == null || this.mapOfSelectedMemberIds.get(str).isEmpty()) {
                if (this.mapOfSelectedFamilyIds.get(str) == null || this.mapOfSelectedFamilyIds.get(str).isEmpty()) {
                    dShortValue += incentiveMasterRetrieveIncentiveMasterByIncentiveCode5.getAmount().shortValue() / 2.0d;
                }
            }
        }
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(this.context, "Incentive-wise Amounts:");
        materialTextViewGenerateSubTitleView.setPadding(0, 16, 0, 16);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView);
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
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
        double d = dShortValue;
        textView3.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
        textView3.setText("State Top-up 50%");
        textView3.setLines(2);
        textView3.setTypeface(null, 1);
        textView3.setTextAlignment(6);
        textView3.setTextSize(14.0f);
        linearLayout2.addView(textView);
        linearLayout2.addView(textView2);
        linearLayout2.addView(textView3);
        Iterator<IncentiveDetailDataBean> it7 = this.routineIncentives.iterator();
        while (true) {
            if (!it7.hasNext()) {
                break;
            }
            if (it7.next().getAmount().intValue() > 0) {
                MaterialTextView materialTextViewGenerateSubTitleView2 = MyStaticComponents.generateSubTitleView(this.context, "(Routine Activities)");
                materialTextViewGenerateSubTitleView2.setGravity(17);
                materialTextViewGenerateSubTitleView2.setPadding(0, 16, 0, 8);
                linearLayout.addView(materialTextViewGenerateSubTitleView2);
                addTableHeader(linearLayout);
                Iterator<IncentiveDetailDataBean> it8 = this.routineIncentives.iterator();
                while (it8.hasNext()) {
                    addIncentiveRow(linearLayout, it8.next(), hashSet7);
                }
            }
        }
        MaterialTextView materialTextViewGenerateSubTitleView3 = MyStaticComponents.generateSubTitleView(this.context, "(RCH)");
        materialTextViewGenerateSubTitleView3.setGravity(17);
        materialTextViewGenerateSubTitleView3.setPadding(0, 24, 0, 8);
        linearLayout.addView(materialTextViewGenerateSubTitleView3);
        addTableHeader(linearLayout);
        for (IncentiveDetailDataBean incentiveDetailDataBean7 : arrayList) {
            if (!this.routineIncentives.contains(incentiveDetailDataBean7)) {
                addIncentiveRow(linearLayout, incentiveDetailDataBean7, hashSet7);
            }
        }
        this.bodyLayoutContainer.addView(linearLayout);
        View view = new View(this.context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (this.context.getResources().getDisplayMetrics().density * 16.0f)));
        this.bodyLayoutContainer.addView(view);
        double dIntValue3 = 0.0d;
        while (this.routineIncentives.iterator().hasNext()) {
            dIntValue3 += r1.next().getAmount().intValue();
        }
        double dMin = Math.min(dIntValue3, 2000.0d);
        double d2 = (dIntValue - dIntValue3) + dMin;
        double d3 = (((dIntValue2 - dIntValue3) + dMin) / 2.0d) + d;
        MaterialTextView materialTextViewGenerateBoldAnswerView = MyStaticComponents.generateBoldAnswerView(this.context, "NHM Incentive Total: ₹ " + String.format("%.1f", Double.valueOf(d2)) + "/-");
        MaterialTextView materialTextViewGenerateBoldAnswerView2 = MyStaticComponents.generateBoldAnswerView(this.context, "State 50% Top-Up Total: ₹ " + String.format("%.1f", Double.valueOf(d3)) + "/-");
        MaterialTextView materialTextViewGenerateBoldAnswerView3 = MyStaticComponents.generateBoldAnswerView(this.context, "State Fixed Amount: ₹ 2500/-");
        MaterialTextView materialTextViewGenerateSubTitleView4 = MyStaticComponents.generateSubTitleView(this.context, "Total Amount: ₹ " + String.format("%.1f", Double.valueOf(d2 + d3 + 2500)) + "/-");
        this.bodyLayoutContainer.addView(materialTextViewGenerateBoldAnswerView);
        this.bodyLayoutContainer.addView(materialTextViewGenerateBoldAnswerView2);
        this.bodyLayoutContainer.addView(materialTextViewGenerateBoldAnswerView3);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView4);
        resetScroll();
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
        String incentiveTitle;
        double dShortValue;
        double d;
        IncentiveMaster incentiveMasterById = this.incentiveService.getIncentiveMasterById(incentiveDetailDataBean.getIncentiveId());
        boolean zContains = set.contains(incentiveMasterById != null ? incentiveMasterById.getCode() : "");
        if (incentiveDetailDataBean.getAmount().intValue() > 0 || zContains) {
            if (incentiveMasterById != null) {
                incentiveTitle = incentiveMasterById.getIncentiveTitle();
            } else {
                incentiveTitle = "Incentive ID: " + incentiveDetailDataBean.getIncentiveId();
            }
            int iIntValue = incentiveDetailDataBean.getAmount().intValue();
            if (!zContains) {
                dShortValue = iIntValue;
            } else if (incentiveMasterById != null) {
                dShortValue = incentiveMasterById.getAmount().shortValue();
            } else {
                d = 0.0d;
                LinearLayout linearLayout2 = new LinearLayout(this.context);
                linearLayout2.setOrientation(0);
                linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                linearLayout2.setPadding(8, 8, 8, 8);
                TextView textView = new TextView(this.context);
                textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.5f));
                textView.setText(incentiveTitle);
                textView.setTextSize(14.0f);
                TextView textView2 = new TextView(this.context);
                textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
                textView2.setText("₹ " + String.format("%.1f", Double.valueOf(iIntValue)) + "/-");
                textView2.setTextAlignment(6);
                textView2.setTextSize(14.0f);
                TextView textView3 = new TextView(this.context);
                textView3.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
                textView3.setText("₹ " + String.format("%.1f", Double.valueOf(d)) + "/-");
                textView3.setTextAlignment(6);
                textView3.setTextSize(14.0f);
                linearLayout2.addView(textView);
                linearLayout2.addView(textView2);
                linearLayout2.addView(textView3);
                linearLayout.addView(linearLayout2);
            }
            d = dShortValue / 2.0d;
            LinearLayout linearLayout22 = new LinearLayout(this.context);
            linearLayout22.setOrientation(0);
            linearLayout22.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            linearLayout22.setPadding(8, 8, 8, 8);
            TextView textView4 = new TextView(this.context);
            textView4.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.5f));
            textView4.setText(incentiveTitle);
            textView4.setTextSize(14.0f);
            TextView textView22 = new TextView(this.context);
            textView22.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
            textView22.setText("₹ " + String.format("%.1f", Double.valueOf(iIntValue)) + "/-");
            textView22.setTextAlignment(6);
            textView22.setTextSize(14.0f);
            TextView textView32 = new TextView(this.context);
            textView32.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.25f));
            textView32.setText("₹ " + String.format("%.1f", Double.valueOf(d)) + "/-");
            textView32.setTextAlignment(6);
            textView32.setTextSize(14.0f);
            linearLayout22.addView(textView4);
            linearLayout22.addView(textView22);
            linearLayout22.addView(textView32);
            linearLayout.addView(linearLayout22);
        }
    }

    public void setFormSubmissionScreen() {
        this.screen = FORM_SUBMISSION_SCREEN;
        this.nextButton.setText(GlobalTypes.EVENT_SUBMIT);
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.YOUR_FORM_IS_COMPLETE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.COMPLETED_INCENTIVE_FORM)));
        resetScroll();
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
        storeAnswerBean.setAnswerEntity(FormConstants.FORM_TYPE_SYSTEM_INCENTIVE);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setBeneficiaryName("Incentive Entry");
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setTaskName(this.mmmmYyyy.format(this.selectedIncentive.getIncentiveMonth()));
        loggerBean.setFormType(FormConstants.FORM_TYPE_SYSTEM_INCENTIVE);
        IncentiveMonthlyDetailsDataBean incentiveMonthlyDetailsDataBean = new IncentiveMonthlyDetailsDataBean();
        incentiveMonthlyDetailsDataBean.setId(this.selectedIncentive.getId());
        incentiveMonthlyDetailsDataBean.setIncentiveDetails(this.selectedIncentive.getIncentiveDetails());
        HashMap map = new HashMap();
        for (Map.Entry<String, List<String>> entry : this.mapOfSelectedMemberIds.entrySet()) {
            try {
                ArrayList arrayList = new ArrayList();
                for (MemberBean memberBean : this.memberBeanDao.queryBuilder().where().in("actualId", entry.getValue()).query()) {
                    ListOfIncentives listOfIncentives = new ListOfIncentives();
                    listOfIncentives.setFamily(Boolean.FALSE);
                    listOfIncentives.setMemberFullName(UtilBean.getMemberFullName(memberBean));
                    listOfIncentives.setMemberId(memberBean.getActualId());
                    listOfIncentives.setUniqueHealthId(memberBean.getUniqueHealthId());
                    listOfIncentives.setIncentiveMonthDate(Calendar.getInstance().getTime());
                    arrayList.add(listOfIncentives);
                }
                map.put(entry.getKey(), arrayList);
            } catch (SQLException e) {
                Log.e(TAG, e.getMessage(), e);
            }
        }
        for (Map.Entry<String, List<String>> entry2 : this.mapOfSelectedFamilyIds.entrySet()) {
            try {
                ArrayList arrayList2 = new ArrayList();
                for (FamilyBean familyBean : this.familyBeanDao.queryBuilder().where().in("actualId", entry2.getValue()).query()) {
                    ListOfIncentives listOfIncentives2 = new ListOfIncentives();
                    listOfIncentives2.setFamily(Boolean.TRUE);
                    listOfIncentives2.setFamilyId(familyBean.getId());
                    listOfIncentives2.setFamilyUniqueId(familyBean.getFamilyId());
                    listOfIncentives2.setIncentiveMonthDate(Calendar.getInstance().getTime());
                    arrayList2.add(listOfIncentives2);
                }
                map.put(entry2.getKey(), arrayList2);
            } catch (SQLException e2) {
                Log.e(TAG, e2.getMessage(), e2);
            }
        }
        incentiveMonthlyDetailsDataBean.setListOfIncentives(map);
        this.selectedIncentive.setStatus(IncentiveMonthlyDetailsBean.Status.ASHA_APPROVED);
        updateIncentiveDetailsBean(this.selectedIncentive.getId());
        for (IncentiveDetailDataBean incentiveDetailDataBean : this.manualIncentives) {
            IncentiveMaster incentiveMaster = this.incentiveMasterWithIdMap.get(incentiveDetailDataBean.getIncentiveId());
            if (incentiveMaster.getOccurrenceFrequency() != null) {
                try {
                    updateIncentiveOccurrenceDetails(incentiveDetailDataBean, incentiveMaster);
                } catch (SQLException e3) {
                    Log.e(TAG, "Error updating occurrence details: " + e3.getMessage(), e3);
                }
            }
        }
        storeAnswerBean.setAnswer(new Gson().toJson(incentiveMonthlyDetailsDataBean));
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        this.sewaService.createLoggerBean(loggerBean);
    }

    private void updateIncentiveDetailsBean(Integer num) {
        try {
            IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBeanQueryForFirst = this.incentiveMonthlyDetailBeanDao.queryBuilder().where().eq("actualId", num).queryForFirst();
            incentiveMonthlyDetailsBeanQueryForFirst.setStatus(IncentiveMonthlyDetailsBean.Status.ASHA_APPROVED);
            this.incentiveMonthlyDetailBeanDao.update((Dao<IncentiveMonthlyDetailsBean, Integer>) incentiveMonthlyDetailsBeanQueryForFirst);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void addSelectedMemberScreen() {
        AdapterView.OnItemClickListener onItemClickListener;
        IncentivesReportActivity incentivesReportActivity;
        Map<String, List<String>> map;
        String str;
        Map<String, MemberDataBean> map2;
        String str2;
        Map<String, MemberDataBean> map3;
        StringBuilder sb;
        String strTrim;
        String string;
        String str3 = " ";
        this.bodyLayoutContainer.removeAllViews();
        this.screen = IRON_SYRUP_SCREEN;
        List<IncentiveDetailDataBean> incentiveDetails = this.selectedIncentive.getIncentiveDetails();
        IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(this.type);
        ArrayList arrayList = new ArrayList();
        boolean z = this.type.equals(LabelConstants.NVBDCP_LLIN) || this.type.equals(LabelConstants.NIDDCP);
        List list = null;
        if (z && (map = this.mapOfSelectedFamilyIds) != null && map.containsKey(this.type) && this.mapOfSelectedFamilyIds.get(this.type) != null && !this.mapOfSelectedFamilyIds.get(this.type).isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, UtilBean.getMyLabel(LabelConstants.SELECTED_FAMILY + incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getIncentiveTitle()));
            this.headerTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            this.familyIds = this.mapOfSelectedFamilyIds.get(this.type);
            ArrayList arrayList2 = new ArrayList();
            Iterator<FamilyDataBean> it = this.familyDataBeans.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next().getFamilyId());
            }
            Map<String, MemberDataBean> mapRetrieveHeadMemberDataBeansByFamilyId = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList2);
            for (IncentiveDetailDataBean incentiveDetailDataBean : incentiveDetails) {
                if (incentiveDetailDataBean.getIncentiveId() == incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getActualId()) {
                    ArrayList arrayList3 = new ArrayList();
                    for (String str4 : this.familyIds) {
                        try {
                            FamilyBean familyBeanQueryForFirst = this.familyBeanDao.queryBuilder().where().eq("actualId", str4).queryForFirst();
                            MemberDataBean memberDataBean = mapRetrieveHeadMemberDataBeansByFamilyId.get(new FamilyDataBean(familyBeanQueryForFirst, list).getFamilyId());
                            if (memberDataBean != null) {
                                try {
                                    sb = new StringBuilder();
                                    map3 = mapRetrieveHeadMemberDataBeansByFamilyId;
                                } catch (SQLException e) {
                                    e = e;
                                    map3 = mapRetrieveHeadMemberDataBeansByFamilyId;
                                }
                                try {
                                    sb.append(memberDataBean.getFirstName());
                                    sb.append(str3);
                                    sb.append(memberDataBean.getMiddleName());
                                    sb.append(str3);
                                    sb.append(memberDataBean.getGrandfatherName());
                                    sb.append(str3);
                                    sb.append(memberDataBean.getLastName());
                                    strTrim = sb.toString().replace(LabelConstants.NULL, "").trim();
                                } catch (SQLException e2) {
                                    e = e2;
                                    str2 = str3;
                                    Log.e(TAG, e.getMessage(), e);
                                    mapRetrieveHeadMemberDataBeansByFamilyId = map3;
                                    str3 = str2;
                                    list = null;
                                }
                            } else {
                                map3 = mapRetrieveHeadMemberDataBeansByFamilyId;
                                strTrim = null;
                            }
                            if (strTrim == null) {
                                str2 = str3;
                                string = "Head member name not available";
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                str2 = str3;
                                try {
                                    sb2.append("Head of the family - ");
                                    sb2.append(strTrim);
                                    string = sb2.toString();
                                } catch (SQLException e3) {
                                    e = e3;
                                    Log.e(TAG, e.getMessage(), e);
                                    mapRetrieveHeadMemberDataBeansByFamilyId = map3;
                                    str3 = str2;
                                    list = null;
                                }
                            }
                            arrayList.add(new ListItemDataBean(string, LabelConstants.FAMILY_ID, familyBeanQueryForFirst.getFamilyId(), (String) null, (String) null));
                            IncentiveMemberDetailsDataBean incentiveMemberDetailsDataBean = new IncentiveMemberDetailsDataBean();
                            incentiveMemberDetailsDataBean.setUniqueHealthId(familyBeanQueryForFirst.getFamilyId());
                            if (strTrim == null) {
                                strTrim = "Head member name not available";
                            }
                            incentiveMemberDetailsDataBean.setName(strTrim);
                            incentiveMemberDetailsDataBean.setMemberId(Integer.valueOf(Integer.parseInt(str4)));
                            arrayList3.add(incentiveMemberDetailsDataBean);
                        } catch (SQLException e4) {
                            e = e4;
                            str2 = str3;
                            map3 = mapRetrieveHeadMemberDataBeansByFamilyId;
                        }
                        mapRetrieveHeadMemberDataBeansByFamilyId = map3;
                        str3 = str2;
                        list = null;
                    }
                    str = str3;
                    map2 = mapRetrieveHeadMemberDataBeansByFamilyId;
                    incentiveDetailDataBean.setIncentiveMemberDetails(arrayList3);
                } else {
                    str = str3;
                    map2 = mapRetrieveHeadMemberDataBeansByFamilyId;
                }
                mapRetrieveHeadMemberDataBeansByFamilyId = map2;
                str3 = str;
                list = null;
            }
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, null, this.searchString == null ? this : null);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            Map<String, List<String>> map4 = this.mapOfSelectedMemberIds;
            if (map4 != null && map4.containsKey(this.type) && this.mapOfSelectedMemberIds.get(this.type) != null && !this.mapOfSelectedMemberIds.get(this.type).isEmpty()) {
                MaterialTextView listTitleView2 = MyStaticComponents.getListTitleView(this, UtilBean.getMyLabel(LabelConstants.SELECTED_MEMBER + incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getIncentiveTitle()));
                this.headerTitle = listTitleView2;
                this.bodyLayoutContainer.addView(listTitleView2);
                this.memberIds = this.mapOfSelectedMemberIds.get(this.type);
                for (IncentiveDetailDataBean incentiveDetailDataBean2 : incentiveDetails) {
                    if (incentiveDetailDataBean2.getIncentiveId() == incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getActualId()) {
                        ArrayList arrayList4 = new ArrayList();
                        for (String str5 : this.memberIds) {
                            try {
                                MemberBean memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", str5).queryForFirst();
                                arrayList.add(new ListItemDataBean(memberBeanQueryForFirst.getFamilyId(), memberBeanQueryForFirst.getUniqueHealthId(), UtilBean.getMemberFullName(memberBeanQueryForFirst), (String) null, (String) null));
                                IncentiveMemberDetailsDataBean incentiveMemberDetailsDataBean2 = new IncentiveMemberDetailsDataBean();
                                if (memberBeanQueryForFirst.getUniqueHealthId() != null) {
                                    incentiveMemberDetailsDataBean2.setUniqueHealthId(memberBeanQueryForFirst.getUniqueHealthId());
                                }
                                if (UtilBean.getMemberFullName(memberBeanQueryForFirst) != null) {
                                    incentiveMemberDetailsDataBean2.setName(UtilBean.getMemberFullName(memberBeanQueryForFirst));
                                }
                                if (str5 != null) {
                                    incentiveMemberDetailsDataBean2.setMemberId(Integer.valueOf(Integer.parseInt(str5)));
                                }
                                if (memberBeanQueryForFirst.getGender() != null) {
                                    incentiveMemberDetailsDataBean2.setGender(memberBeanQueryForFirst.getGender());
                                }
                                if (memberBeanQueryForFirst.getState() != null) {
                                    incentiveMemberDetailsDataBean2.setState(memberBeanQueryForFirst.getState());
                                }
                                if (memberBeanQueryForFirst.getDob() != null) {
                                    incentiveMemberDetailsDataBean2.setDob(memberBeanQueryForFirst.getDob().toString());
                                }
                                arrayList4.add(incentiveMemberDetailsDataBean2);
                            } catch (SQLException e5) {
                                Log.e(TAG, e5.getMessage(), e5);
                            }
                        }
                        incentiveDetailDataBean2.setIncentiveMemberDetails(arrayList4);
                    }
                }
                Context context = this.context;
                int i = R.layout.listview_row_with_two_item;
                if (this.searchString == null) {
                    incentivesReportActivity = this;
                    onItemClickListener = null;
                } else {
                    onItemClickListener = null;
                    incentivesReportActivity = null;
                }
                PagingListView paginatedListViewWithItem2 = MyStaticComponents.getPaginatedListViewWithItem(context, arrayList, i, onItemClickListener, incentivesReportActivity);
                this.paginatedListView = paginatedListViewWithItem2;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem2);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
            } else {
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, z ? LabelConstants.NO_FAMILIES_SELECTED_FOR + this.type : LabelConstants.NO_MEMBERS_SELECTED_FOR + this.type);
                this.noMemberAvailableView = materialTextViewGenerateInstructionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            }
        }
        hideProcessDialog();
        resetScroll();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0039  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r6) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.IncentivesReportActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0131, code lost:
    
        r6 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02c8  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r11) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 878
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.IncentivesReportActivity.onClick(android.view.View):void");
    }

    private void showIncentiveCountEntryScreen() {
        int iIntValue;
        this.screen = INCENTIVE_COUNT_ENTRY_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.editTextMap.clear();
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.isIronSyrupFlowStarted = false;
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(1);
        int i = -1;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setPadding(16, 16, 16, 16);
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.ENTER_COUNT_FOR_INCENTIVES);
        this.titleView = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        for (String str : this.listIncentives) {
            ConstraintLayout constraintLayout = new ConstraintLayout(this.context);
            constraintLayout.setLayoutParams(new ConstraintLayout.LayoutParams(i, -2));
            constraintLayout.setPadding(0, 24, 0, 24);
            final IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(str);
            final int iIntValue2 = incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getCountLimit() != null ? incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getCountLimit().intValue() : Integer.MAX_VALUE;
            TextView textView = new TextView(this.context);
            textView.setId(View.generateViewId());
            textView.setText(incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getIncentiveTitle());
            textView.setTextSize(16.0f);
            textView.setLayoutParams(new ConstraintLayout.LayoutParams(0, -2));
            EditText editText = new EditText(this.context);
            editText.setInputType(2);
            editText.setTag(str);
            editText.setId(View.generateViewId());
            if (this.incentiveTypeCountMap.containsKey(str)) {
                iIntValue = this.incentiveTypeCountMap.get(str).intValue();
            } else {
                this.incentiveTypeCountMap.put(str, 0);
                iIntValue = 0;
            }
            if (iIntValue > iIntValue2) {
                iIntValue = iIntValue2;
            }
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(String.valueOf(iIntValue2).length()), new InputFilter() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity.2
                @Override // android.text.InputFilter
                public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
                    String str2;
                    try {
                        str2 = spanned.subSequence(0, i4).toString() + ((Object) charSequence.subSequence(i2, i3)) + ((Object) spanned.subSequence(i5, spanned.length()));
                    } catch (NumberFormatException unused) {
                    }
                    if (str2.isEmpty() || Integer.parseInt(str2) <= iIntValue2) {
                        return null;
                    }
                    SewaUtil.generateToast(IncentivesReportActivity.this.context, "Count limit for " + incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getIncentiveTitle() + " is " + iIntValue2);
                    return "";
                }
            }});
            editText.setText(String.valueOf(iIntValue));
            editText.setLayoutParams(new ConstraintLayout.LayoutParams(0, -2));
            constraintLayout.addView(textView);
            constraintLayout.addView(editText);
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(constraintLayout);
            constraintSet.connect(textView.getId(), 6, 0, 6);
            constraintSet.connect(textView.getId(), 3, 0, 3);
            constraintSet.connect(textView.getId(), 4, 0, 4);
            constraintSet.constrainPercentWidth(textView.getId(), 0.7f);
            constraintSet.connect(editText.getId(), 6, textView.getId(), 7, 16);
            constraintSet.connect(editText.getId(), 7, 0, 7);
            constraintSet.connect(editText.getId(), 3, 0, 3);
            constraintSet.connect(editText.getId(), 4, 0, 4);
            constraintSet.constrainPercentWidth(editText.getId(), 0.3f);
            constraintSet.applyTo(constraintLayout);
            linearLayout.addView(constraintLayout);
            this.editTextMap.put(str, editText);
            i = -1;
        }
        this.bodyLayoutContainer.addView(linearLayout);
        resetScroll();
    }

    private void addUiForIronSyrupScreen() {
        this.screen = IRON_SYRUP_UI_SCREEN;
        this.footerView.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.bodyLayoutContainer.removeAllViews();
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        this.newAdded = false;
        if (this.checkBoxListView == null) {
            this.checkBoxListView = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        }
        this.checkBoxListView.removeAllViews();
        this.bodyLayoutContainer.addView(this.checkBoxListView);
        if (!this.type.equals(LabelConstants.NVBDCP_LLIN) && !this.type.equals(LabelConstants.NIDDCP)) {
            addSearchTextBoxForMember(true);
        } else {
            addSearchTextBoxForMember(false);
        }
        retrieveMemberListForIronPillsFromDB(null);
        resetScroll();
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void performActionOnClick(int i, List<ListItemDataBean> list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
        this.newAdded = true;
        int iIntValue = this.incentiveTypeCountMap.containsKey(this.type) ? this.incentiveTypeCountMap.get(this.type).intValue() : 0;
        if (this.type.equals(LabelConstants.NVBDCP_LLIN) || this.type.equals(LabelConstants.NIDDCP)) {
            if (i < this.familyDataBeans.size()) {
                String id = this.familyDataBeans.get(i).getId();
                boolean zContains = this.familyIds.contains(id);
                if (!zContains && this.familyIds.size() >= iIntValue) {
                    SewaUtil.generateToast(this.context, "Only " + iIntValue + " family can be selected.");
                    return;
                }
                if (zContains) {
                    this.familyIds.remove(id);
                } else {
                    this.familyIds.add(id);
                }
                this.allListItems.get(i).setVerified(this.familyIds.contains(id));
                return;
            }
            return;
        }
        if (i < this.memberDataBeans.size()) {
            String id2 = this.memberDataBeans.get(i).getId();
            boolean zContains2 = this.memberIds.contains(id2);
            if (!zContains2 && this.memberIds.size() >= iIntValue) {
                SewaUtil.generateToast(this.context, "Only " + iIntValue + " member can be selected.");
                return;
            }
            if (zContains2) {
                this.memberIds.remove(id2);
            } else {
                this.memberIds.add(id2);
            }
            this.allListItems.get(i).setVerified(this.memberIds.contains(id2));
        }
    }

    public void setIronPillsMemberCheckBoxList(String str, List<MemberDataBean> list) {
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.headerTitle);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.nextButton.setText("Next");
        IncentiveMaster incentiveMasterRetrieveIncentiveMasterByIncentiveCode = this.incentiveService.retrieveIncentiveMasterByIncentiveCode(str);
        if (list != null && !list.isEmpty() && !str.equals(LabelConstants.NIDDCP) && !str.equals(LabelConstants.NVBDCP_LLIN)) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, UtilBean.getMyLabel("Select Members From List for " + incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getIncentiveTitle()));
            this.headerTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            this.allListItems = getMembersList(list);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda17
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!");
                }
            };
            if (this.searchString == null) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItemForIncentive(this.context, this.allListItems, R.layout.list_view_item_with_checkbox, onItemClickListener, this);
            } else {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItemForIncentive(this.context, this.allListItems, R.layout.list_view_item_with_checkbox, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.paginatedListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            List<FamilyDataBean> list2 = this.familyDataBeans;
            if (list2 != null && !list2.isEmpty()) {
                MaterialTextView listTitleView2 = MyStaticComponents.getListTitleView(this, UtilBean.getMyLabel("Select Families From List for " + incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getIncentiveTitle()));
                this.headerTitle = listTitleView2;
                this.bodyLayoutContainer.addView(listTitleView2);
                this.allListItems = getFamilyList(this.familyDataBeans);
                AdapterView.OnItemClickListener onItemClickListener2 = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda18
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                        IncentivesReportActivity.lambda$setIronPillsMemberCheckBoxList$13(adapterView, view, i, j);
                    }
                };
                if (this.searchString == null) {
                    this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItemForIncentive(this.context, this.allListItems, R.layout.list_view_item_with_checkbox, onItemClickListener2, this);
                } else {
                    this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItemForIncentive(this.context, this.allListItems, R.layout.list_view_item_with_checkbox, onItemClickListener2, this);
                }
                this.bodyLayoutContainer.addView(this.paginatedListView);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
            } else {
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, "No Members/Families For " + incentiveMasterRetrieveIncentiveMasterByIncentiveCode.getIncentiveTitle());
                this.noMemberAvailableView = materialTextViewGenerateInstructionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            }
        }
        hideProcessDialog();
    }

    public void addSearchTextBoxForMember(Boolean bool) {
        this.bodyLayoutContainer.removeAllViews();
        if (bool.booleanValue()) {
            this.searchText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_MEMBER, 1, 15, 1);
        } else {
            this.searchText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 15, 1);
        }
        if (this.searchText.getEditText() != null) {
            this.searchText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity.3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    IncentivesReportActivity.this.timer.cancel();
                    IncentivesReportActivity.this.timer = new Timer();
                    IncentivesReportActivity.this.timer.schedule(new AnonymousClass1(charSequence), IncentivesReportActivity.DELAY);
                }

                /* renamed from: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$3$1, reason: invalid class name */
                class AnonymousClass1 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    AnonymousClass1(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CharSequence charSequence = this.val$s;
                        if (charSequence != null && charSequence.length() > 2) {
                            IncentivesReportActivity incentivesReportActivity = IncentivesReportActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            incentivesReportActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$3$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m239xddbc4778(charSequence2);
                                }
                            });
                        } else {
                            CharSequence charSequence3 = this.val$s;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                IncentivesReportActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$3$1$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m240xcf0dd6f9();
                                    }
                                });
                            }
                        }
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-IncentivesReportActivity$3$1, reason: not valid java name */
                    /* synthetic */ void m239xddbc4778(CharSequence charSequence) {
                        IncentivesReportActivity.this.retrieveMemberListForIronPillsFromDB(charSequence.toString());
                        IncentivesReportActivity.this.searchText.setFocusable(true);
                    }

                    /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-IncentivesReportActivity$3$1, reason: not valid java name */
                    /* synthetic */ void m240xcf0dd6f9() {
                        IncentivesReportActivity.this.showProcessDialog();
                        IncentivesReportActivity.this.retrieveMemberListForIronPillsFromDB(null);
                        IncentivesReportActivity.this.hideProcessDialog();
                    }
                }
            });
        }
        this.searchText.getEditText().getText().toString();
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        resetScroll();
    }

    public void retrieveMemberListForIronPillsFromDB(String str) {
        this.searchString = str;
        this.offset = 0L;
        if (!this.type.equals(LabelConstants.NVBDCP_LLIN) && !this.type.equals(LabelConstants.NIDDCP)) {
            this.memberDataBeans = this.incentiveService.retrieveMemberListByCode(this.type, this.searchString, this.limit, this.offset);
        } else {
            this.familyDataBeans = this.incentiveService.retrieveFamilyListByCode(this.type, this.searchString, this.limit, this.offset);
        }
        showProcessDialog();
        this.offset = Long.valueOf(this.offset.longValue() + this.limit.longValue());
        setIronPillsMemberCheckBoxList(this.type, this.memberDataBeans);
    }

    private static void sortIncentiveDetails(List<IncentiveDetailDataBean> list) {
        Collections.sort(list, new Comparator() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda16
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return IncentivesReportActivity.lambda$sortIncentiveDetails$14(obj, obj2);
            }
        });
    }

    static /* synthetic */ int lambda$sortIncentiveDetails$14(Object obj, Object obj2) {
        IncentiveDetailDataBean incentiveDetailDataBean = (IncentiveDetailDataBean) obj;
        IncentiveDetailDataBean incentiveDetailDataBean2 = (IncentiveDetailDataBean) obj2;
        int iCompareTo = incentiveDetailDataBean.getIncentiveGroup().compareTo(incentiveDetailDataBean2.getIncentiveGroup());
        return iCompareTo != 0 ? iCompareTo : incentiveDetailDataBean.getOrder().compareTo(incentiveDetailDataBean2.getOrder());
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        if (this.type.equals(LabelConstants.NVBDCP_LLIN) || this.type.equals(LabelConstants.NVBDCP_LLIN)) {
            loadMoreFamilies();
        } else {
            loadMoreMembers();
        }
    }

    public void loadMoreMembers() {
        List<MemberDataBean> listRetrieveMemberListByCode = this.incentiveService.retrieveMemberListByCode(this.type, null, this.limit, this.offset);
        this.offset = Long.valueOf(this.offset.longValue() + this.limit.longValue());
        onLoadMoreUiMember(listRetrieveMemberListByCode);
    }

    public void onLoadMoreUiMember(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            new ArrayList();
            List<ListItemDataBean> membersList = getMembersList(list);
            this.allListItems.addAll(membersList);
            this.memberDataBeans.addAll(list);
            list.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, membersList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }

    public void loadMoreFamilies() {
        List<FamilyDataBean> listRetrieveFamilyListByCode = this.incentiveService.retrieveFamilyListByCode(this.type, null, this.limit, this.offset);
        this.offset = Long.valueOf(this.offset.longValue() + this.limit.longValue());
        onLoadMoreUiFamily(listRetrieveFamilyListByCode);
    }

    public void onLoadMoreUiFamily(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.allListItems.addAll(familyList);
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }

    private List<ListItemDataBean> getMembersList(List<MemberDataBean> list) {
        ListItemDataBean listItemDataBean;
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            String str = String.format("%s %s", memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean));
            if (this.mapOfSelectedMemberIds.get(this.type) != null) {
                listItemDataBean = new ListItemDataBean(str, Boolean.valueOf(this.mapOfSelectedMemberIds.get(this.type).contains(memberDataBean.getId())), (Boolean) false);
            } else {
                listItemDataBean = new ListItemDataBean(str, (Boolean) false, (Boolean) false);
            }
            arrayList.add(listItemDataBean);
        }
        return arrayList;
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
        String myLabel;
        ListItemDataBean listItemDataBean;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFamilyId());
        }
        Map<String, MemberDataBean> mapRetrieveHeadMemberDataBeansByFamilyId = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
        for (FamilyDataBean familyDataBean : list) {
            MemberDataBean memberDataBean = mapRetrieveHeadMemberDataBeansByFamilyId.get(familyDataBean.getFamilyId());
            if (memberDataBean != null) {
                familyDataBean.setHeadMemberName(memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName());
                familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(LabelConstants.NULL, ""));
                myLabel = (familyDataBean.getFamilyId() + " - " + memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            if (this.mapOfSelectedFamilyIds.get(this.type) != null) {
                listItemDataBean = new ListItemDataBean(myLabel, Boolean.valueOf(this.mapOfSelectedFamilyIds.get(this.type).contains(familyDataBean.getId())), (Boolean) false);
            } else {
                listItemDataBean = new ListItemDataBean(myLabel, (Boolean) false, (Boolean) false);
            }
            arrayList2.add(listItemDataBean);
        }
        return arrayList2;
    }

    private void resetScroll() {
        try {
            this.bodyLayoutContainer.setSaveEnabled(false);
            Object parent = this.bodyLayoutContainer.getParent();
            if (parent instanceof View) {
                ((View) parent).setSaveEnabled(false);
            }
        } catch (Throwable unused) {
        }
        this.bodyLayoutContainer.post(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m233x4c688c2c();
            }
        });
    }

    /* renamed from: lambda$resetScroll$16$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m233x4c688c2c() {
        ViewParent parent = this.bodyLayoutContainer.getParent();
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            currentFocus.clearFocus();
        }
        while (true) {
            if (parent instanceof View) {
                if (parent instanceof ScrollView) {
                    ((ScrollView) parent).scrollTo(0, 0);
                    break;
                } else {
                    if (parent instanceof NestedScrollView) {
                        ((NestedScrollView) parent).scrollTo(0, 0);
                        break;
                    }
                    parent = parent.getParent();
                }
            } else {
                this.bodyLayoutContainer.scrollTo(0, 0);
                break;
            }
        }
        this.bodyLayoutContainer.postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IncentivesReportActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m232xfea9142b();
            }
        }, 50L);
    }

    /* renamed from: lambda$resetScroll$15$com-argusoft-sewa-android-app-activity-IncentivesReportActivity, reason: not valid java name */
    /* synthetic */ void m232xfea9142b() {
        try {
            for (ViewParent parent = this.bodyLayoutContainer.getParent(); parent instanceof View; parent = parent.getParent()) {
                if (parent instanceof ScrollView) {
                    ((ScrollView) parent).scrollTo(0, 0);
                    return;
                } else {
                    if (parent instanceof NestedScrollView) {
                        ((NestedScrollView) parent).scrollTo(0, 0);
                        return;
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
