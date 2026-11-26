package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.component.SearchComponent;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.RbskVisionReferredMemberBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.ValidationFormulaUtil;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NPCBScreeningOA extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final int INDEX_APPROVAL_SECTION = 3;
    private static final int INDEX_BENEFICIARIES_FOR_FOLLOW_UP = 2;
    private static final int INDEX_BENEFICIARIES_SENT_BY_CHO = 1;
    private static final int INDEX_FORTY_PLUS_MEMBERS = 0;
    private static final int INDEX_REFERRED_BY_RBSK = 4;
    private static final int LIMIT = 30;
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final int MIN_LOCATION_MEMBER_SEARCH_LENGTH = 2;
    private static final String NPCB_STATUS_COMPLETED = "COMPLETED";
    private static final String NPCB_STATUS_REFERRED_TO_CHO = "REFERRED_TO_CHO";
    private static final String NPCB_STATUS_REFERRED_TO_OA = "REFERRED_TO_OA";
    private static final String NPCB_STATUS_REFERRED_TO_OS = "REFERRED_TO_OS";
    private static final String RBSK_REFERRED_SCREEN = "rbskReferredScreen";
    private static final int REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY = 300;
    private static final String SERVICE_APPROVAL_SECTION = "approvalSection";
    private static final String SERVICE_FORTY_PLUS_MEMBERS = "fortyPlusMembers";
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private static final String SERVICE_SENT_BY_CHO = "sentByCHO";
    private static final String SERVICE_SENT_BY_CHO_FOR_FOLLOW_UP = "sentByCHOForFollowUp";
    private static final String SERVICE_SENT_BY_RBSK = "sentByRBSK";
    private static final int TECHO_ID_POLL_ATTEMPTS = 20;
    private static final long TECHO_ID_POLL_INTERVAL_MS = 1000;
    private int activeRequestId;
    private LinearLayout bodyLayoutContainer;
    private String currentFormattedSearch;
    private String currentSearchText;
    private String currentSearchType;
    private TextInputLayout detailsInputLayout;
    private EditText detailsSearchEditText;
    private int detailsSearchTypeIndex;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    LocationMasterServiceImpl locationMasterService;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberTextView;
    private LinearLayout notFoundCard;
    private int offset;
    private MaterialTextView onsiteHintView;
    private boolean onsiteRegistrationMode;
    private PagingListView paginatedListView;
    private MaterialTextView questionTextView;
    private MaterialTextView rbskEmptyView;
    private LinearLayout rbskLegendRow;
    private PagingListView rbskListView;
    private int rbskOffset;
    private boolean rbskOnsiteRegistration;
    private boolean rbskReferredScreening;
    private Integer rbskScreeningStudentDetailsId;
    private TextInputLayout rbskSearchInputLayout;
    private String rbskSearchString;
    private LinearLayout rbskTitleRow;
    private Button registerOnsiteButton;
    private String screen;
    private SearchComponent searchBox;
    private String searchString;
    private TextInputLayout searchText;
    private MemberDataBean selectedMember;
    private String selectedService;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    TechoAshaServiceImpl techoAshaService;
    private MaterialTextView titleTextView;
    private static final String[] DETAILS_SEARCH_TYPES = {SearchComponent.SearchTypes.MOBILE_NUMBER, SearchComponent.SearchTypes.NAME, SearchComponent.SearchTypes.AADHAAR, SearchComponent.SearchTypes.MEMBER_ID};
    private static final String[] DETAILS_SEARCH_LABELS = {LabelConstants.NPCB_SEARCH_TYPE_MOBILE, "Name", LabelConstants.NPCB_SEARCH_TYPE_AADHAAR, "Techo ID"};
    private static final String[] DETAILS_SEARCH_HINTS = {LabelConstants.NPCB_SEARCH_HINT_MOBILE, LabelConstants.NPCB_SEARCH_HINT_NAME, LabelConstants.NPCB_SEARCH_HINT_AADHAAR, LabelConstants.NPCB_SEARCH_HINT_HEALTH_ID};
    private static final String[] DETAILS_SEARCH_FIELD_LABELS = {LabelConstants.NPCB_SEARCH_FIELD_MOBILE, LabelConstants.NPCB_SEARCH_FIELD_NAME, LabelConstants.NPCB_SEARCH_FIELD_AADHAAR, "Techo ID"};
    private static final int[] DETAILS_SEARCH_LENGTHS = {10, 0, 12, 0};
    private static final int COLOR_ACCENT = Color.parseColor("#1F63B5");
    private static final int COLOR_SUCCESS = Color.parseColor("#2E7D32");
    private static final int COLOR_SURFACE = Color.parseColor("#F5F8FB");
    private static final int COLOR_BORDER = Color.parseColor("#D6DFE8");
    private static final int COLOR_TEXT = Color.parseColor("#1F2D3D");
    private static final int COLOR_MUTED = Color.parseColor("#5B7186");
    private List<MemberDataBean> memberDataBeans = new ArrayList();
    private Timer timer = new Timer();
    private int selectedMemberIndex = -1;
    private int selectedServiceIndex = -1;
    private List<RbskVisionReferredMemberBean> rbskReferredMembers = new ArrayList();
    private final List<MaterialTextView> detailsTypeChips = new ArrayList();

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    static /* synthetic */ int access$304(NPCBScreeningOA nPCBScreeningOA) {
        int i = nPCBScreeningOA.activeRequestId + 1;
        nPCBScreeningOA.activeRequestId = i;
        return i;
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
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
        setTitle(UtilBean.getTitleText(LabelConstants.NPCB_SCREENING_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setServiceSelectionScreen();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (SERVICE_SELECTION_SCREEN.equals(this.screen)) {
            MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_NPCB_SCREENING_CLOSE_ALERT_FULL, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m412x321a3945(view);
                }
            }, DynamicUtils.BUTTON_YES_NO);
            this.myAlertDialog = myAlertDialog;
            myAlertDialog.show();
        } else {
            setSubTitle(null);
            if (MEMBER_SELECTION_SCREEN.equals(this.screen) || RBSK_REFERRED_SCREEN.equals(this.screen)) {
                setServiceSelectionScreen();
            } else {
                super.onBackPressed();
            }
        }
    }

    /* renamed from: lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m412x321a3945(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setServiceSelectionScreen() {
        this.activeRequestId++;
        this.selectedServiceIndex = -1;
        this.selectedService = null;
        this.onsiteRegistrationMode = false;
        this.rbskOnsiteRegistration = false;
        this.rbskScreeningStudentDetailsId = null;
        this.rbskReferredScreening = false;
        this.selectedMemberIndex = -1;
        this.selectedMember = null;
        this.memberDataBeans = new ArrayList();
        resetRbskReferredState();
        restoreDefaultFooterButton();
        this.screen = SERVICE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_TYPE_SELECTION));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.FOURTY_PLUS_MEMBERS)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.BENEFICIARIES_SENT_BY_CHO)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.BENEFICIARIES_FOR_FOLLOW_UP)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.APPROVAL_SECTION)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel("Referred by RBSK")));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda16
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m426x2b467dfb(adapterView, view, i, j);
            }
        }, null));
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$setServiceSelectionScreen$1$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m426x2b467dfb(AdapterView adapterView, View view, int i, long j) {
        this.selectedServiceIndex = i;
        onClick(this.nextButton);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            setSubTitle(null);
            if (MEMBER_SELECTION_SCREEN.equals(this.screen)) {
                handleMemberSelection();
            } else if (SERVICE_SELECTION_SCREEN.equals(this.screen)) {
                handleServiceSelection();
            }
        }
    }

    private void handleMemberSelection() {
        int i = this.selectedMemberIndex;
        if (i != -1 && i < this.memberDataBeans.size()) {
            this.selectedMember = this.memberDataBeans.get(this.selectedMemberIndex);
            String npcbStatusMessage = SERVICE_FORTY_PLUS_MEMBERS.equalsIgnoreCase(this.selectedService) ? getNpcbStatusMessage(this.selectedMember) : null;
            if (npcbStatusMessage != null) {
                SewaUtil.generateToast(this, npcbStatusMessage);
                return;
            }
            this.onsiteRegistrationMode = false;
            this.rbskOnsiteRegistration = false;
            this.rbskScreeningStudentDetailsId = null;
            this.rbskReferredScreening = false;
            startDynamicFormActivity();
            return;
        }
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_MEMBER));
    }

    private String getNpcbStatusMessage(MemberDataBean memberDataBean) {
        String myLabel;
        String imtMemberNpcbStatus = memberDataBean.getImtMemberNpcbStatus();
        if (imtMemberNpcbStatus == null || imtMemberNpcbStatus.trim().isEmpty()) {
            return null;
        }
        if ("REFERRED_TO_CHO".equalsIgnoreCase(imtMemberNpcbStatus)) {
            myLabel = UtilBean.getMyLabel(LabelConstants.NPCB_STATUS_REFERRED_TO_CHO_ALERT);
        } else if (NPCB_STATUS_REFERRED_TO_OA.equalsIgnoreCase(imtMemberNpcbStatus)) {
            myLabel = UtilBean.getMyLabel(LabelConstants.NPCB_STATUS_REFERRED_TO_OA_ALERT);
        } else if (NPCB_STATUS_REFERRED_TO_OS.equalsIgnoreCase(imtMemberNpcbStatus)) {
            myLabel = UtilBean.getMyLabel(LabelConstants.NPCB_STATUS_REFERRED_TO_OS_ALERT);
        } else if (NPCB_STATUS_COMPLETED.equalsIgnoreCase(imtMemberNpcbStatus)) {
            myLabel = UtilBean.getMyLabel(LabelConstants.NPCB_STATUS_COMPLETED_ALERT);
        } else {
            myLabel = UtilBean.getMyLabel(LabelConstants.NPCB_STATUS_IN_PROGRESS_ALERT);
        }
        String memberAreaHierarchy = getMemberAreaHierarchy(memberDataBean);
        if (memberAreaHierarchy == null || memberAreaHierarchy.isEmpty()) {
            return myLabel;
        }
        return myLabel + LabelConstants.NEW_LINE + UtilBean.getMyLabel(LabelConstants.NPCB_MEMBER_AREA) + memberAreaHierarchy;
    }

    private String getMemberAreaHierarchy(MemberDataBean memberDataBean) {
        String areaId = memberDataBean.getAreaId();
        if (areaId != null && !areaId.trim().isEmpty()) {
            try {
                return this.locationMasterService.retrieveLocationHierarchyByLocationId(Long.valueOf(Long.parseLong(areaId.trim())));
            } catch (NumberFormatException unused) {
                Log.e(getClass().getSimpleName(), "Invalid area id for member: " + areaId);
            }
        }
        return null;
    }

    private void handleServiceSelection() {
        int i = this.selectedServiceIndex;
        if (i != -1) {
            if (i == 0) {
                this.selectedService = SERVICE_FORTY_PLUS_MEMBERS;
            } else if (i == 1) {
                this.selectedService = SERVICE_SENT_BY_CHO;
            } else if (i == 2) {
                this.selectedService = SERVICE_SENT_BY_CHO_FOR_FOLLOW_UP;
            } else if (i == 3) {
                this.selectedService = SERVICE_APPROVAL_SECTION;
            } else if (i == 4) {
                this.selectedService = SERVICE_SENT_BY_RBSK;
            }
            String str = this.selectedService;
            if (str != null) {
                if (!SERVICE_FORTY_PLUS_MEMBERS.equalsIgnoreCase(str)) {
                    if (SERVICE_SENT_BY_RBSK.equalsIgnoreCase(this.selectedService)) {
                        openRbskReferredScreen();
                        return;
                    }
                    this.screen = MEMBER_SELECTION_SCREEN;
                    this.bodyLayoutContainer.removeAllViews();
                    addSearchTextBoxOnline();
                    if (SERVICE_SENT_BY_CHO.equalsIgnoreCase(this.selectedService) || SERVICE_SENT_BY_CHO_FOR_FOLLOW_UP.equalsIgnoreCase(this.selectedService) || SERVICE_APPROVAL_SECTION.equalsIgnoreCase(this.selectedService)) {
                        showProcessDialog();
                        String str2 = this.selectedService;
                        int i2 = this.activeRequestId + 1;
                        this.activeRequestId = i2;
                        retrieveMemberListFromOnline(null, str2, i2);
                        return;
                    }
                    return;
                }
                setFortyPlusDetailsScreen();
                return;
            }
            return;
        }
        SewaUtil.generateToast(this, UtilBean.getMyLabel("Please select a type of service"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addSearchTextBoxOnline() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(SearchComponent.SearchTypes.MEMBER_ID);
        arrayList.add(SearchComponent.SearchTypes.FAMILY_ID);
        arrayList.add(SearchComponent.SearchTypes.NAME);
        arrayList.add(SearchComponent.SearchTypes.MOBILE_NUMBER);
        arrayList.add("ABHA_NUMBER");
        arrayList.add(SearchComponent.SearchTypes.AADHAAR);
        SearchComponent searchComponent = new SearchComponent(this, UtilBean.getMyLabel("Enter text and click search icon to search online"), null, arrayList, getSearchClickOnline(), null, this.locationMasterService);
        this.searchBox = searchComponent;
        searchComponent.addTextWatcherInEditText(createTextWatcherForOfflineSearch());
        this.bodyLayoutContainer.addView(this.searchBox);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void openRbskReferredScreen() {
        this.screen = RBSK_REFERRED_SCREEN;
        resetRbskReferredState();
        this.bodyLayoutContainer.removeAllViews();
        restoreDefaultFooterButton();
        this.footerLayout.setVisibility(8);
        TextInputLayout[] textInputLayoutArr = new TextInputLayout[1];
        LinearLayout linearLayoutCreateSearchRow = createSearchRow(LabelConstants.NPCB_RBSK_SEARCH_HINT, new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performRbskSearch();
            }
        }, textInputLayoutArr);
        this.rbskSearchInputLayout = textInputLayoutArr[0];
        this.bodyLayoutContainer.addView(linearLayoutCreateSearchRow);
        showProcessDialog();
        int i = this.activeRequestId + 1;
        this.activeRequestId = i;
        loadRbskReferredMembers(null, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performRbskSearch() {
        TextInputLayout textInputLayout = this.rbskSearchInputLayout;
        String strTrim = (textInputLayout == null || textInputLayout.getEditText() == null) ? "" : this.rbskSearchInputLayout.getEditText().getText().toString().trim();
        if (!this.sewaService.isOnline()) {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_NO_INTERNET));
            return;
        }
        TextInputLayout textInputLayout2 = this.rbskSearchInputLayout;
        hideKeyboard(textInputLayout2 == null ? null : textInputLayout2.getEditText());
        showProcessDialog();
        if (strTrim.isEmpty()) {
            strTrim = null;
        }
        int i = this.activeRequestId + 1;
        this.activeRequestId = i;
        loadRbskReferredMembers(strTrim, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadRbskReferredMembers(String str, int i) {
        try {
            this.rbskOffset = 0;
            this.rbskSearchString = str;
            List<RbskVisionReferredMemberBean> rBSKVisionImpairmentReferredMembers = this.sewaServiceRestClient.getRBSKVisionImpairmentReferredMembers(30, Integer.valueOf(this.rbskOffset), str);
            if (rBSKVisionImpairmentReferredMembers == null) {
                rBSKVisionImpairmentReferredMembers = new ArrayList<>();
            }
            this.rbskReferredMembers = rBSKVisionImpairmentReferredMembers;
            this.rbskOffset += 30;
            setRbskReferredScreen(i);
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getSimpleName(), "Error retrieving RBSK-referred members: " + e.getMessage());
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m411x6f586b05(e);
                }
            });
        }
    }

    /* renamed from: lambda$loadRbskReferredMembers$2$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m411x6f586b05(RestHttpException restHttpException) {
        SewaUtil.generateToast(this, "Error retrieving RBSK-referred members: " + restHttpException.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRbskReferredScreen(int i) {
        if (i != this.activeRequestId) {
            hideProcessDialog();
            return;
        }
        PagingListView pagingListView = this.rbskListView;
        if (pagingListView != null) {
            this.bodyLayoutContainer.removeView(pagingListView);
            this.rbskListView = null;
        }
        LinearLayout linearLayout = this.rbskLegendRow;
        if (linearLayout != null) {
            this.bodyLayoutContainer.removeView(linearLayout);
            this.rbskLegendRow = null;
        }
        LinearLayout linearLayout2 = this.rbskTitleRow;
        if (linearLayout2 != null) {
            this.bodyLayoutContainer.removeView(linearLayout2);
            this.rbskTitleRow = null;
        }
        MaterialTextView materialTextView = this.rbskEmptyView;
        if (materialTextView != null) {
            this.bodyLayoutContainer.removeView(materialTextView);
            this.rbskEmptyView = null;
        }
        if (!this.rbskReferredMembers.isEmpty()) {
            LinearLayout linearLayoutBuildTitleRowWithInfo = buildTitleRowWithInfo(MyStaticComponents.getListTitleView(this, "Referred by RBSK"), LabelConstants.NPCB_RBSK_INSTRUCTION);
            this.rbskTitleRow = linearLayoutBuildTitleRowWithInfo;
            this.bodyLayoutContainer.addView(linearLayoutBuildTitleRowWithInfo);
            LinearLayout linearLayoutBuildRbskLegendRow = buildRbskLegendRow();
            this.rbskLegendRow = linearLayoutBuildRbskLegendRow;
            this.bodyLayoutContainer.addView(linearLayoutBuildRbskLegendRow);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this, convertRbskMembersToListItems(this.rbskReferredMembers), R.layout.listview_row_with_three_item_npcb, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda23
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                    this.f$0.m425x95349297(adapterView, view, i2, j);
                }
            }, this);
            this.rbskListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NPCB_RBSK_NO_MEMBERS);
            this.rbskEmptyView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$setRbskReferredScreen$3$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m425x95349297(AdapterView adapterView, View view, int i, long j) {
        if (i < 0 || i >= this.rbskReferredMembers.size()) {
            return;
        }
        onRbskMemberClicked(this.rbskReferredMembers.get(i));
    }

    private List<ListItemDataBean> convertRbskMembersToListItems(List<RbskVisionReferredMemberBean> list) {
        ArrayList arrayList = new ArrayList();
        for (RbskVisionReferredMemberBean rbskVisionReferredMemberBean : list) {
            String fullName = rbskVisionReferredMemberBean.getFullName();
            String villageName = GlobalTypes.KEY_VALUE_SEPARATOR;
            String strTrim = (fullName == null || rbskVisionReferredMemberBean.getFullName().trim().isEmpty()) ? GlobalTypes.KEY_VALUE_SEPARATOR : rbskVisionReferredMemberBean.getFullName().trim();
            boolean zEqualsIgnoreCase = "AWC".equalsIgnoreCase(rbskVisionReferredMemberBean.getReferredFrom());
            ListItemDataBean listItemDataBean = new ListItemDataBean();
            listItemDataBean.setBoldText(strTrim);
            ArrayList arrayList2 = new ArrayList();
            listItemDataBean.setLeadingIconTintColors(resolveConditionTints(rbskVisionReferredMemberBean, arrayList2));
            listItemDataBean.setLeadingIconResIds(arrayList2);
            if (zEqualsIgnoreCase) {
                listItemDataBean.setBoldText2(UtilBean.getMyLabel("Techo ID") + ": ");
                if (rbskVisionReferredMemberBean.getUniqueHealthId() != null) {
                    villageName = rbskVisionReferredMemberBean.getUniqueHealthId();
                }
                listItemDataBean.setRegularText2(villageName);
                listItemDataBean.setBoldText3(UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_SOURCE_LABEL) + ": ");
                listItemDataBean.setRegularText3(UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_SOURCE_AWC));
            } else {
                listItemDataBean.setBoldText2(UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_STUDENT_ID_LABEL) + ": ");
                listItemDataBean.setRegularText2(rbskVisionReferredMemberBean.getStudentUniqueId() != null ? rbskVisionReferredMemberBean.getStudentUniqueId() : GlobalTypes.KEY_VALUE_SEPARATOR);
                String schoolName = rbskVisionReferredMemberBean.getSchoolName() != null ? rbskVisionReferredMemberBean.getSchoolName() : GlobalTypes.KEY_VALUE_SEPARATOR;
                if (rbskVisionReferredMemberBean.getVillageName() != null) {
                    villageName = rbskVisionReferredMemberBean.getVillageName();
                }
                listItemDataBean.setBoldText3(UtilBean.getMyLabel("School") + ": ");
                listItemDataBean.setRegularText3(schoolName + ", " + UtilBean.getMyLabel("Village") + ": " + villageName);
            }
            arrayList.add(listItemDataBean);
        }
        return arrayList;
    }

    private List<Integer> resolveConditionTints(RbskVisionReferredMemberBean rbskVisionReferredMemberBean, List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        boolean z = (rbskVisionReferredMemberBean.getVisionImpairment() == null && rbskVisionReferredMemberBean.getColorBlindness() == null && rbskVisionReferredMemberBean.getWearsSpectacles() == null) ? false : true;
        boolean zEquals = Boolean.TRUE.equals(rbskVisionReferredMemberBean.getVisionImpairment());
        boolean zEquals2 = Boolean.TRUE.equals(rbskVisionReferredMemberBean.getColorBlindness());
        boolean zEquals3 = Boolean.TRUE.equals(rbskVisionReferredMemberBean.getWearsSpectacles());
        if (!z) {
            zEquals = "VISION_IMPAIRMENT".equalsIgnoreCase(rbskVisionReferredMemberBean.getDefectCategory());
            zEquals2 = "OTHER_DISEASES".equalsIgnoreCase(rbskVisionReferredMemberBean.getDefectCategory());
            zEquals3 = "SPECTACLES".equalsIgnoreCase(rbskVisionReferredMemberBean.getDefectCategory());
        }
        if (zEquals) {
            arrayList.add(Integer.valueOf(ContextCompat.getColor(this, R.color.colorPrimary)));
            list.add(Integer.valueOf(R.drawable.ic_rbsk_vision));
        }
        if (zEquals2) {
            arrayList.add(Integer.valueOf(ContextCompat.getColor(this, R.color.colorAccent)));
            list.add(Integer.valueOf(R.drawable.ic_rbsk_color_blind));
        }
        if (zEquals3) {
            arrayList.add(Integer.valueOf(ContextCompat.getColor(this, R.color.npcb_rbsk_spectacles_dot)));
            list.add(Integer.valueOf(R.drawable.ic_rbsk_spectacles));
        }
        return arrayList;
    }

    private LinearLayout buildRbskLegendRow() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(dpToPx(10), 0, dpToPx(10), dpToPx(6));
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        addLegendItem(linearLayout, R.drawable.ic_rbsk_vision, R.color.colorPrimary, LabelConstants.NPCB_RBSK_LEGEND_VISION);
        addLegendItem(linearLayout, R.drawable.ic_rbsk_color_blind, R.color.colorAccent, LabelConstants.NPCB_RBSK_LEGEND_COLOR);
        addLegendItem(linearLayout, R.drawable.ic_rbsk_spectacles, R.color.npcb_rbsk_spectacles_dot, LabelConstants.NPCB_RBSK_LEGEND_SPECTACLES);
        return linearLayout;
    }

    private void addLegendItem(LinearLayout linearLayout, int i, int i2, String str) {
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(i);
        imageView.setImageTintList(ColorStateList.valueOf(ContextCompat.getColor(this, i2)));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dpToPx(16), dpToPx(16));
        layoutParams.setMarginEnd(dpToPx(4));
        imageView.setLayoutParams(layoutParams);
        linearLayout.addView(imageView);
        MaterialTextView materialTextView = new MaterialTextView(this);
        materialTextView.setText(UtilBean.getMyLabel(str));
        materialTextView.setTextSize(12.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMarginEnd(dpToPx(16));
        materialTextView.setLayoutParams(layoutParams2);
        linearLayout.addView(materialTextView);
    }

    private Integer resolveDefectCategoryTint(String str) {
        if ("VISION_IMPAIRMENT".equalsIgnoreCase(str)) {
            return Integer.valueOf(ContextCompat.getColor(this, R.color.colorPrimary));
        }
        if ("OTHER_DISEASES".equalsIgnoreCase(str)) {
            return Integer.valueOf(ContextCompat.getColor(this, R.color.colorAccent));
        }
        if ("SPECTACLES".equalsIgnoreCase(str)) {
            return Integer.valueOf(ContextCompat.getColor(this, R.color.npcb_rbsk_spectacles_dot));
        }
        return null;
    }

    private void onRbskMemberClicked(final RbskVisionReferredMemberBean rbskVisionReferredMemberBean) {
        String strTrim = (rbskVisionReferredMemberBean.getFullName() == null || rbskVisionReferredMemberBean.getFullName().trim().isEmpty()) ? GlobalTypes.KEY_VALUE_SEPARATOR : rbskVisionReferredMemberBean.getFullName().trim();
        boolean z = (rbskVisionReferredMemberBean.getUniqueHealthId() == null || rbskVisionReferredMemberBean.getUniqueHealthId().trim().isEmpty()) ? false : true;
        this.rbskReferredScreening = true;
        if (!z) {
            MyAlertDialog myAlertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_SCREEN_CONFIRM_PREFIX) + strTrim + UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_SCREEN_CONFIRM_SUFFIX), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m414x53350bb7(rbskVisionReferredMemberBean, view);
                }
            }, DynamicUtils.BUTTON_YES_NO);
            this.myAlertDialog = myAlertDialog;
            myAlertDialog.show();
            return;
        }
        MyAlertDialog myAlertDialog2 = new MyAlertDialog(this, UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_SCREEN_CONFIRM_PREFIX) + strTrim + UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_SCREEN_CONFIRM_SUFFIX), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m415x546b5e96(rbskVisionReferredMemberBean, view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog2;
        myAlertDialog2.show();
    }

    /* renamed from: lambda$onRbskMemberClicked$4$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m414x53350bb7(RbskVisionReferredMemberBean rbskVisionReferredMemberBean, View view) {
        this.myAlertDialog.dismiss();
        if (view.getId() == -1) {
            this.onsiteRegistrationMode = false;
            this.rbskOnsiteRegistration = true;
            this.rbskScreeningStudentDetailsId = rbskVisionReferredMemberBean.getStudentDetailsId();
            this.selectedMember = buildSyntheticMemberFromRbskReferral(rbskVisionReferredMemberBean);
            this.selectedMemberIndex = -1;
            startDynamicFormActivity();
        }
    }

    /* renamed from: lambda$onRbskMemberClicked$5$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m415x546b5e96(RbskVisionReferredMemberBean rbskVisionReferredMemberBean, View view) {
        this.myAlertDialog.dismiss();
        if (view.getId() == -1) {
            if (!this.sewaService.isOnline()) {
                SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_NO_INTERNET));
                return;
            }
            showProcessDialog();
            int i = this.activeRequestId + 1;
            this.activeRequestId = i;
            screenRbskMappedMember(rbskVisionReferredMemberBean, i);
        }
    }

    private MemberDataBean buildSyntheticMemberFromRbskReferral(RbskVisionReferredMemberBean rbskVisionReferredMemberBean) {
        MemberDataBean memberDataBean = new MemberDataBean();
        String str = null;
        String strTrim = rbskVisionReferredMemberBean.getFullName() != null ? rbskVisionReferredMemberBean.getFullName().trim() : null;
        if (strTrim != null && !strTrim.isEmpty()) {
            str = strTrim;
        }
        memberDataBean.setFirstName(str);
        memberDataBean.setDob(rbskVisionReferredMemberBean.getDob());
        memberDataBean.setGender(rbskVisionReferredMemberBean.getGender());
        return memberDataBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void screenRbskMappedMember(RbskVisionReferredMemberBean rbskVisionReferredMemberBean, int i) {
        try {
            List<MemberDataBean> listRetrieveMembersForRIOnline = this.sewaServiceRestClient.retrieveMembersForRIOnline(null, null, null, rbskVisionReferredMemberBean.getUniqueHealthId(), null, null, null, 0, "FORTY_PLUS_MEMBERS", null, null, null);
            if (i != this.activeRequestId) {
                hideProcessDialog();
                return;
            }
            if (listRetrieveMembersForRIOnline != null && !listRetrieveMembersForRIOnline.isEmpty()) {
                MemberDataBean memberDataBean = listRetrieveMembersForRIOnline.get(0);
                final String npcbStatusMessage = getNpcbStatusMessage(memberDataBean);
                if (npcbStatusMessage != null) {
                    hideProcessDialog();
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m419xc014149f(npcbStatusMessage);
                        }
                    });
                    return;
                }
                this.selectedMember = memberDataBean;
                this.selectedMemberIndex = -1;
                this.onsiteRegistrationMode = false;
                this.rbskOnsiteRegistration = false;
                this.rbskScreeningStudentDetailsId = null;
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m420xc14a677e();
                    }
                });
                return;
            }
            hideProcessDialog();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m418xbeddc1c0();
                }
            });
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getSimpleName(), "Error finding RBSK-referred member: " + e.getMessage());
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m421xc280ba5d(e);
                }
            });
        }
    }

    /* renamed from: lambda$screenRbskMappedMember$6$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m418xbeddc1c0() {
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NPCB_RBSK_MEMBER_NOT_FOUND));
    }

    /* renamed from: lambda$screenRbskMappedMember$7$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m419xc014149f(String str) {
        SewaUtil.generateToast(this, str);
    }

    /* renamed from: lambda$screenRbskMappedMember$8$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m420xc14a677e() {
        hideProcessDialog();
        startDynamicFormActivity();
    }

    /* renamed from: lambda$screenRbskMappedMember$9$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m421xc280ba5d(RestHttpException restHttpException) {
        SewaUtil.generateToast(this, "Error finding member: " + restHttpException.getMessage());
    }

    private TextWatcher createTextWatcherForOfflineSearch() {
        return new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                NPCBScreeningOA.this.timer.cancel();
                NPCBScreeningOA.this.timer = new Timer();
                NPCBScreeningOA.this.timer.schedule(new C00481(charSequence), NPCBScreeningOA.DELAY);
            }

            /* renamed from: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$1$1, reason: invalid class name and collision with other inner class name */
            class C00481 extends TimerTask {
                final /* synthetic */ CharSequence val$s;

                C00481(CharSequence charSequence) {
                    this.val$s = charSequence;
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence = this.val$s;
                    if (charSequence == null || charSequence.length() == 0) {
                        NPCBScreeningOA.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$1$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m427x28b1aa90();
                            }
                        });
                    }
                }

                /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-NPCBScreeningOA$1$1, reason: not valid java name */
                /* synthetic */ void m427x28b1aa90() {
                    NPCBScreeningOA.this.showProcessDialog();
                    NPCBScreeningOA.this.offset = 0;
                    NPCBScreeningOA.this.retrieveMemberListFromOnline(null, NPCBScreeningOA.this.selectedService, NPCBScreeningOA.access$304(NPCBScreeningOA.this));
                }
            }
        };
    }

    private SearchComponent.SearchClick getSearchClickOnline() {
        return new SearchComponent.SearchClick() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda17
            @Override // com.argusoft.sewa.android.app.component.SearchComponent.SearchClick
            public final void onSearchClick(String str, String str2, Date date) {
                this.f$0.m410xbf5c3447(str, str2, date);
            }
        };
    }

    /* renamed from: lambda$getSearchClickOnline$10$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m410xbf5c3447(String str, String str2, Date date) {
        if (str2 == null && date == null) {
            return;
        }
        if (!this.sewaService.isOnline()) {
            SewaUtil.generateToast(this, "You need internet to search members online");
            return;
        }
        showProcessDialog();
        this.currentSearchType = str;
        this.currentSearchText = str2;
        this.offset = 0;
        String str3 = this.selectedService;
        int i = this.activeRequestId + 1;
        this.activeRequestId = i;
        retrieveMemberListFromOnline(str2, str3, i);
    }

    private GradientDrawable roundedBackground(int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dpToPx(i3));
        gradientDrawable.setStroke(dpToPx(1), i2);
        return gradientDrawable;
    }

    private MaterialTextView createHintText(String str) {
        MaterialTextView materialTextView = new MaterialTextView(this);
        materialTextView.setText(UtilBean.getMyLabel(str));
        materialTextView.setTextSize(13.0f);
        materialTextView.setTextColor(COLOR_MUTED);
        materialTextView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        materialTextView.setPadding(0, dpToPx(4), 0, dpToPx(6));
        return materialTextView;
    }

    private LinearLayout createCard(int i) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, dpToPx(12));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackground(roundedBackground(i, COLOR_BORDER, 14));
        linearLayout.setPadding(dpToPx(14), dpToPx(12), dpToPx(14), dpToPx(12));
        return linearLayout;
    }

    private MaterialTextView createLabel(String str, float f, int i, boolean z) {
        MaterialTextView materialTextView = new MaterialTextView(this);
        materialTextView.setText(UtilBean.getMyLabel(str));
        materialTextView.setTextSize(f);
        materialTextView.setTextColor(i);
        materialTextView.setTypeface(ResourcesCompat.getFont(this, z ? R.font.roboto_bold : R.font.roboto_regular));
        materialTextView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return materialTextView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFortyPlusDetailsScreen() {
        this.activeRequestId++;
        this.screen = MEMBER_SELECTION_SCREEN;
        this.selectedMemberIndex = -1;
        this.selectedMember = null;
        this.memberDataBeans = new ArrayList();
        this.bodyLayoutContainer.removeAllViews();
        this.titleTextView = null;
        this.paginatedListView = null;
        this.questionTextView = null;
        this.noMemberTextView = null;
        this.notFoundCard = null;
        this.registerOnsiteButton = null;
        restoreDefaultFooterButton();
        this.footerLayout.setVisibility(8);
        LinearLayout linearLayoutCreateCard = createCard(-1);
        linearLayoutCreateCard.addView(createLabel(LabelConstants.NPCB_SEARCH_HEADING, 14.0f, COLOR_TEXT, true));
        linearLayoutCreateCard.addView(createTypeSelector());
        TextInputLayout[] textInputLayoutArr = new TextInputLayout[1];
        linearLayoutCreateCard.addView(createSearchRow(DETAILS_SEARCH_FIELD_LABELS[this.detailsSearchTypeIndex], new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.performDetailsSearch();
            }
        }, textInputLayoutArr));
        TextInputLayout textInputLayout = textInputLayoutArr[0];
        this.detailsInputLayout = textInputLayout;
        this.detailsSearchEditText = textInputLayout.getEditText();
        MaterialTextView materialTextViewCreateHintText = createHintText(LabelConstants.NPCB_ONSITE_HINT);
        this.onsiteHintView = materialTextViewCreateHintText;
        materialTextViewCreateHintText.setPadding(0, dpToPx(2), 0, 0);
        linearLayoutCreateCard.addView(this.onsiteHintView);
        this.bodyLayoutContainer.addView(linearLayoutCreateCard);
        applyDetailsSearchInput();
        hideProcessDialog();
    }

    private LinearLayout createTypeSelector() {
        this.detailsTypeChips.clear();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, dpToPx(8), 0, dpToPx(4));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackground(roundedBackground(COLOR_SURFACE, COLOR_BORDER, 10));
        linearLayout.setPadding(dpToPx(3), dpToPx(3), dpToPx(3), dpToPx(3));
        final int i = 0;
        while (i < DETAILS_SEARCH_TYPES.length) {
            MaterialTextView materialTextView = new MaterialTextView(this);
            materialTextView.setText(UtilBean.getMyLabel(DETAILS_SEARCH_LABELS[i]));
            materialTextView.setGravity(17);
            materialTextView.setTextSize(13.0f);
            materialTextView.setTypeface(ResourcesCompat.getFont(this, R.font.roboto_medium));
            materialTextView.setPadding(dpToPx(4), dpToPx(9), dpToPx(4), dpToPx(9));
            materialTextView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            materialTextView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda24
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m409xe64e9a3e(i, view);
                }
            });
            styleSegment(materialTextView, i == this.detailsSearchTypeIndex);
            this.detailsTypeChips.add(materialTextView);
            linearLayout.addView(materialTextView);
            i++;
        }
        return linearLayout;
    }

    /* renamed from: lambda$createTypeSelector$11$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m409xe64e9a3e(int i, View view) {
        selectDetailsSearchType(i);
    }

    private void styleSegment(MaterialTextView materialTextView, boolean z) {
        GradientDrawable gradientDrawableRoundedBackground;
        if (z) {
            int i = COLOR_ACCENT;
            gradientDrawableRoundedBackground = roundedBackground(i, i, 8);
        } else {
            gradientDrawableRoundedBackground = null;
        }
        materialTextView.setBackground(gradientDrawableRoundedBackground);
        materialTextView.setTextColor(z ? -1 : COLOR_TEXT);
    }

    private void selectDetailsSearchType(int i) {
        if (i == this.detailsSearchTypeIndex) {
            return;
        }
        this.detailsSearchTypeIndex = i;
        int i2 = 0;
        while (i2 < this.detailsTypeChips.size()) {
            styleSegment(this.detailsTypeChips.get(i2), i2 == i);
            i2++;
        }
        EditText editText = this.detailsSearchEditText;
        if (editText != null) {
            editText.setText("");
        }
        applyDetailsSearchInput();
    }

    private void applyDetailsSearchInput() {
        TextInputLayout textInputLayout;
        if (this.detailsSearchEditText == null || (textInputLayout = this.detailsInputLayout) == null) {
            return;
        }
        textInputLayout.setError(null);
        this.detailsSearchEditText.setHint(UtilBean.getMyLabel(DETAILS_SEARCH_FIELD_LABELS[this.detailsSearchTypeIndex]));
        this.detailsInputLayout.setHelperText(UtilBean.getMyLabel(DETAILS_SEARCH_HINTS[this.detailsSearchTypeIndex]));
        int[] iArr = DETAILS_SEARCH_LENGTHS;
        int i = this.detailsSearchTypeIndex;
        int i2 = iArr[i];
        String[] strArr = DETAILS_SEARCH_TYPES;
        boolean zEquals = SearchComponent.SearchTypes.MOBILE_NUMBER.equals(strArr[i]);
        boolean zEquals2 = SearchComponent.SearchTypes.NAME.equals(strArr[this.detailsSearchTypeIndex]);
        this.detailsSearchEditText.setInputType(i2 > 0 ? 2 : zEquals2 ? 8193 : 528385);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new InputFilter.LengthFilter(i2 > 0 ? i2 : 40));
        if (zEquals) {
            arrayList.add(new InputFilter() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda0
                @Override // android.text.InputFilter
                public final CharSequence filter(CharSequence charSequence, int i3, int i4, Spanned spanned, int i5, int i6) {
                    return this.f$0.m407x3d47a19c(charSequence, i3, i4, spanned, i5, i6);
                }
            });
        } else if (zEquals2) {
            arrayList.add(new InputFilter() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda11
                @Override // android.text.InputFilter
                public final CharSequence filter(CharSequence charSequence, int i3, int i4, Spanned spanned, int i5, int i6) {
                    return NPCBScreeningOA.lambda$applyDetailsSearchInput$13(charSequence, i3, i4, spanned, i5, i6);
                }
            });
        } else if (i2 == 0) {
            arrayList.add(new InputFilter() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda20
                @Override // android.text.InputFilter
                public final CharSequence filter(CharSequence charSequence, int i3, int i4, Spanned spanned, int i5, int i6) {
                    return NPCBScreeningOA.lambda$applyDetailsSearchInput$14(charSequence, i3, i4, spanned, i5, i6);
                }
            });
        }
        this.detailsSearchEditText.setFilters((InputFilter[]) arrayList.toArray(new InputFilter[0]));
    }

    /* renamed from: lambda$applyDetailsSearchInput$12$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ CharSequence m407x3d47a19c(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (i3 != 0 || i2 <= i || "012345".indexOf(charSequence.charAt(i)) < 0) {
            return null;
        }
        this.detailsInputLayout.setError(ValidationFormulaUtil.mobileNumberFormat(charSequence.charAt(i) + "000000000"));
        return "";
    }

    static /* synthetic */ CharSequence lambda$applyDetailsSearchInput$13(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (!Character.isLetter(cCharAt) && cCharAt != ' ') {
                return "";
            }
            i++;
        }
        return null;
    }

    static /* synthetic */ CharSequence lambda$applyDetailsSearchInput$14(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        while (i < i2) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i))) {
                return "";
            }
            i++;
        }
        return null;
    }

    private String validateDetailsInput(String str) {
        String str2 = DETAILS_SEARCH_TYPES[this.detailsSearchTypeIndex];
        str2.hashCode();
        switch (str2) {
            case "AADHAAR":
                return ValidationFormulaUtil.aadhaarNumber(str);
            case "NAME":
                if (str.trim().length() < 3 || !str.matches("[A-Za-z ]+")) {
                    return UtilBean.getMyLabel(LabelConstants.NPCB_NAME_INVALID);
                }
                return null;
            case "MOBILE_NUMBER":
                return ValidationFormulaUtil.mobileNumberFormat(str);
            default:
                if (ValidationFormulaUtil.alphanumericWithSpace(str, new ValidationTagBean()) != null || str.length() < 5) {
                    return UtilBean.getMyLabel(LabelConstants.NPCB_HEALTH_ID_INVALID);
                }
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performDetailsSearch() {
        String strValidateDetailsInput;
        EditText editText = this.detailsSearchEditText;
        String strTrim = editText == null ? "" : editText.getText().toString().trim();
        if (strTrim.isEmpty()) {
            strValidateDetailsInput = UtilBean.getMyLabel(DETAILS_SEARCH_HINTS[this.detailsSearchTypeIndex]);
        } else {
            strValidateDetailsInput = validateDetailsInput(strTrim);
        }
        if (strValidateDetailsInput != null) {
            this.detailsInputLayout.setError(strValidateDetailsInput);
            return;
        }
        this.detailsInputLayout.setError(null);
        if (!this.sewaService.isOnline()) {
            SewaUtil.generateToast(this, "You need internet to search members online");
            return;
        }
        hideKeyboard(this.detailsSearchEditText);
        showProcessDialog();
        this.currentSearchType = DETAILS_SEARCH_TYPES[this.detailsSearchTypeIndex];
        this.currentSearchText = strTrim;
        this.offset = 0;
        String upperCase = strTrim.toUpperCase(Locale.ROOT);
        String str = this.selectedService;
        int i = this.activeRequestId + 1;
        this.activeRequestId = i;
        retrieveMemberListFromOnline(upperCase, str, i);
    }

    private void addNotFoundCard() {
        LinearLayout linearLayoutCreateCard = createCard(COLOR_SURFACE);
        this.notFoundCard = linearLayoutCreateCard;
        linearLayoutCreateCard.addView(createLabel(LabelConstants.NO_MEMBERS_FOUND_TITLE, 16.0f, COLOR_TEXT, true));
        MaterialTextView materialTextViewCreateLabel = createLabel(LabelConstants.NPCB_NOT_FOUND_BODY, 13.0f, COLOR_MUTED, false);
        materialTextViewCreateLabel.setPadding(0, dpToPx(4), 0, dpToPx(12));
        this.notFoundCard.addView(materialTextViewCreateLabel);
        Button button = new Button(this);
        button.setAllCaps(false);
        button.setTextSize(15.0f);
        button.setTypeface(ResourcesCompat.getFont(this, R.font.roboto_bold));
        button.setTextColor(-1);
        int i = COLOR_SUCCESS;
        button.setBackground(roundedBackground(i, i, 10));
        button.setText(UtilBean.getMyLabel(LabelConstants.NPCB_MEMBER_NOT_IN_LOCATION_LIST_BUTTON));
        button.setLayoutParams(new LinearLayout.LayoutParams(-1, dpToPx(48)));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m405x65e562ab(view);
            }
        });
        this.notFoundCard.addView(button);
        this.bodyLayoutContainer.addView(this.notFoundCard);
    }

    /* renamed from: lambda$addNotFoundCard$15$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m405x65e562ab(View view) {
        onsiteRegistrationClicked();
    }

    private void addRegisterOnsiteButtonIfApplicable() {
        if (SearchComponent.SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(this.currentSearchType) || SearchComponent.SearchTypes.NAME.equalsIgnoreCase(this.currentSearchType)) {
            Button button = new Button(this);
            this.registerOnsiteButton = button;
            button.setAllCaps(false);
            this.registerOnsiteButton.setTextSize(14.0f);
            this.registerOnsiteButton.setTypeface(ResourcesCompat.getFont(this, R.font.roboto_medium));
            Button button2 = this.registerOnsiteButton;
            int i = COLOR_SUCCESS;
            button2.setTextColor(i);
            this.registerOnsiteButton.setBackground(roundedBackground(-1, i, 10));
            this.registerOnsiteButton.setText(UtilBean.getMyLabel(LabelConstants.NPCB_REGISTER_ONSITE_NOT_LISTED));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dpToPx(42));
            layoutParams.setMargins(0, 0, 0, dpToPx(10));
            this.registerOnsiteButton.setLayoutParams(layoutParams);
            this.registerOnsiteButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda25
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m406xd1e45062(view);
                }
            });
            this.bodyLayoutContainer.addView(this.registerOnsiteButton);
        }
    }

    /* renamed from: lambda$addRegisterOnsiteButtonIfApplicable$16$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m406xd1e45062(View view) {
        onsiteRegistrationClicked();
    }

    private LinearLayout createSearchRow(String str, final Runnable runnable, TextInputLayout[] textInputLayoutArr) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(48);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        final TextInputLayout editText = MyStaticComponents.getEditText(this, UtilBean.getMyLabel(str), -1, 50, -1);
        editText.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        editText.setHelperTextEnabled(true);
        EditText editText2 = editText.getEditText();
        if (editText2 != null) {
            editText2.setImeOptions(3);
            editText2.setSingleLine(true);
            editText2.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda26
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    return NPCBScreeningOA.lambda$createSearchRow$17(runnable, textView, i, keyEvent);
                }
            });
            editText2.addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA.2
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    editText.setError(null);
                }
            });
        }
        textInputLayoutArr[0] = editText;
        linearLayout.addView(editText);
        ImageButton imageButton = new ImageButton(this);
        imageButton.setImageResource(R.drawable.ic_search);
        imageButton.setColorFilter(-1);
        int i = COLOR_ACCENT;
        imageButton.setBackground(roundedBackground(i, i, 12));
        imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageButton.setContentDescription(UtilBean.getMyLabel("Search"));
        int iDpToPx = dpToPx(52);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iDpToPx, iDpToPx);
        layoutParams.setMarginStart(dpToPx(8));
        layoutParams.topMargin = dpToPx(6);
        imageButton.setLayoutParams(layoutParams);
        imageButton.setPadding(dpToPx(12), dpToPx(12), dpToPx(12), dpToPx(12));
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        linearLayout.addView(imageButton);
        return linearLayout;
    }

    static /* synthetic */ boolean lambda$createSearchRow$17(Runnable runnable, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3) {
            return false;
        }
        runnable.run();
        return true;
    }

    private void hideKeyboard(EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager == null || editText == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    private void onsiteRegistrationClicked() {
        if (!this.sewaService.isOnline()) {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NPCB_ONSITE_REGISTRATION_NO_INTERNET));
            return;
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.NPCB_ONSITE_REGISTRATION_CONFIRM_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m416x61a5caaf(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onsiteRegistrationClicked$19$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m416x61a5caaf(View view) {
        this.myAlertDialog.dismiss();
        if (view.getId() == -1) {
            this.onsiteRegistrationMode = true;
            this.rbskOnsiteRegistration = false;
            this.rbskScreeningStudentDetailsId = null;
            this.rbskReferredScreening = false;
            this.selectedMember = null;
            this.selectedMemberIndex = -1;
            startDynamicFormActivity();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void retrieveMemberListFromOnline(String str, String str2, int i) {
        try {
            this.offset = 0;
            this.searchString = str;
            this.selectedMemberIndex = -1;
            if (SERVICE_FORTY_PLUS_MEMBERS.equalsIgnoreCase(str2)) {
                this.memberDataBeans = searchFortyPlusMembers(str, this.currentSearchType);
            } else if (SERVICE_SENT_BY_CHO.equalsIgnoreCase(str2)) {
                this.memberDataBeans = this.sewaServiceRestClient.getNPCBMembersSentByCHO(null, 30, Integer.valueOf(this.offset), str);
            } else if (SERVICE_APPROVAL_SECTION.equalsIgnoreCase(str2)) {
                this.memberDataBeans = this.sewaServiceRestClient.getNPCBMembersForSpectsApproval(null, 30, Integer.valueOf(this.offset), str);
            } else if (SERVICE_SENT_BY_CHO_FOR_FOLLOW_UP.equalsIgnoreCase(str2)) {
                this.memberDataBeans = this.sewaServiceRestClient.getOnlineFollowUpNPCBMembers(null, 30, Integer.valueOf(this.offset), str);
            }
            this.offset += 30;
            setMemberSelectionScreen(Boolean.valueOf(str != null), i);
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getSimpleName(), "Error retrieving members: " + e.getMessage());
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m417x78b4363c(e);
                }
            });
        }
    }

    /* renamed from: lambda$retrieveMemberListFromOnline$20$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m417x78b4363c(RestHttpException restHttpException) {
        SewaUtil.generateToast(this, "Error retrieving members: " + restHttpException.getMessage());
    }

    private List<MemberDataBean> searchFortyPlusMembers(String str, String str2) throws RestHttpException {
        if (str == null || str2 == null) {
            return new ArrayList();
        }
        if (SearchComponent.SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(str2)) {
            return this.sewaServiceRestClient.retrieveMembersForRIOnline(str, null, null, null, null, null, null, Integer.valueOf(this.offset), "FORTY_PLUS_MEMBERS", null, null, null);
        }
        if (SearchComponent.SearchTypes.FAMILY_ID.equalsIgnoreCase(str2)) {
            return this.sewaServiceRestClient.retrieveMembersForRIOnline(null, null, str, null, null, null, null, Integer.valueOf(this.offset), "FORTY_PLUS_MEMBERS", null, null, null);
        }
        if (SearchComponent.SearchTypes.MEMBER_ID.equalsIgnoreCase(str2)) {
            return this.sewaServiceRestClient.retrieveMembersForRIOnline(null, null, null, str, null, null, null, Integer.valueOf(this.offset), "FORTY_PLUS_MEMBERS", null, null, null);
        }
        if (SearchComponent.SearchTypes.NAME.equalsIgnoreCase(str2)) {
            return this.sewaServiceRestClient.retrieveMembersForRIOnline(null, null, null, null, str, null, null, Integer.valueOf(this.offset), "FORTY_PLUS_MEMBERS", null, null, null);
        }
        if (SearchComponent.SearchTypes.AADHAAR.equalsIgnoreCase(str2)) {
            return this.sewaServiceRestClient.retrieveMembersForRIOnline(null, null, null, null, null, null, null, Integer.valueOf(this.offset), "FORTY_PLUS_MEMBERS", null, null, str);
        }
        return this.sewaServiceRestClient.retrieveMembersForRIOnline(str, str, str, str, str, null, null, Integer.valueOf(this.offset), "FORTY_PLUS_MEMBERS", null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMemberSelectionScreen(Boolean bool, int i) {
        MaterialTextView listTitleView;
        AdapterView.OnItemClickListener onItemClickListener;
        MaterialTextView materialTextView;
        if (i != this.activeRequestId) {
            hideProcessDialog();
            return;
        }
        this.screen = MEMBER_SELECTION_SCREEN;
        MaterialTextView materialTextView2 = this.titleTextView;
        if (materialTextView2 != null) {
            this.bodyLayoutContainer.removeView(materialTextView2);
        }
        PagingListView pagingListView = this.paginatedListView;
        if (pagingListView != null) {
            this.bodyLayoutContainer.removeView(pagingListView);
        }
        MaterialTextView materialTextView3 = this.questionTextView;
        if (materialTextView3 != null) {
            this.bodyLayoutContainer.removeView(materialTextView3);
        }
        MaterialTextView materialTextView4 = this.noMemberTextView;
        if (materialTextView4 != null) {
            this.bodyLayoutContainer.removeView(materialTextView4);
        }
        LinearLayout linearLayout = this.notFoundCard;
        if (linearLayout != null) {
            this.bodyLayoutContainer.removeView(linearLayout);
            this.notFoundCard = null;
        }
        Button button = this.registerOnsiteButton;
        if (button != null) {
            this.bodyLayoutContainer.removeView(button);
            this.registerOnsiteButton = null;
        }
        boolean z = SERVICE_FORTY_PLUS_MEMBERS.equalsIgnoreCase(this.selectedService) && Boolean.TRUE.equals(bool);
        if (z && (materialTextView = this.onsiteHintView) != null) {
            materialTextView.setVisibility(8);
        }
        boolean zEqualsIgnoreCase = SERVICE_SENT_BY_CHO.equalsIgnoreCase(this.selectedService);
        if (!this.memberDataBeans.isEmpty()) {
            if (z) {
                listTitleView = createHintText(LabelConstants.NPCB_SELECT_MEMBER_HINT);
            } else {
                listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
            }
            this.questionTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            if (z) {
                addRegisterOnsiteButtonIfApplicable();
            }
            List<ListItemDataBean> listConvertMembersToListItems = convertMembersToListItems(this.memberDataBeans);
            if (zEqualsIgnoreCase) {
                onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m422xa5f12246(adapterView, view, i2, j);
                    }
                };
            } else {
                onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m423xa7277525(adapterView, view, i2, j);
                    }
                };
            }
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this, listConvertMembersToListItems, R.layout.listview_row_with_two_item, onItemClickListener, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            restoreDefaultFooterButton();
            if (zEqualsIgnoreCase) {
                this.footerLayout.setVisibility(8);
            } else {
                this.nextButton.setText("Next");
                this.nextButton.setOnClickListener(this);
                this.footerLayout.setVisibility(0);
            }
        } else {
            restoreDefaultFooterButton();
            if (z) {
                this.footerLayout.setVisibility(8);
                addNotFoundCard();
            } else {
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
                this.noMemberTextView = materialTextViewGenerateInstructionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m424xa85dc804(view);
                    }
                });
                this.footerLayout.setVisibility(0);
            }
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setMemberSelectionScreen$21$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m422xa5f12246(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
        this.selectedMember = this.memberDataBeans.get(i);
        setSubTitle(null);
        handleMemberSelection();
    }

    /* renamed from: lambda$setMemberSelectionScreen$22$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m423xa7277525(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
    }

    /* renamed from: lambda$setMemberSelectionScreen$23$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m424xa85dc804(View view) {
        navigateToHomeScreen(false);
    }

    private List<ListItemDataBean> convertMembersToListItems(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), null, null, memberDataBean.getImtMemberNpcbStatus() != null));
            }
        }
        return arrayList;
    }

    private void startDynamicFormActivity() {
        this.screen = MEMBER_DETAILS_SCREEN;
        this.formMetaDataUtil.setMetaDataForNPCBFormsFromOnline(this.selectedMember);
        if (this.onsiteRegistrationMode) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NPCB_ONSITE_REGISTRATION, MorbiditiesConstant.ONE_PLUS);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, "On-site Member Added");
        }
        if (this.rbskOnsiteRegistration) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NPCB_RBSK_ONSITE_REGISTRATION, MorbiditiesConstant.ONE_PLUS);
            if (this.rbskScreeningStudentDetailsId != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NPCB_RBSK_STUDENT_DETAILS_ID, String.valueOf(this.rbskScreeningStudentDetailsId));
            }
        }
        if (this.rbskReferredScreening) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NPCB_SCHOOL_DETAILS_KNOWN, MorbiditiesConstant.ONE_PLUS);
        }
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        if (SERVICE_SENT_BY_CHO_FOR_FOLLOW_UP.equalsIgnoreCase(this.selectedService)) {
            intent.putExtra("entity", FormConstants.CHO_NPCB_FU);
        } else if (SERVICE_APPROVAL_SECTION.equalsIgnoreCase(this.selectedService)) {
            intent.putExtra("entity", FormConstants.NPCB_SPECTS_APPROVAL);
        } else {
            intent.putExtra("entity", "OA_NPCB");
        }
        startActivityForResult(intent, REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY);
    }

    void restoreDefaultFooterButton() {
        this.footerLayout.setOrientation(0);
        this.nextButton.setVisibility(0);
        this.nextButton.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    }

    private void resetRbskReferredState() {
        this.rbskReferredMembers = new ArrayList();
        this.rbskOffset = 0;
        this.rbskSearchString = null;
        this.rbskListView = null;
        this.rbskTitleRow = null;
        this.rbskEmptyView = null;
        this.rbskSearchInputLayout = null;
    }

    private LinearLayout buildTitleRowWithInfo(MaterialTextView materialTextView, final String str) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        materialTextView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(materialTextView);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_info_black);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(android.R.attr.selectableItemBackgroundBorderless, typedValue, true);
        imageView.setBackgroundResource(typedValue.resourceId);
        int iDpToPx = dpToPx(20);
        int iDpToPx2 = dpToPx(8);
        imageView.setPadding(iDpToPx2, iDpToPx2, iDpToPx2, iDpToPx2);
        int i = iDpToPx + (iDpToPx2 * 2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.setMarginStart(dpToPx(4));
        imageView.setLayoutParams(layoutParams);
        imageView.setContentDescription(UtilBean.getMyLabel("Info"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m408x7f0141d1(str, view);
            }
        });
        linearLayout.addView(imageView);
        return linearLayout;
    }

    /* renamed from: lambda$buildTitleRowWithInfo$24$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m408x7f0141d1(String str, View view) {
        showInfoDialog(str);
    }

    private int dpToPx(int i) {
        return Math.round(i * getResources().getDisplayMetrics().density);
    }

    private void showInfoDialog(String str) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(str), null, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws InterruptedException {
        super.onActivityResult(i, i2, intent);
        this.bodyLayoutContainer.removeAllViews();
        if (i == REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY) {
            boolean z = this.onsiteRegistrationMode || this.rbskOnsiteRegistration;
            String stringExtra = intent != null ? intent.getStringExtra(SewaConstants.STORED_FORM_CHECKSUM) : null;
            doUpdate(false);
            if (i2 == -1 && z && stringExtra != null) {
                awaitAndShowTechoId(stringExtra);
            }
            setServiceSelectionScreen();
            return;
        }
        navigateToHomeScreen(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void awaitAndShowTechoId(String str) throws InterruptedException {
        String generatedId;
        int i = 0;
        while (true) {
            if (i >= 20) {
                break;
            }
            try {
                Thread.sleep(TECHO_ID_POLL_INTERVAL_MS);
                LoggerBean loggerBeanRetrieveLoggerBeanByChecksum = this.sewaService.retrieveLoggerBeanByChecksum(str);
                if (loggerBeanRetrieveLoggerBeanByChecksum == null || "P".equalsIgnoreCase(loggerBeanRetrieveLoggerBeanByChecksum.getStatus())) {
                    i++;
                } else {
                    generatedId = "S".equalsIgnoreCase(loggerBeanRetrieveLoggerBeanByChecksum.getStatus()) ? loggerBeanRetrieveLoggerBeanByChecksum.getGeneratedId() : null;
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        showTechoIdResult(generatedId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showTechoIdResult(String str) {
        if (str != null && !str.trim().isEmpty()) {
            showAlert(LabelConstants.NPCB_TECHO_ID_DIALOG_TITLE, UtilBean.getMyLabel(LabelConstants.NPCB_TECHO_ID_DIALOG_PREFIX) + str + UtilBean.getMyLabel(LabelConstants.NPCB_TECHO_ID_DIALOG_SUFFIX), null, DynamicUtils.BUTTON_OK);
            return;
        }
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NPCB_TECHO_ID_PENDING_SYNC));
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        setSubTitle(null);
        if (SERVICE_SELECTION_SCREEN.equals(this.screen)) {
            navigateToHomeScreen(false);
        } else if (MEMBER_SELECTION_SCREEN.equals(this.screen) || RBSK_REFERRED_SCREEN.equals(this.screen)) {
            setServiceSelectionScreen();
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoadMoreBackground() {
        try {
            if (SERVICE_SENT_BY_RBSK.equalsIgnoreCase(this.selectedService)) {
                List<RbskVisionReferredMemberBean> rBSKVisionImpairmentReferredMembers = this.sewaServiceRestClient.getRBSKVisionImpairmentReferredMembers(30, Integer.valueOf(this.rbskOffset), this.rbskSearchString);
                if (rBSKVisionImpairmentReferredMembers != null && !rBSKVisionImpairmentReferredMembers.isEmpty()) {
                    this.rbskOffset += 30;
                    onLoadMoreRbskUi(rBSKVisionImpairmentReferredMembers);
                    return;
                } else {
                    if (rBSKVisionImpairmentReferredMembers != null) {
                        onLoadMoreRbskUi(new ArrayList());
                        return;
                    }
                    return;
                }
            }
            List<MemberDataBean> onlineFollowUpNPCBMembers = null;
            if (SERVICE_SENT_BY_CHO.equalsIgnoreCase(this.selectedService)) {
                onlineFollowUpNPCBMembers = this.sewaServiceRestClient.getNPCBMembersSentByCHO(null, 30, Integer.valueOf(this.offset), this.searchString);
            } else if (SERVICE_APPROVAL_SECTION.equalsIgnoreCase(this.selectedService)) {
                onlineFollowUpNPCBMembers = this.sewaServiceRestClient.getNPCBMembersForSpectsApproval(null, 30, Integer.valueOf(this.offset), this.searchString);
            } else if (SERVICE_FORTY_PLUS_MEMBERS.equalsIgnoreCase(this.selectedService)) {
                onlineFollowUpNPCBMembers = searchFortyPlusMembers(this.searchString, this.currentSearchType);
            } else if (SERVICE_SENT_BY_CHO_FOR_FOLLOW_UP.equalsIgnoreCase(this.selectedService)) {
                onlineFollowUpNPCBMembers = this.sewaServiceRestClient.getOnlineFollowUpNPCBMembers(null, 30, Integer.valueOf(this.offset), this.searchString);
            }
            if (onlineFollowUpNPCBMembers != null && !onlineFollowUpNPCBMembers.isEmpty()) {
                this.offset += 30;
                onLoadMoreUi(onlineFollowUpNPCBMembers);
            } else if (onlineFollowUpNPCBMembers != null) {
                onLoadMoreUi(new ArrayList());
            }
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(getClass().getSimpleName(), "Error loading more members: " + e.getMessage());
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m413x98bb8a8e(e);
                }
            });
        }
    }

    /* renamed from: lambda$onLoadMoreBackground$25$com-argusoft-sewa-android-app-activity-NPCBScreeningOA, reason: not valid java name */
    /* synthetic */ void m413x98bb8a8e(RestHttpException restHttpException) {
        if (SERVICE_SENT_BY_RBSK.equalsIgnoreCase(this.selectedService)) {
            PagingListView pagingListView = this.rbskListView;
            if (pagingListView != null) {
                pagingListView.onFinishLoadingWithItem(false, null);
            }
        } else {
            PagingListView pagingListView2 = this.paginatedListView;
            if (pagingListView2 != null) {
                pagingListView2.onFinishLoadingWithItem(false, null);
            }
        }
        SewaUtil.generateToast(this, "Error loading more members: " + restHttpException.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoadMoreUi(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> listConvertMembersToListItems = convertMembersToListItems(list);
            this.memberDataBeans.addAll(list);
            PagingListView pagingListView = this.paginatedListView;
            if (pagingListView != null) {
                pagingListView.onFinishLoadingWithItem(true, listConvertMembersToListItems);
                return;
            }
            return;
        }
        PagingListView pagingListView2 = this.paginatedListView;
        if (pagingListView2 != null) {
            pagingListView2.onFinishLoadingWithItem(false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoadMoreRbskUi(List<RbskVisionReferredMemberBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> listConvertRbskMembersToListItems = convertRbskMembersToListItems(list);
            this.rbskReferredMembers.addAll(list);
            PagingListView pagingListView = this.rbskListView;
            if (pagingListView != null) {
                pagingListView.onFinishLoadingWithItem(true, listConvertRbskMembersToListItems);
                return;
            }
            return;
        }
        PagingListView pagingListView2 = this.rbskListView;
        if (pagingListView2 != null) {
            pagingListView2.onFinishLoadingWithItem(false, null);
        }
    }
}
