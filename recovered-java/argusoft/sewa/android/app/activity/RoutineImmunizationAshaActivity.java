package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LocationBeanAllAreaSelectionComponent;
import com.argusoft.sewa.android.app.component.LocationSelectionComponent;
import com.argusoft.sewa.android.app.component.LocationSelectionFromDistrictComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.component.SearchComponent;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.core.impl.CampaignSessionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.HealthInfraTypeLocationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.HealthInfrastructureServiceImpl;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.UserServiceImpl;
import com.argusoft.sewa.android.app.databean.CampaignSessionDataBean;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class RoutineImmunizationAshaActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String CAMPAIGN_SELECTION_SCREEN = "CAMPAIGN_SELECTION_SCREEN";
    private static final long DELAY = 500;
    private static final String IMMUNISATION_INVENTORY_SCREEN = "IMMUNISATION_INVENTORY_SCREEN";
    private static final long LIMIT = 30;
    private static final String LOCATION_SCREEN = "LOCATION_SCREEN";
    private static final String LOCATION_SELECTION_SCREEN = "locationSelectionScreen";
    private static final String MEMBER_DETAILS_TO_ASHA_USER_SCREEN = "MEMBER_DETAILS_TO_ASHA_USER_SCREEN";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String MEMBER_TYPE_SCREEN = "memberTypeScreen";
    private static final String NOTIFICATION_DISPLAY_SCREEN = "notificationDisplayScreen";
    private static final String SERVICE_CHILDREN_ABOVE_5 = "childrenAbove5";
    private static final String SERVICE_CHILDREN_UPTO_5 = "childrenUpto5";
    private static final String SERVICE_ELIGIBLE_COUPLES = "eligibleCouples";
    private static final String SERVICE_NEWLY_WED = "newlyWed";
    private static final String SERVICE_PNC_MOTHERS = "pncMothers";
    private static final String SERVICE_PREGNANCY_OUTCOME = "pregnancyOutcome";
    private static final String SERVICE_PREGNANT_WOMEN = "pregnantWomen";
    private static final String TAG = "RIActivity";
    private static final String VISIT_SELECTION_SCREEN = "visitSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    private ListView buttonList;
    private List<CampaignMasterBean> campaignMasterBeans;
    CampaignSessionServiceImpl campaignSessionService;
    private Date dateForOfflineSearch;
    private Map<Integer, CampaignMasterBean> dayNumWithCampaignMap;
    private LocationSelectionFromDistrictComponent districtComponent;
    private FamilyDataBean familyDataBean;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    HealthInfraTypeLocationServiceImpl healthInfraTypeLocationService;
    HealthInfrastructureServiceImpl healthInfrastructureService;
    ImmunisationServiceImpl immunisationService;
    private HashMap<String, LinearLayout> inventoryMap;
    private Boolean isAsha;
    private Boolean isOnlineSearch;
    private LocationSelectionComponent locationComponent;
    private LocationBeanAllAreaSelectionComponent locationFilter;
    LocationMasterServiceImpl locationMasterService;
    private LocationSelectionComponent locationSelection;
    private LocationSelectionComponent locationSelectionForSession;
    Dao<MemberBean, Integer> memberBeanDao;
    private List<MemberDataBean> membersOfFamily;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableView;
    private PagingListView notificationListView;
    NotificationServiceImpl notificationService;
    private Map<String, Integer> notificationsCountMap;
    private Map<String, Integer> notificationsCountMapOtherService;
    private CampaignSessionBean ongoingSessionBean;
    private LinearLayout pagingHeaderView;
    private PagingListView pagingListView;
    private LinkedHashMap<String, String> qrScanFilter;
    SewaServiceRestClientImpl restClient;
    RoutineImmunisationServiceImpl routineImmunisationService;
    private String screen;
    private CharSequence search;
    private SearchComponent searchBox;
    private MaterialTextView selectOptionTv;
    private CampaignMasterBean selectedCampaign;
    private Integer selectedLocationId;
    private NotificationMobDataBean selectedNotification;
    private String selectedService;
    private CampaignSessionDataBean selectedSessionDataBean;
    private LinearLayout sessionButtonLayout;
    SewaServiceImpl sewaService;
    TechoAshaServiceImpl techoAshaService;
    private MaterialTextView titleView;
    UserServiceImpl userService;
    private List<String> visits;
    private static final Integer REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY = 2000;
    private static final Integer REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY = 2001;
    private long offset = 0;
    private Timer timer = new Timer();
    private int selectedServiceIndex = -1;
    private List<MemberDataBean> memberDataBeans = new ArrayList();
    private int selectedPeopleIndex = -1;
    private int selectedVisitIndex = -1;
    private boolean isScanAbha = false;
    private MemberDataBean memberSelected = null;
    private String memberType = null;
    private Map<String, Integer> servicesCountMap = new HashMap();
    private List<LocationBean> locationBeans = new ArrayList();
    private String selectedNotificationCode = null;
    private List<NotificationMobDataBean> notificationBeanList = new LinkedList();
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
    private List<LocationMasterBean> assignedLocations = new ArrayList();
    private List<Integer> assignedAreaIds = new ArrayList();
    private Map<Integer, String> mapOfAreaNameWithIdAsKey = new HashMap();

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        if (SewaTransformer.loginBean == null) {
            SewaTransformer.loginBean = this.userService.getLoginBeanFromDb();
        }
        this.isAsha = Boolean.valueOf("Asha".equalsIgnoreCase(SewaTransformer.loginBean.getUserRole()));
        SharedStructureData.isOnlineSearch = false;
        initView();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        resumeActivity();
        setTitle(UtilBean.getTitleText(LabelConstants.CAMPAIGN_ROUTINE_IMMUNISATION));
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
        setContentView(this.globalPanel);
        if (SharedStructureData.healthInfrastructureService == null) {
            SharedStructureData.healthInfrastructureService = this.healthInfrastructureService;
        }
        if (SharedStructureData.healthInfraTypeLocationService == null) {
            SharedStructureData.healthInfraTypeLocationService = this.healthInfraTypeLocationService;
        }
        retrieveCampaignSessionsByLocation();
    }

    private void checkForAssignedAreas() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.locationBeans = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.selectedLocationId = this.locationBeans.get(0).getActualID();
            this.bodyLayoutContainer.removeAllViews();
            retrieveCampaignSessionsByLocation();
        } else if (this.locationBeans.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            setLocationSelectionScreen();
        }
    }

    private void setLocationSelectionScreen() {
        this.screen = LOCATION_SELECTION_SCREEN;
        this.ongoingSessionBean = null;
        this.bodyLayoutContainer.removeAllViews();
        if (this.locationComponent == null) {
            this.locationComponent = new LocationSelectionComponent(this.context, this.locationMasterService, null);
        }
        this.bodyLayoutContainer.addView(this.locationComponent);
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    public void retrieveCampaignSessionsByLocation() {
        List<LocationMasterBean> listRetrieveAllAshaAreaAssignedToUser = this.locationMasterService.retrieveAllAshaAreaAssignedToUser();
        this.assignedLocations = listRetrieveAllAshaAreaAssignedToUser;
        if (!listRetrieveAllAshaAreaAssignedToUser.isEmpty()) {
            for (LocationMasterBean locationMasterBean : this.assignedLocations) {
                this.assignedAreaIds.add(Integer.valueOf(locationMasterBean.getActualID().intValue()));
                this.mapOfAreaNameWithIdAsKey.put(Integer.valueOf(locationMasterBean.getActualID().intValue()), locationMasterBean.getName());
            }
            CampaignSessionBean campaignSessionByLocationId = this.campaignSessionService.getCampaignSessionByLocationId(this.assignedAreaIds, Boolean.TRUE);
            this.ongoingSessionBean = campaignSessionByLocationId;
            this.campaignMasterBeans = this.campaignSessionService.getCampaignMasterByLocationId(this.assignedAreaIds, campaignSessionByLocationId);
            setCampaignSelectionScreen();
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m530xa6b3750b();
            }
        });
    }

    /* renamed from: lambda$retrieveCampaignSessionsByLocation$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m530xa6b3750b() {
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("No area assigned. Please re-sync the app or contact support."));
        hideProcessDialog();
    }

    public void setCampaignSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = CAMPAIGN_SELECTION_SCREEN;
        List<CampaignMasterBean> list = this.campaignMasterBeans;
        if (list != null && !list.isEmpty()) {
            this.dayNumWithCampaignMap = new HashMap();
            for (CampaignMasterBean campaignMasterBean : this.campaignMasterBeans) {
                this.dayNumWithCampaignMap.put(campaignMasterBean.getDayNumber(), campaignMasterBean);
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_CAMPAIGN));
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, getCampaignList(this.campaignMasterBeans), R.layout.custom_button_list, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda16
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m531xaa2cb519(adapterView, view, i, j);
                }
            }, null));
            this.footerLayout.setVisibility(8);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_CAMPAIGN_IN_THIS_YOUR_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
            this.footerLayout.setVisibility(0);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m532x2c7769f8(view);
                }
            });
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setCampaignSelectionScreen$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m531xaa2cb519(AdapterView adapterView, View view, int i, long j) {
        this.selectedCampaign = this.campaignMasterBeans.get(i);
        onClick(this.nextButton);
    }

    /* renamed from: lambda$setCampaignSelectionScreen$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m532x2c7769f8(View view) {
        setLocationSelectionScreen();
    }

    private List<ListItemDataBean> getCampaignList(List<CampaignMasterBean> list) {
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (CampaignMasterBean campaignMasterBean : list) {
            String str = this.mapOfAreaNameWithIdAsKey.get(campaignMasterBean.getLocationId());
            String dayNameFromNumber = UtilBean.getDayNameFromNumber(campaignMasterBean.getDayNumber().intValue());
            boolean zBooleanValue = Boolean.FALSE.booleanValue();
            String str2 = this.sdf.format(getSelectedCampaignDate(campaignMasterBean));
            if (str == null) {
                str = LabelConstants.N_A;
            }
            arrayList.add(new ListItemDataBean(dayNameFromNumber, zBooleanValue, str2, str));
        }
        return arrayList;
    }

    public void addMemberTypeScreen(CampaignMasterBean campaignMasterBean) {
        showProcessDialog();
        this.screen = MEMBER_TYPE_SCREEN;
        this.selectedServiceIndex = -1;
        this.isScanAbha = false;
        this.footerLayout.setVisibility(8);
        this.bodyLayoutContainer.removeAllViews();
        retrieveCountsForEachNotificationType(Collections.singletonList(campaignMasterBean.getLocationId()), campaignMasterBean);
        hideProcessDialog();
    }

    public void retrieveCountsForEachNotificationType(List<Integer> list, CampaignMasterBean campaignMasterBean) {
        this.selectedNotificationCode = null;
        this.notificationsCountMap = this.notificationService.retrieveCountForNotificationTypeBasedOnCampaign(null, list, getSelectedCampaignDate(campaignMasterBean));
        this.notificationsCountMapOtherService = this.notificationService.retrieveCountForAshaDptBoosterNotificationBasedOnCampaign(list, getSelectedCampaignDate(campaignMasterBean));
        setServiceListView();
    }

    public void onServiceSelectionClick() {
        int i = this.selectedServiceIndex;
        if (i == -1) {
            SewaUtil.generateToast(this, UtilBean.getMyLabel("Please select a type of service"));
            return;
        }
        if (i == 0) {
            this.selectedService = SERVICE_CHILDREN_UPTO_5;
            this.memberType = "C";
            this.selectedNotificationCode = FormConstants.ASHA_CS;
        } else if (i == 1) {
            this.selectedService = SERVICE_CHILDREN_ABOVE_5;
            this.memberType = SewaConstants.CHILDREN_5_PLUS;
            this.selectedNotificationCode = "DPT_BOOSTER_2_ALERT";
        } else if (i == 2) {
            this.selectedService = SERVICE_PREGNANT_WOMEN;
            this.memberType = SewaConstants.PREGNANT_WOMEN;
            this.selectedNotificationCode = FormConstants.ASHA_ANC;
        } else if (i == 3) {
            this.selectedService = SERVICE_PNC_MOTHERS;
            this.memberType = SewaConstants.PNC_MOTHER;
            this.selectedNotificationCode = FormConstants.ASHA_PNC;
        }
        this.qrScanFilter = null;
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        setHeaderForMemberScreen();
        addSearchTextBox();
        if (this.selectedServiceIndex == 1) {
            retrieveMembersForDPTAlertFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
        } else {
            retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
        }
    }

    public void retrieveInitialNotificationsFromDB(String str, CharSequence charSequence, long j, long j2) {
        this.selectedNotification = null;
        this.search = charSequence;
        this.offset = 0L;
        try {
            this.notificationBeanList = this.notificationService.retrieveNotificationsForUserAsPerCampaignDate(this.assignedAreaIds, null, str, charSequence, LIMIT, 0L, getSelectedCampaignDate(this.selectedCampaign));
            this.offset += LIMIT;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        addNotificationDisplayScreen(charSequence != null);
    }

    public void retrieveMembersForDPTAlertFromDB(String str, CharSequence charSequence, long j, long j2) {
        this.selectedNotification = null;
        this.search = charSequence;
        this.offset = 0L;
        try {
            this.memberDataBeans = this.notificationService.retrieveMembersForDPTAlertForAshaAsPerCampaign(Collections.singletonList(this.selectedCampaign.getLocationId()), getSelectedCampaignDate(this.selectedCampaign), this.search, null, null, null, LIMIT, this.offset);
            this.offset += LIMIT;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        addDPTMembersScreen(charSequence != null);
    }

    public void addNotificationDisplayScreen(boolean z) {
        this.screen = NOTIFICATION_DISPLAY_SCREEN;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        List<NotificationMobDataBean> list = this.notificationBeanList;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_NOTIFICATION_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m521x43229bb(view);
                }
            });
            if (z) {
                return;
            }
            hideProcessDialog();
            return;
        }
        String str = this.selectedNotificationCode;
        if (str != null && str.equals(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN)) {
            this.titleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
        } else {
            this.titleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_BENEFICIARY);
        }
        this.bodyLayoutContainer.addView(this.titleView);
        new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda7
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m522x867cde9a(adapterView, view, i, j);
            }
        };
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsForNotificationList(this.notificationBeanList), R.layout.listview_row_with_date_and_info, null, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        this.nextButton.setText("Okay");
        this.nextButton.setOnClickListener(this);
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addNotificationDisplayScreen$3$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m521x43229bb(View view) {
        addMemberTypeScreen(this.selectedCampaign);
    }

    /* renamed from: lambda$addNotificationDisplayScreen$4$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m522x867cde9a(AdapterView adapterView, View view, int i, long j) {
        if (this.notificationBeanList.size() > i) {
            this.selectedNotification = this.notificationBeanList.get(i);
        }
    }

    public void addDPTMembersScreen(boolean z) {
        this.screen = NOTIFICATION_DISPLAY_SCREEN;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        List<MemberDataBean> list = this.memberDataBeans;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_NOTIFICATION_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m519xe0f393b7(view);
                }
            });
            if (z) {
                return;
            }
            hideProcessDialog();
            return;
        }
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_BENEFICIARY);
        this.titleView = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda12
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m520x633e4896(adapterView, view, i, j);
            }
        };
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsFoDPTMembersList(this.memberDataBeans), R.layout.listview_row_with_date_and_info, null, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        this.nextButton.setText("Okay");
        this.nextButton.setOnClickListener(this);
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addDPTMembersScreen$5$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m519xe0f393b7(View view) {
        addMemberTypeScreen(this.selectedCampaign);
    }

    /* renamed from: lambda$addDPTMembersScreen$6$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m520x633e4896(AdapterView adapterView, View view, int i, long j) {
        if (this.notificationBeanList.size() > i) {
            this.selectedNotification = this.notificationBeanList.get(i);
        }
    }

    private List<ListItemDataBean> getListViewItemsForNotificationList(List<NotificationMobDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : list) {
            notificationMobDataBean.setOverdueFlag(Boolean.valueOf(notificationMobDataBean.getExpectedDueDate() != null && new Date(notificationMobDataBean.getExpectedDueDate().longValue()).before(new Date())));
            new Gson();
            String task = notificationMobDataBean.getTask();
            task.hashCode();
            boolean zEquals = task.equals(FormConstants.ASHA_CS);
            String mobileNumber = LabelConstants.N_A;
            if (zEquals) {
                MemberDataBean memberDataBean = new MemberDataBean(this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId()));
                MemberBean memberBeanRetrieveMemberBeanByActualId = memberDataBean.getMotherId() != null ? this.fhsService.retrieveMemberBeanByActualId(memberDataBean.getMotherId()) : null;
                MemberDataBean memberDataBeanRetrieveHeadMemberDataBeanByFamilyId = this.fhsService.retrieveHeadMemberDataBeanByFamilyId(memberDataBean.getFamilyId());
                if (memberBeanRetrieveMemberBeanByActualId != null && memberBeanRetrieveMemberBeanByActualId.getMobileNumber() != null) {
                    mobileNumber = memberBeanRetrieveMemberBeanByActualId.getMobileNumber();
                } else if (memberDataBeanRetrieveHeadMemberDataBeanByFamilyId != null && memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber() != null) {
                    mobileNumber = memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber();
                }
                String str = mobileNumber;
                String strConvertDateToString = notificationMobDataBean.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean.getExpectedDueDate().longValue(), false, false, true) : null;
                setDueVaccinesCountInMemberBean(memberDataBean);
                arrayList.add(new ListItemDataBean(strConvertDateToString, memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), "Mob No", str, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean.getDob()), null, LabelConstants.DUE_VACCINES, ((memberDataBean.getDueVaccines() == null || memberDataBean.getDueVaccines().isEmpty()) ? UtilBean.getMyLabel(LabelConstants.NO_DUE_VACCINES) : memberDataBean.getDueVaccines()).substring(0, r5.length() - 2), notificationMobDataBean.getOverdueFlag().booleanValue()));
            } else {
                MemberDataBean memberDataBean2 = new MemberDataBean(this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId()));
                String strConvertDateToString2 = notificationMobDataBean.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean.getExpectedDueDate().longValue(), false, false, true) : null;
                MemberDataBean memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2 = this.fhsService.retrieveHeadMemberDataBeanByFamilyId(memberDataBean2.getFamilyId());
                if (memberDataBean2.getMobileNumber() != null) {
                    mobileNumber = memberDataBean2.getMobileNumber();
                } else if (memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2 != null && memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2.getMobileNumber() != null) {
                    mobileNumber = memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2.getMobileNumber();
                }
                arrayList.add(new ListItemDataBean(strConvertDateToString2, memberDataBean2.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean2), "Mob No", mobileNumber, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean2.getDob()), null, null, null, notificationMobDataBean.getOverdueFlag().booleanValue()));
            }
        }
        return arrayList;
    }

    private List<ListItemDataBean> getListViewItemsFoDPTMembersList(List<MemberDataBean> list) {
        String mobileNumber;
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date(memberDataBean.getDob().longValue()));
            calendar.add(1, 5);
            calendar.add(2, 3);
            boolean z = memberDataBean.getDob() != null && calendar.getTime().after(getSelectedCampaignDate(this.selectedCampaign));
            String strConvertDateToString = UtilBean.convertDateToString(calendar.getTime().getTime(), false, false, true);
            MemberBean memberBeanRetrieveMemberBeanByActualId = memberDataBean.getMotherId() != null ? this.fhsService.retrieveMemberBeanByActualId(memberDataBean.getMotherId()) : null;
            MemberDataBean memberDataBeanRetrieveHeadMemberDataBeanByFamilyId = this.fhsService.retrieveHeadMemberDataBeanByFamilyId(memberDataBean.getFamilyId());
            if (memberBeanRetrieveMemberBeanByActualId == null || memberBeanRetrieveMemberBeanByActualId.getMobileNumber() == null) {
                mobileNumber = (memberDataBeanRetrieveHeadMemberDataBeanByFamilyId == null || memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber() == null) ? LabelConstants.N_A : memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber();
            } else {
                mobileNumber = memberBeanRetrieveMemberBeanByActualId.getMobileNumber();
            }
            arrayList.add(new ListItemDataBean(strConvertDateToString, memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), "Mob No", mobileNumber, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean.getDob()), null, null, null, z));
        }
        return arrayList;
    }

    public void setMemberSelectionScreen() {
        showProcessDialog();
        this.screen = MEMBER_SELECTION_SCREEN;
        addSelectedServiceMemberList();
    }

    public void addSelectedServiceMemberList() {
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.footerLayout.setVisibility(0);
        String str = this.selectedService;
        str.hashCode();
        switch (str) {
            case "childrenAbove5":
            case "childrenUpto5":
                addChildrenListView(false);
                break;
            case "pregnantWomen":
                addPregnantWomenListView(false);
                break;
            case "pncMothers":
                addPncWomenListView();
                break;
        }
        List<MemberDataBean> list = this.memberDataBeans;
        if (list == null || list.isEmpty()) {
            this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.MAIN_MENU));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m528x7cadad28(view);
                }
            });
        } else {
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        }
    }

    /* renamed from: lambda$addSelectedServiceMemberList$7$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m528x7cadad28(View view) {
        navigateToHomeScreen(false);
    }

    private void setHeaderForMemberScreen() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
    }

    private void addSearchTextBox() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(SearchComponent.SearchTypes.NAME);
        arrayList.add(SearchComponent.SearchTypes.MOBILE_NUMBER);
        arrayList.add("ABHA_NUMBER");
        arrayList.add(SearchComponent.SearchTypes.MEMBER_ID);
        arrayList.add(SearchComponent.SearchTypes.FAMILY_ID);
        arrayList.add(SearchComponent.SearchTypes.DOB);
        arrayList.add("LOCATION");
        SearchComponent searchComponent = new SearchComponent(this.context, UtilBean.getMyLabel("Enter text and click search icon to search online"), null, arrayList, null, null, this.locationMasterService);
        this.searchBox = searchComponent;
        searchComponent.setPadding(0, 10, 0, 0);
        this.searchBox.addTextWatcherInEditText(getTextWatcherForOfflineSearch());
        this.searchBox.addOnDateSetListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m525xe874c298(view);
            }
        });
        this.bodyLayoutContainer.addView(this.searchBox);
    }

    /* renamed from: lambda$addSearchTextBox$10$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m525xe874c298(View view) {
        if (this.selectedServiceIndex == 1) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m526x46de8f83();
                }
            });
        } else {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m527xc9294462();
                }
            });
        }
    }

    /* renamed from: lambda$addSearchTextBox$8$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m526x46de8f83() {
        retrieveMembersForDPTAlertFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
    }

    /* renamed from: lambda$addSearchTextBox$9$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m527xc9294462() {
        retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
    }

    private TextWatcher getTextWatcherForOfflineSearch() {
        return new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                RoutineImmunizationAshaActivity.this.timer.cancel();
                RoutineImmunizationAshaActivity.this.timer = new Timer();
                RoutineImmunizationAshaActivity.this.timer.schedule(new C00581(charSequence), RoutineImmunizationAshaActivity.DELAY);
            }

            /* renamed from: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$1$1, reason: invalid class name and collision with other inner class name */
            class C00581 extends TimerTask {
                final /* synthetic */ CharSequence val$s;

                C00581(CharSequence charSequence) {
                    this.val$s = charSequence;
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence = this.val$s;
                    if (charSequence != null && charSequence.length() > 2) {
                        if (RoutineImmunizationAshaActivity.this.selectedServiceIndex == 1) {
                            RoutineImmunizationAshaActivity routineImmunizationAshaActivity = RoutineImmunizationAshaActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            routineImmunizationAshaActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m535x8114e8e9(charSequence2);
                                }
                            });
                            return;
                        } else {
                            RoutineImmunizationAshaActivity routineImmunizationAshaActivity2 = RoutineImmunizationAshaActivity.this;
                            final CharSequence charSequence3 = this.val$s;
                            routineImmunizationAshaActivity2.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m536xc32c1648(charSequence3);
                                }
                            });
                            return;
                        }
                    }
                    CharSequence charSequence4 = this.val$s;
                    if (charSequence4 == null || charSequence4.length() == 0) {
                        RoutineImmunizationAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m537x54343a7();
                            }
                        });
                    }
                }

                /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity$1$1, reason: not valid java name */
                /* synthetic */ void m535x8114e8e9(CharSequence charSequence) {
                    RoutineImmunizationAshaActivity.this.retrieveMembersForDPTAlertFromDB(RoutineImmunizationAshaActivity.this.selectedNotificationCode, charSequence, RoutineImmunizationAshaActivity.LIMIT, RoutineImmunizationAshaActivity.this.offset);
                }

                /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity$1$1, reason: not valid java name */
                /* synthetic */ void m536xc32c1648(CharSequence charSequence) {
                    RoutineImmunizationAshaActivity.this.retrieveInitialNotificationsFromDB(RoutineImmunizationAshaActivity.this.selectedNotificationCode, charSequence, RoutineImmunizationAshaActivity.LIMIT, RoutineImmunizationAshaActivity.this.offset);
                }

                /* renamed from: lambda$run$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity$1$1, reason: not valid java name */
                /* synthetic */ void m537x54343a7() {
                    RoutineImmunizationAshaActivity.this.showProcessDialog();
                    RoutineImmunizationAshaActivity.this.offset = 0L;
                    if (RoutineImmunizationAshaActivity.this.selectedServiceIndex == 1) {
                        RoutineImmunizationAshaActivity.this.retrieveMembersForDPTAlertFromDB(RoutineImmunizationAshaActivity.this.selectedNotificationCode, null, RoutineImmunizationAshaActivity.LIMIT, RoutineImmunizationAshaActivity.this.offset);
                    } else {
                        RoutineImmunizationAshaActivity.this.retrieveInitialNotificationsFromDB(RoutineImmunizationAshaActivity.this.selectedNotificationCode, null, RoutineImmunizationAshaActivity.LIMIT, RoutineImmunizationAshaActivity.this.offset);
                    }
                }
            }
        };
    }

    public void retrieveMemberCountForServices(Integer num) {
        this.servicesCountMap = new HashMap();
        this.isOnlineSearch = false;
        SharedStructureData.isOnlineSearch = false;
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity.2
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity.this.showProcessDialog();
            }
        });
        this.servicesCountMap = this.routineImmunisationService.retrieveCountForRIServices(num);
        setServiceListView();
    }

    public void setServiceListView() {
        this.bodyLayoutContainer.removeView(this.selectOptionTv);
        this.bodyLayoutContainer.removeView(this.buttonList);
        this.memberDataBeans.clear();
        this.notificationBeanList.clear();
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m533x2d03a8f8(adapterView, view, i, j);
            }
        };
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_CHILDREN_0_TO_5) + "(" + setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.ASHA_CS)) + ")");
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_CHILDREN_5_TO_7) + "(" + setNotificationCountFromMap(this.notificationsCountMapOtherService.get("DPT_BOOSTER_2_ALERT")) + ")");
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_DUE_PREGNANT_WOMEN) + "(" + setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.ASHA_ANC)) + ")");
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_DUE_PNC_WOMEN) + "(" + setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.ASHA_PNC)) + ")");
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, "Please select an option");
        this.selectOptionTv = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        ListView buttonList = MyStaticComponents.getButtonList(this.context, arrayList, onItemClickListener);
        this.buttonList = buttonList;
        this.bodyLayoutContainer.addView(buttonList);
        hideProcessDialog();
    }

    /* renamed from: lambda$setServiceListView$11$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m533x2d03a8f8(AdapterView adapterView, View view, int i, long j) {
        this.selectedServiceIndex = i;
        onServiceSelectionClick();
    }

    private String setNotificationCountFromMap(Integer num) {
        if (num != null) {
            return num.toString();
        }
        return null;
    }

    private Date getSelectedCampaignDate(CampaignMasterBean campaignMasterBean) {
        if (campaignMasterBean != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(4, campaignMasterBean.getWeekNumber().intValue());
            calendar.set(7, campaignMasterBean.getDayNumber().intValue() + 1);
            return calendar.getTime();
        }
        return new Date();
    }

    private List<MemberDataBean> getChildrenListFromDataBase() {
        ArrayList arrayList = new ArrayList();
        List<MemberDataBean> arrayList2 = new ArrayList<>();
        if (this.selectedService.equalsIgnoreCase(SERVICE_CHILDREN_UPTO_5)) {
            arrayList2 = this.routineImmunisationService.retrieveChildrenForRoutineImmunisation(this.search, LIMIT, this.offset, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, Collections.singletonList(this.selectedCampaign.getLocationId()), Boolean.FALSE);
        }
        if (this.selectedService.equalsIgnoreCase(SERVICE_CHILDREN_ABOVE_5)) {
            arrayList2 = this.routineImmunisationService.retrieveChildrenForRoutineImmunisation(this.search, LIMIT, this.offset, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, Collections.singletonList(this.selectedCampaign.getLocationId()), Boolean.TRUE);
        }
        for (MemberDataBean memberDataBean : arrayList2) {
            setDueVaccinesCountInMemberBean(memberDataBean);
            arrayList.add(memberDataBean);
        }
        return arrayList;
    }

    private List<MemberDataBean> getPregnantWomenListFromDatabase() {
        List<MemberDataBean> listRetrievePregnantWomenForRoutineImmunisation = this.routineImmunisationService.retrievePregnantWomenForRoutineImmunisation(this.search, LIMIT, this.offset, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, Collections.singletonList(this.selectedCampaign.getLocationId()));
        if (listRetrievePregnantWomenForRoutineImmunisation != null && !listRetrievePregnantWomenForRoutineImmunisation.isEmpty()) {
            return new ArrayList(listRetrievePregnantWomenForRoutineImmunisation);
        }
        return Collections.emptyList();
    }

    public void addChildrenListView(boolean z) {
        List<MemberDataBean> list = this.memberDataBeans;
        if (list != null && !list.isEmpty()) {
            if (this.selectedServiceIndex == 0) {
                this.pagingHeaderView = MyStaticComponents.getTitleWithCountView(this, LabelConstants.SELECT_CHILD, this.servicesCountMap.get(SERVICE_CHILDREN_UPTO_5));
            } else {
                this.pagingHeaderView = MyStaticComponents.getTitleWithCountView(this, LabelConstants.SELECT_CHILD, this.servicesCountMap.get(SERVICE_CHILDREN_ABOVE_5));
            }
            this.bodyLayoutContainer.addView(this.pagingHeaderView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberListItem(this.memberDataBeans), R.layout.listview_row_with_due_vaccine, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda14
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m518xa9f1ce8a(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_CHILD_MEMBER_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addChildrenListView$12$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m518xa9f1ce8a(AdapterView adapterView, View view, int i, long j) {
        if (this.memberDataBeans.size() > i) {
            this.selectedPeopleIndex = i;
        }
    }

    public void addPregnantWomenListView(boolean z) {
        List<MemberDataBean> list = this.memberDataBeans;
        if (list != null && !list.isEmpty()) {
            LinearLayout titleWithCountView = MyStaticComponents.getTitleWithCountView(this, LabelConstants.SELECT_PREGNANT_WOMEN, this.servicesCountMap.get(this.selectedService));
            this.pagingHeaderView = titleWithCountView;
            this.bodyLayoutContainer.addView(titleWithCountView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberListItem(this.memberDataBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda13
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m524xd6c3c3c3(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_PREGNANT_WOMEN_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addPregnantWomenListView$13$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m524xd6c3c3c3(AdapterView adapterView, View view, int i, long j) {
        if (this.memberDataBeans.size() > i) {
            this.selectedPeopleIndex = i;
        }
    }

    public void addPncWomenListView() {
        List<MemberDataBean> list = this.memberDataBeans;
        if (list != null && !list.isEmpty()) {
            LinearLayout titleWithCountView = MyStaticComponents.getTitleWithCountView(this, "Select a PNC Mother", this.servicesCountMap.get(SERVICE_PNC_MOTHERS));
            this.pagingHeaderView = titleWithCountView;
            this.bodyLayoutContainer.addView(titleWithCountView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberListItem(this.memberDataBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda9
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m523x309bca2(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_PNC_WOMEN_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addPncWomenListView$14$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m523x309bca2(AdapterView adapterView, View view, int i, long j) {
        if (this.memberDataBeans.size() > i) {
            this.selectedPeopleIndex = i;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private List<ListItemDataBean> getMemberListItem(List<MemberDataBean> list) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        String str = this.selectedService;
        str.hashCode();
        switch (str) {
            case "childrenAbove5":
            case "childrenUpto5":
                for (MemberDataBean memberDataBean : list) {
                    String dueVaccines = memberDataBean.getDueVaccines();
                    if (dueVaccines != null) {
                        arrayList.add(new ListItemDataBean((String) null, memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, UtilBean.getMotherAndFatherNameForListDisplay(memberDataBean, this.fhsService), UtilBean.getMyLabel(LabelConstants.DUE_VACCINES) + " - " + dueVaccines.substring(0, dueVaccines.length() - 2), false));
                    } else {
                        arrayList.add(new ListItemDataBean((String) null, memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, UtilBean.getMotherAndFatherNameForListDisplay(memberDataBean, this.fhsService), UtilBean.getMyLabel(LabelConstants.NO_DUE_VACCINES), false));
                    }
                }
                return arrayList;
            case "pregnantWomen":
            case "pncMothers":
                for (MemberDataBean memberDataBean2 : list) {
                    arrayList.add(new ListItemDataBean(memberDataBean2.getFamilyId(), memberDataBean2.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean2), LabelConstants.VISIT, UtilBean.getNotAvailableIfNull(getVisitNumberByLmpDate(memberDataBean2.getLmpDate())), false, Boolean.TRUE.equals(memberDataBean2.getHighRiskCase())));
                }
                return arrayList;
            default:
                return arrayList;
        }
    }

    private Integer getVisitNumberByLmpDate(Long l) {
        if (l == null) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(new Date(l.longValue()));
        calendar2.add(5, 28);
        Calendar calendar3 = Calendar.getInstance();
        calendar3.setTime(new Date(l.longValue()));
        calendar3.add(5, 91);
        Calendar calendar4 = Calendar.getInstance();
        calendar4.setTime(new Date(l.longValue()));
        calendar4.add(5, 189);
        Calendar calendar5 = Calendar.getInstance();
        calendar5.setTime(new Date(l.longValue()));
        calendar5.add(5, 245);
        if ((calendar.after(calendar2) || calendar.equals(calendar2)) && (calendar.before(calendar3) || calendar.before(calendar3))) {
            return 1;
        }
        if (calendar.after(calendar3) && (calendar.before(calendar4) || calendar.before(calendar4))) {
            return 2;
        }
        if (calendar.after(calendar4) && (calendar.before(calendar5) || calendar.before(calendar5))) {
            return 3;
        }
        return calendar.after(calendar5) ? 4 : null;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        if (this.selectedServiceIndex == 1) {
            loadMoreDPTMembersList();
        } else {
            onLoadMoreBackground();
        }
    }

    public void onLoadMoreBackground() {
        try {
            List<NotificationMobDataBean> listRetrieveNotificationsForUserAsPerCampaignDate = this.notificationService.retrieveNotificationsForUserAsPerCampaignDate(Collections.singletonList(this.selectedCampaign.getLocationId()), null, this.selectedNotificationCode, null, LIMIT, this.offset, getSelectedCampaignDate(this.selectedCampaign));
            this.offset += LIMIT;
            onLoadMoreUi(listRetrieveNotificationsForUserAsPerCampaignDate);
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void loadMoreDPTMembersList() {
        try {
            List<MemberDataBean> listRetrieveMembersForDPTAlertForAshaAsPerCampaign = this.notificationService.retrieveMembersForDPTAlertForAshaAsPerCampaign(this.assignedAreaIds, getSelectedCampaignDate(this.selectedCampaign), this.search, null, null, null, LIMIT, this.offset);
            this.offset += LIMIT;
            onLoadMoreUiDPTMembers(listRetrieveMembersForDPTAlertForAshaAsPerCampaign);
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void onLoadMoreUi(List<NotificationMobDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.notificationBeanList.addAll(list);
            this.notificationListView.onFinishLoadingWithItem(true, getListViewItemsForNotificationList(list));
            return;
        }
        this.notificationListView.onFinishLoadingWithItem(false, null);
    }

    public void onLoadMoreUiDPTMembers(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.memberDataBeans.addAll(list);
            this.notificationListView.onFinishLoadingWithItem(true, getListViewItemsFoDPTMembersList(list));
            return;
        }
        this.notificationListView.onFinishLoadingWithItem(false, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        IntentResult activityResult = IntentIntegrator.parseActivityResult(i, i2, intent);
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY.intValue()) {
            if (this.isScanAbha) {
                addMemberTypeScreen(this.selectedCampaign);
                return;
            } else if (this.screen.equals(LOCATION_SCREEN)) {
                onServiceSelectionClick();
                return;
            } else {
                if (this.screen.equals(MEMBER_SELECTION_SCREEN)) {
                    setMemberSelectionScreen();
                    return;
                }
                return;
            }
        }
        if (i == REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY.intValue()) {
            setLocationSelectionScreen();
            return;
        }
        if (activityResult != null) {
            if (activityResult.getContents() == null) {
                SewaUtil.generateToast(this, LabelConstants.FAILED_TO_SCAN_QR);
                return;
            }
            String contents = activityResult.getContents();
            Log.i(TAG, "QR Scanner Data : " + contents);
            if (Objects.equals(this.screen, MEMBER_TYPE_SCREEN)) {
                LinkedHashMap<String, String> qrScanFilterData = SewaUtil.setQrScanFilterData(contents);
                this.qrScanFilter = qrScanFilterData;
                MemberDataBean memberDataBeanRetrieveMemberUsingAbhaScan = this.fhsService.retrieveMemberUsingAbhaScan(qrScanFilterData);
                if (memberDataBeanRetrieveMemberUsingAbhaScan != null) {
                    setSelectedService(UtilBean.getMemberType(memberDataBeanRetrieveMemberUsingAbhaScan));
                    if (this.selectedService != null) {
                        this.memberSelected = memberDataBeanRetrieveMemberUsingAbhaScan;
                        return;
                    } else {
                        SewaUtil.generateToast(this, LabelConstants.NO_MEMBERS_FOUND_SCAN_ABHA);
                        return;
                    }
                }
                SewaUtil.generateToast(this, LabelConstants.NO_MEMBERS_FOUND_SCAN_ABHA);
                return;
            }
            this.qrScanFilter = SewaUtil.setQrScanFilterData(contents);
            retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
            return;
        }
        navigateToHomeScreen(false);
    }

    private void setSelectedService(String str) {
        str.hashCode();
        switch (str) {
            case "C":
                this.selectedService = SERVICE_CHILDREN_UPTO_5;
                break;
            case "CPW":
                this.selectedService = SERVICE_PREGNANT_WOMEN;
                break;
            case "PNCM":
                this.selectedService = SERVICE_PNC_MOTHERS;
                break;
            case "C_5_20":
                this.selectedService = SERVICE_CHILDREN_ABOVE_5;
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            r4 = this;
            int r0 = r5.getId()
            r1 = 10025(0x2729, float:1.4048E-41)
            r2 = 1
            if (r0 != r1) goto L19
            r4.isScanAbha = r2
            com.google.zxing.integration.android.IntentIntegrator r5 = new com.google.zxing.integration.android.IntentIntegrator
            r5.<init>(r4)
            java.lang.Class<com.argusoft.sewa.android.app.qrscanner.QRScannerActivity> r0 = com.argusoft.sewa.android.app.qrscanner.QRScannerActivity.class
            r5.setCaptureActivity(r0)
            r5.initiateScan()
            return
        L19:
            int r5 = r5.getId()
            int r0 = com.argusoft.sewa.android.app.util.DynamicUtils.ID_NEXT_BUTTON
            if (r5 == r0) goto L22
            return
        L22:
            java.lang.String r5 = r4.screen
            r5.hashCode()
            int r0 = r5.hashCode()
            r1 = 0
            r3 = -1
            switch(r0) {
                case -1085249373: goto L46;
                case -517164562: goto L3d;
                case 1365630115: goto L32;
                default: goto L30;
            }
        L30:
            r2 = -1
            goto L50
        L32:
            java.lang.String r0 = "locationSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3b
            goto L30
        L3b:
            r2 = 2
            goto L50
        L3d:
            java.lang.String r0 = "CAMPAIGN_SELECTION_SCREEN"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L50
            goto L30
        L46:
            java.lang.String r0 = "notificationDisplayScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L4f
            goto L30
        L4f:
            r2 = 0
        L50:
            switch(r2) {
                case 0: goto L9e;
                case 1: goto L85;
                case 2: goto L54;
                default: goto L53;
            }
        L53:
            goto Laa
        L54:
            r4.showProcessDialog()
            com.argusoft.sewa.android.app.component.LocationSelectionComponent r5 = r4.locationComponent
            java.util.List r5 = r5.getSelectedLocationIds()
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L6e
            android.content.Context r5 = r4.context
            java.lang.String r0 = "Please select location"
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r5, r0)
            r4.hideProcessDialog()
            return
        L6e:
            com.argusoft.sewa.android.app.component.LocationSelectionComponent r5 = r4.locationComponent
            java.util.List r5 = r5.getSelectedLocationIds()
            java.lang.Object r5 = r5.get(r1)
            java.lang.Integer r5 = (java.lang.Integer) r5
            r4.selectedLocationId = r5
            android.widget.LinearLayout r5 = r4.bodyLayoutContainer
            r5.removeAllViews()
            r4.retrieveCampaignSessionsByLocation()
            goto Laa
        L85:
            r4.showProcessDialog()
            com.argusoft.sewa.android.app.model.CampaignMasterBean r5 = r4.selectedCampaign
            if (r5 == 0) goto L93
            r4.addMemberTypeScreen(r5)
            r4.hideProcessDialog()
            goto Laa
        L93:
            android.content.Context r5 = r4.context
            java.lang.String r0 = "No campaign has been selected"
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r5, r0)
            r4.hideProcessDialog()
            return
        L9e:
            com.argusoft.sewa.android.app.model.CampaignMasterBean r5 = r4.selectedCampaign
            r4.addMemberTypeScreen(r5)
            android.widget.Button r5 = r4.nextButton
            java.lang.String r0 = "Next"
            r5.setText(r0)
        Laa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity.onClick(android.view.View):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r13) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ROUTINE_IMMUNISATION_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m529x857a57c0(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$15$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m529x857a57c0(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    public void showMemberDetailsToAshaUser(MemberDataBean memberDataBean, String str) {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        MemberDataBean next;
        MemberBean memberBeanRetrieveMemberBeanByActualId2;
        this.screen = MEMBER_DETAILS_TO_ASHA_USER_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId());
        if (str.equals("FHW_PNC") || str.equals(FormConstants.ASHA_PNC)) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, "PNC Details"));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.BENEFICIARY_NAME));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberDataBean)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_ID));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(memberDataBean.getUniqueHealthId())));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_ABHA_ID));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(memberDataBean.getHealthIdNumber())));
            if (memberDataBean.getHusbandId() != null && (memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(memberDataBean.getHusbandId())) != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.HUSBAND_NAME));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId)));
            }
            if (memberDataBean.getLastDeliveryDate() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.LAST_DELIVERY_DATE));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.sdf.format(memberDataBean.getLastDeliveryDate())));
            }
            if (memberDataBean.getDob() != null) {
                int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(memberDataBean.getDob().longValue());
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.AGE));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay[0], iArrCalculateAgeYearMonthDay[1], iArrCalculateAgeYearMonthDay[2])));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.BPL));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.returnYesNoNotAvailableFromBoolean(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag())));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.BLOOD_GROUP));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(memberDataBean.getBloodGroup())));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ADDRESS));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MOBILE_NUMBER));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(memberDataBean.getMobileNumber())));
        } else {
            Iterator<MemberDataBean> it = this.fhsService.retrieveMemberDataBeansByFamily(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getFamilyId()).iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (Boolean.TRUE.equals(next.getFamilyHeadFlag())) {
                        break;
                    }
                }
            }
            if (next != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, "Head of family details"));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Name"));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(next)));
                if (next.getDob() != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Date of birth (as per Aadhaar)"));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.sdf.format(new Date(next.getDob().longValue()))));
                    int[] iArrCalculateAgeYearMonthDay2 = UtilBean.calculateAgeYearMonthDay(next.getDob().longValue());
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Age as per date selected"));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay2[0], iArrCalculateAgeYearMonthDay2[1], iArrCalculateAgeYearMonthDay2[2])));
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_ID));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(next.getUniqueHealthId())));
            }
            if (this.selectedService.equals(SERVICE_CHILDREN_UPTO_5)) {
                if (memberDataBean.getMotherId() != null && (memberBeanRetrieveMemberBeanByActualId2 = this.fhsService.retrieveMemberBeanByActualId(memberDataBean.getMotherId())) != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.MOTHER_DETAILS));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Name")));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId2)));
                    if (memberBeanRetrieveMemberBeanByActualId2.getDob() != null) {
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Date of birth (as per Aadhaar)")));
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.sdf.format(memberBeanRetrieveMemberBeanByActualId2.getDob())));
                        int[] iArrCalculateAgeYearMonthDay3 = UtilBean.calculateAgeYearMonthDay(memberBeanRetrieveMemberBeanByActualId2.getDob().getTime());
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Age as per date selected")));
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay3[0], iArrCalculateAgeYearMonthDay3[1], iArrCalculateAgeYearMonthDay3[2])));
                    }
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_ID)));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(memberBeanRetrieveMemberBeanByActualId2.getUniqueHealthId())));
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.CHILD_DETAILS)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Name")));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberDataBean)));
                if (memberDataBean.getDob() != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Date of birth (as per Aadhaar)")));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.sdf.format(new Date(memberDataBean.getDob().longValue()))));
                    int[] iArrCalculateAgeYearMonthDay4 = UtilBean.calculateAgeYearMonthDay(memberDataBean.getDob().longValue());
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Age as per date selected")));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay4[0], iArrCalculateAgeYearMonthDay4[1], iArrCalculateAgeYearMonthDay4[2])));
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_ID)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(memberDataBean.getUniqueHealthId())));
                SharedStructureData.relatedPropertyHashTable.put("memberId", memberDataBean.getId());
                SharedStructureData.immunisationService = this.immunisationService;
                QueFormBean queFormBean = new QueFormBean();
                queFormBean.setRelatedpropertyname("memberId");
                this.bodyLayoutContainer.addView(MyDynamicComponents.getImmunisationGivenComponent(this.context, queFormBean));
            } else if (this.selectedService.equals(SERVICE_PREGNANT_WOMEN) || this.selectedService.equals(SERVICE_PREGNANCY_OUTCOME)) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel("Pregnant Woman Details")));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Name")));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberDataBean)));
                if (memberDataBean.getDob() != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Date of birth (as per Aadhaar)")));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.sdf.format(new Date(memberDataBean.getDob().longValue()))));
                    int[] iArrCalculateAgeYearMonthDay5 = UtilBean.calculateAgeYearMonthDay(memberDataBean.getDob().longValue());
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Age as per date selected")));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay5[0], iArrCalculateAgeYearMonthDay5[1], iArrCalculateAgeYearMonthDay5[2])));
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_ID)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getNotAvailableIfNull(memberDataBean.getUniqueHealthId())));
                if (memberDataBean.getLmpDate() != null) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Last menstrual period (LMP):")));
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.sdf.format(memberDataBean.getLmpDate())));
                }
            }
        }
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m534xeb856cdf(view);
            }
        });
    }

    /* renamed from: lambda$showMemberDetailsToAshaUser$16$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity, reason: not valid java name */
    /* synthetic */ void m534xeb856cdf(View view) {
        onServiceSelectionClick();
    }

    private void setDueVaccinesCountInMemberBean(MemberDataBean memberDataBean) {
        ArrayList arrayList = new ArrayList(this.immunisationService.getDueImmunisationsForChild(new Date(memberDataBean.getDob().longValue()), memberDataBean.getImmunisationGiven(), new Date(), null));
        arrayList.removeAll(this.immunisationService.getMissedImmunisationListFromDueList(new ArrayList(arrayList), new Date(memberDataBean.getDob().longValue()), new Date(), UtilBean.getImmunisationDateMap(memberDataBean.getImmunisationGiven()), true));
        LinkedHashSet linkedHashSet = new LinkedHashSet(arrayList);
        memberDataBean.setDueVaccinesCount(Integer.valueOf(linkedHashSet.size()));
        if (memberDataBean.getDueVaccinesCount().intValue() > 0) {
            StringBuilder sb = new StringBuilder();
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                sb.append(UtilBean.getMyLabel(FullFormConstants.getFullFormOfVaccines(((String) it.next()).trim())));
                sb.append(", ");
            }
            memberDataBean.setDueVaccines(sb.toString());
        }
    }
}
