package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LocationSelectionComponent;
import com.argusoft.sewa.android.app.component.LocationSelectionFromDistrictComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.component.SearchComponent;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
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
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
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
import java.text.ParseException;
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
public class RoutineImmunizationActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String CAMPAIGN_SELECTION_SCREEN = "CAMPAIGN_SELECTION_SCREEN";
    private static final long DELAY = 500;
    private static final String IMMUNISATION_INVENTORY_SCREEN = "IMMUNISATION_INVENTORY_SCREEN";
    private static final long LIMIT = 30;
    private static final String LOCATION_SCREEN = "LOCATION_SCREEN";
    private static final String LOCATION_SELECTION_SCREEN = "locationSelectionScreen";
    private static final String MEMBER_DETAILS_TO_ASHA_USER_SCREEN = "MEMBER_DETAILS_TO_ASHA_USER_SCREEN";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String MEMBER_TYPE_SCREEN = "memberTypeScreen";
    private static final String NOTIFICATION_SELECTION_SCREEN = "notificationSelectionScreen";
    private static final String SERVICE_CHILDREN_ABOVE_5 = "childrenAbove5";
    private static final String SERVICE_CHILDREN_UPTO_5 = "childrenUpto5";
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
    private NotificationMobDataBean selectedNotification;
    private String selectedService;
    private CampaignSessionBean selectedSessionBean;
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
    private boolean isScanAbha = false;
    private MemberDataBean memberSelected = null;
    private String memberType = null;
    private Map<String, Integer> servicesCountMap = new HashMap();
    private List<Integer> expiredConfigIds = new ArrayList();
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

    private void startNewSession() {
        CampaignSessionBean campaignSessionBeanStartNewSession = this.campaignSessionService.startNewSession(this.selectedCampaign);
        this.selectedSessionBean = campaignSessionBeanStartNewSession;
        this.ongoingSessionBean = campaignSessionBeanStartNewSession;
        addMemberTypeScreen();
    }

    private void startNewSessionAlert() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.START_NEW_SESSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m514xbbaa131(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$startNewSessionAlert$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m514xbbaa131(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            startNewSession();
        } else {
            this.myAlertDialog.dismiss();
        }
    }

    private void showPreviousInactiveSessionAlert(CampaignMasterBean campaignMasterBean) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ARCHIIVING_PREVIOUS_SESSIONS_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m511xca1fe36f(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$showPreviousInactiveSessionAlert$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m511xca1fe36f(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            startNewSession();
        } else {
            this.myAlertDialog.dismiss();
        }
    }

    private void showOutOfSessionAlert(final CampaignSessionBean campaignSessionBean) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.CAMPAIGN_IMMUNISATION_SESSION_TIME_OUT_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m510x8443f5df(campaignSessionBean, view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$showOutOfSessionAlert$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m510x8443f5df(CampaignSessionBean campaignSessionBean, View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            showProcessDialog();
            this.ongoingSessionBean = null;
            endSesionBySessionId(campaignSessionBean);
            return;
        }
        this.myAlertDialog.dismiss();
    }

    private void endSesionBySessionId(CampaignSessionBean campaignSessionBean) {
        CampaignMasterBean campaignMasterByConfigIdAndWeek = this.campaignSessionService.getCampaignMasterByConfigIdAndWeek(campaignSessionBean.getConfigId(), null);
        this.campaignSessionService.endSessionBySessionId(campaignSessionBean.getSessionId());
        showFormSubmitMessage(campaignMasterByConfigIdAndWeek);
        showProcessDialog();
        retrieveCampaignSessionsByLocation();
    }

    private void showFormSubmitMessage(CampaignMasterBean campaignMasterBean) {
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Session for ") + UtilBean.getDayNameFromNumber(campaignMasterBean.getDayNumber().intValue()) + UtilBean.getMyLabel(" has been ended"));
        hideProcessDialog();
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
            if (this.campaignSessionService.getCompletedSessionForTodayByLocationId(this.assignedAreaIds) != null) {
                setCampaignSelectionScreen(Boolean.TRUE);
                return;
            } else {
                setCampaignSelectionScreen(Boolean.FALSE);
                return;
            }
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m504x30a6ccdd();
            }
        });
    }

    /* renamed from: lambda$retrieveCampaignSessionsByLocation$3$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m504x30a6ccdd() {
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("No area assigned. Please re-sync the app or contact support."));
        hideProcessDialog();
    }

    public void setCampaignSelectionScreen(Boolean bool) {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = CAMPAIGN_SELECTION_SCREEN;
        List<CampaignMasterBean> list = this.campaignMasterBeans;
        if (list != null && !list.isEmpty()) {
            this.dayNumWithCampaignMap = new HashMap();
            for (CampaignMasterBean campaignMasterBean : this.campaignMasterBeans) {
                this.dayNumWithCampaignMap.put(campaignMasterBean.getDayNumber(), campaignMasterBean);
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_CAMPAIGN));
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, getCampaignList(this.campaignMasterBeans), R.layout.custom_button_list, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda6
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m505xa1ee43eb(adapterView, view, i, j);
                }
            }, null));
            if (this.ongoingSessionBean != null) {
                this.sessionButtonLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
                CampaignMasterBean campaignMasterByConfigIdAndWeek = this.campaignSessionService.getCampaignMasterByConfigIdAndWeek(this.ongoingSessionBean.getConfigId(), null);
                MaterialTextView whiteBackgroundButtonView = MyStaticComponents.getWhiteBackgroundButtonView(this.context, "End Session");
                whiteBackgroundButtonView.setTextColor(ContextCompat.getColor(this.context, R.color.notificationBadgeBackground));
                whiteBackgroundButtonView.setText(String.format("%s %s", UtilBean.getMyLabel("End Ongoing Session On "), UtilBean.getMyLabel(UtilBean.getDayNameFromNumber(campaignMasterByConfigIdAndWeek.getDayNumber().intValue())) + " at " + this.mapOfAreaNameWithIdAsKey.get(campaignMasterByConfigIdAndWeek.getLocationId())));
                whiteBackgroundButtonView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m506x3e5c404a(view);
                    }
                });
                this.sessionButtonLayout.addView(MyStaticComponents.getVerticalSpaceSeparator(this.context, 30));
                this.sessionButtonLayout.addView(whiteBackgroundButtonView);
                this.bodyLayoutContainer.addView(this.sessionButtonLayout);
            }
            this.footerLayout.setVisibility(8);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_CAMPAIGN_IN_THIS_YOUR_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
            this.footerLayout.setVisibility(0);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m507xdaca3ca9(view);
                }
            });
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setCampaignSelectionScreen$4$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m505xa1ee43eb(AdapterView adapterView, View view, int i, long j) {
        this.selectedCampaign = this.campaignMasterBeans.get(i);
        onClick(this.nextButton);
    }

    /* renamed from: lambda$setCampaignSelectionScreen$5$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m506x3e5c404a(View view) {
        showEndCurrentSessionAlert(this.ongoingSessionBean);
    }

    /* renamed from: lambda$setCampaignSelectionScreen$6$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m507xdaca3ca9(View view) {
        navigateToHomeScreen(false);
    }

    private List<ListItemDataBean> getCampaignList(List<CampaignMasterBean> list) {
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (CampaignMasterBean campaignMasterBean : list) {
            CampaignSessionBean campaignSessionByConfigId = this.campaignSessionService.getCampaignSessionByConfigId(campaignMasterBean.getConfigId());
            String str = this.mapOfAreaNameWithIdAsKey.get(campaignMasterBean.getLocationId());
            if (campaignSessionByConfigId != null && campaignSessionByConfigId.getStartedOn() != null) {
                this.ongoingSessionBean = campaignSessionByConfigId;
                String dayNameFromNumber = UtilBean.getDayNameFromNumber(campaignMasterBean.getDayNumber().intValue());
                boolean zBooleanValue = Boolean.TRUE.booleanValue();
                String str2 = this.sdf.format(getSelectedCampaignDate(campaignMasterBean));
                if (str == null) {
                    str = LabelConstants.N_A;
                }
                arrayList.add(new ListItemDataBean(dayNameFromNumber, zBooleanValue, str2, str));
            } else {
                String dayNameFromNumber2 = UtilBean.getDayNameFromNumber(campaignMasterBean.getDayNumber().intValue());
                boolean zBooleanValue2 = Boolean.FALSE.booleanValue();
                String str3 = this.sdf.format(getSelectedCampaignDate(campaignMasterBean));
                if (str == null) {
                    str = LabelConstants.N_A;
                }
                arrayList.add(new ListItemDataBean(dayNameFromNumber2, zBooleanValue2, str3, str));
            }
        }
        return arrayList;
    }

    private void showStartNewImmunisationAlert(final CampaignSessionBean campaignSessionBean, CampaignMasterBean campaignMasterBean) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ROUTINE_IMMUNISATION_START_NEW_SESSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m512x74cb7d0(campaignSessionBean, view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$showStartNewImmunisationAlert$7$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m512x74cb7d0(CampaignSessionBean campaignSessionBean, View view) {
        if (view.getId() == -1) {
            this.ongoingSessionBean = null;
            endSesionBySessionId(campaignSessionBean);
        }
        this.myAlertDialog.dismiss();
    }

    private void showEndCurrentSessionAlert(final CampaignSessionBean campaignSessionBean) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ROUTINE_IMMUNISATION_END_CURRENT_SESSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m509xaf85be6c(campaignSessionBean, view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$showEndCurrentSessionAlert$8$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m509xaf85be6c(CampaignSessionBean campaignSessionBean, View view) {
        this.myAlertDialog.dismiss();
        if (view.getId() == -1) {
            this.ongoingSessionBean = null;
            endSesionBySessionId(campaignSessionBean);
        }
    }

    public void endSessionOnline(final CampaignSessionBean campaignSessionBean) {
        CampaignSessionBean campaignSessionBeanEndOnlinePreviousSession = this.campaignSessionService.endOnlinePreviousSession(campaignSessionBean);
        this.selectedSessionDataBean.setEndedOn(campaignSessionBeanEndOnlinePreviousSession != null ? campaignSessionBeanEndOnlinePreviousSession.getEndedOn() : null);
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m501x889d663e(campaignSessionBean);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showFormSubmitMessage, reason: merged with bridge method [inline-methods] */
    public void m501x889d663e(CampaignSessionBean campaignSessionBean) {
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Session at this location for ") + UtilBean.getDayNameFromNumber(this.selectedCampaign.getDayNumber().intValue()) + UtilBean.getMyLabel(" has ended"));
        finish();
        hideProcessDialog();
    }

    public void addMemberTypeScreen() {
        showProcessDialog();
        this.screen = MEMBER_TYPE_SCREEN;
        this.selectedServiceIndex = -1;
        this.isScanAbha = false;
        this.footerLayout.setVisibility(8);
        this.bodyLayoutContainer.removeAllViews();
        retrieveCountsForEachNotificationType(this.selectedSessionBean.getLocationId());
        hideProcessDialog();
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
            this.selectedNotificationCode = "FHW_CS";
        } else if (i == 1) {
            this.selectedService = SERVICE_CHILDREN_ABOVE_5;
            this.memberType = SewaConstants.CHILDREN_5_PLUS;
            this.selectedNotificationCode = "DPT_BOOSTER_2_ALERT";
        } else if (i == 2) {
            this.selectedService = SERVICE_PREGNANT_WOMEN;
            this.memberType = SewaConstants.PREGNANT_WOMEN;
            this.selectedNotificationCode = "FHW_ANC";
        } else if (i == 3) {
            this.selectedService = SERVICE_PNC_MOTHERS;
            this.memberType = SewaConstants.PNC_MOTHER;
            this.selectedNotificationCode = "FHW_PNC";
        }
        this.qrScanFilter = null;
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        setHeaderForMemberScreen();
        addSearchTextBox();
        if (this.selectedServiceIndex == 2) {
            retrieveMemberListByServiceType(this.selectedService, null, null, null, null, null);
        } else {
            retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
        }
    }

    public void retrieveInitialNotificationsFromDB(String str, CharSequence charSequence, long j, long j2) {
        this.selectedNotification = null;
        this.selectedPeopleIndex = -1;
        this.isOnlineSearch = false;
        SharedStructureData.isOnlineSearch = false;
        this.search = charSequence;
        try {
            this.notificationBeanList = this.notificationService.retrieveNotificationsForUserAsPerCampaignDate(Collections.singletonList(this.selectedSessionBean.getLocationId()), null, str, charSequence, j, 0L, getSelectedCampaignDate(this.selectedCampaign));
            this.offset += LIMIT;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        addNotificationSelectionScreen(charSequence != null);
    }

    public void addNotificationSelectionScreen(boolean z) {
        this.screen = NOTIFICATION_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        MaterialTextView materialTextView = this.noMemberAvailableView;
        if (materialTextView != null) {
            this.bodyLayoutContainer.removeView(materialTextView);
        }
        LinearLayout linearLayout = this.pagingHeaderView;
        if (linearLayout != null) {
            this.bodyLayoutContainer.removeView(linearLayout);
        }
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.bodyLayoutContainer.removeView(this.notificationListView);
        List<NotificationMobDataBean> list = this.notificationBeanList;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_NOTIFICATION_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m493xfa2973a4(view);
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
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda16
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m494x96977003(adapterView, view, i, j);
            }
        };
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsForNotificationList(this.notificationBeanList), R.layout.listview_row_with_date_and_info, onItemClickListener, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addNotificationSelectionScreen$10$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m493xfa2973a4(View view) {
        addMemberTypeScreen();
    }

    /* renamed from: lambda$addNotificationSelectionScreen$11$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m494x96977003(AdapterView adapterView, View view, int i, long j) {
        if (this.notificationBeanList.size() > i) {
            this.selectedNotification = this.notificationBeanList.get(i);
        }
        if (!this.isOnlineSearch.booleanValue() || this.selectedNotification == null) {
            return;
        }
        showProcessDialog();
        this.memberSelected = this.memberDataBeans.get(0);
    }

    private List<ListItemDataBean> getListViewItemsForNotificationList(List<NotificationMobDataBean> list) {
        MemberDataBean memberDataBean;
        MemberDataBean memberDataBean2;
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : list) {
            notificationMobDataBean.setOverdueFlag(Boolean.valueOf(notificationMobDataBean.getExpectedDueDate() != null && new Date(notificationMobDataBean.getExpectedDueDate().longValue()).before(new Date())));
            new Gson();
            String task = notificationMobDataBean.getTask();
            task.hashCode();
            boolean zEquals = task.equals("FHW_CS");
            String mobileNumber = LabelConstants.N_A;
            if (zEquals) {
                if (this.isOnlineSearch.booleanValue()) {
                    memberDataBean2 = this.memberSelected;
                    if (memberDataBean2.getMobileNumber() != null) {
                        mobileNumber = memberDataBean2.getMobileNumber();
                    }
                } else {
                    memberDataBean2 = new MemberDataBean(this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId()));
                    MemberBean memberBeanRetrieveMemberBeanByActualId = memberDataBean2.getMotherId() != null ? this.fhsService.retrieveMemberBeanByActualId(memberDataBean2.getMotherId()) : null;
                    MemberDataBean memberDataBeanRetrieveHeadMemberDataBeanByFamilyId = this.fhsService.retrieveHeadMemberDataBeanByFamilyId(memberDataBean2.getFamilyId());
                    if (memberBeanRetrieveMemberBeanByActualId != null && memberBeanRetrieveMemberBeanByActualId.getMobileNumber() != null) {
                        mobileNumber = memberBeanRetrieveMemberBeanByActualId.getMobileNumber();
                    } else if (memberDataBeanRetrieveHeadMemberDataBeanByFamilyId != null && memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber() != null) {
                        mobileNumber = memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber();
                    }
                }
                String str = mobileNumber;
                String strConvertDateToString = notificationMobDataBean.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean.getExpectedDueDate().longValue(), false, false, true) : null;
                setDueVaccinesCountInMemberBean(memberDataBean2);
                arrayList.add(new ListItemDataBean(strConvertDateToString, memberDataBean2.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean2), "Mob No", str, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean2.getDob()), null, LabelConstants.DUE_VACCINES, ((memberDataBean2.getDueVaccines() == null || memberDataBean2.getDueVaccines().isEmpty()) ? UtilBean.getMyLabel(LabelConstants.NO_DUE_VACCINES) : memberDataBean2.getDueVaccines()).substring(0, r5.length() - 2), notificationMobDataBean.getOverdueFlag().booleanValue()));
            } else {
                if (this.isOnlineSearch.booleanValue()) {
                    memberDataBean = this.memberSelected;
                    if (memberDataBean.getMobileNumber() != null) {
                        mobileNumber = memberDataBean.getMobileNumber();
                    }
                } else {
                    memberDataBean = new MemberDataBean(this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId()));
                    MemberDataBean memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2 = this.fhsService.retrieveHeadMemberDataBeanByFamilyId(memberDataBean.getFamilyId());
                    if (memberDataBean.getMobileNumber() != null) {
                        mobileNumber = memberDataBean.getMobileNumber();
                    } else if (memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2 != null && memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2.getMobileNumber() != null) {
                        mobileNumber = memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2.getMobileNumber();
                    }
                }
                arrayList.add(new ListItemDataBean(notificationMobDataBean.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean.getExpectedDueDate().longValue(), false, false, true) : null, memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), "Mob No", mobileNumber, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean.getDob()), null, null, null, notificationMobDataBean.getOverdueFlag().booleanValue()));
            }
        }
        return arrayList;
    }

    private List<ListItemDataBean> getListViewItemsForNotificationListFromMemberDataBeans(List<MemberDataBean> list) {
        String str;
        String mobileNumber;
        String str2;
        String mobileNumber2;
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            boolean z = memberDataBean.getNotDueDate() != null && new Date(memberDataBean.getNotDueDate().longValue()).before(getSelectedCampaignDate(this.selectedCampaign));
            new Gson();
            if (this.selectedService.equals(SERVICE_CHILDREN_UPTO_5)) {
                MemberBean memberBean = new MemberBean(memberDataBean);
                String strConvertDateToString = memberDataBean.getNotDueDate() != null ? UtilBean.convertDateToString(memberDataBean.getNotDueDate().longValue(), false, false, true) : null;
                String myLabel = (memberDataBean.getDueVaccines() == null || memberDataBean.getDueVaccines().isEmpty()) ? UtilBean.getMyLabel(LabelConstants.NO_DUE_VACCINES) : memberDataBean.getDueVaccines();
                MemberBean memberBeanRetrieveMemberBeanByActualId = memberDataBean.getMotherId() != null ? this.fhsService.retrieveMemberBeanByActualId(memberDataBean.getMotherId()) : null;
                MemberDataBean memberDataBeanRetrieveHeadMemberDataBeanByFamilyId = this.fhsService.retrieveHeadMemberDataBeanByFamilyId(memberDataBean.getFamilyId());
                if (memberBeanRetrieveMemberBeanByActualId != null && memberBeanRetrieveMemberBeanByActualId.getMobileNumber() != null) {
                    mobileNumber = memberBeanRetrieveMemberBeanByActualId.getMobileNumber();
                } else if (memberDataBeanRetrieveHeadMemberDataBeanByFamilyId == null || memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber() == null) {
                    str = LabelConstants.N_A;
                    arrayList.add(new ListItemDataBean(strConvertDateToString, memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), "Mob No", str, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean.getDob()), null, LabelConstants.DUE_VACCINES, myLabel, z));
                } else {
                    mobileNumber = memberDataBeanRetrieveHeadMemberDataBeanByFamilyId.getMobileNumber();
                }
                str = mobileNumber;
                arrayList.add(new ListItemDataBean(strConvertDateToString, memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), "Mob No", str, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean.getDob()), null, LabelConstants.DUE_VACCINES, myLabel, z));
            } else {
                MemberBean memberBean2 = new MemberBean(memberDataBean);
                String strConvertDateToString2 = memberDataBean.getNotDueDate() != null ? UtilBean.convertDateToString(memberDataBean.getNotDueDate().longValue(), false, false, true) : null;
                MemberDataBean memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2 = this.fhsService.retrieveHeadMemberDataBeanByFamilyId(memberDataBean.getFamilyId());
                if (memberDataBean.getMobileNumber() != null) {
                    mobileNumber2 = memberDataBean.getMobileNumber();
                } else if (memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2 != null && memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2.getMobileNumber() != null) {
                    mobileNumber2 = memberDataBeanRetrieveHeadMemberDataBeanByFamilyId2.getMobileNumber();
                } else {
                    str2 = LabelConstants.N_A;
                    arrayList.add(new ListItemDataBean(strConvertDateToString2, memberBean2.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean2), "Mob No", str2, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean.getDob()), null, null, null, z));
                }
                str2 = mobileNumber2;
                arrayList.add(new ListItemDataBean(strConvertDateToString2, memberBean2.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean2), "Mob No", str2, SearchComponent.SearchTypes.DOB, this.sdf.format(memberDataBean.getDob()), null, null, null, z));
            }
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
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        this.footerLayout.setVisibility(0);
        String str = this.selectedService;
        str.hashCode();
        switch (str) {
            case "childrenAbove5":
            case "childrenUpto5":
                addChildrenListView(false);
                break;
            case "pregnancyOutcome":
            case "pregnantWomen":
                addPregnantWomenListView(false);
                break;
            case "pncMothers":
                addPncWomenListView();
                break;
        }
        List<MemberDataBean> list = this.memberDataBeans;
        if (list == null || list.isEmpty()) {
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m499xf8d7c887(view);
                }
            });
        } else {
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        }
    }

    /* renamed from: lambda$addSelectedServiceMemberList$12$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m499xf8d7c887(View view) {
        addMemberTypeScreen();
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
        SearchComponent searchComponent = new SearchComponent(this.context, UtilBean.getMyLabel("Enter text and click search icon to search online"), null, arrayList, getSearchClickOnline(), null, this.locationMasterService);
        this.searchBox = searchComponent;
        searchComponent.setPadding(0, 10, 0, 0);
        this.searchBox.addTextWatcherInEditText(getTextWatcherForOfflineSearch());
        this.searchBox.addOnDateSetListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m498x7f8ce549(view);
            }
        });
        this.bodyLayoutContainer.addView(this.searchBox);
    }

    /* renamed from: lambda$addSearchTextBox$13$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m497xe31ee8ea() {
        retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
    }

    /* renamed from: lambda$addSearchTextBox$14$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m498x7f8ce549(View view) {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m497xe31ee8ea();
            }
        });
    }

    private TextWatcher getTextWatcherForOfflineSearch() {
        return new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                RoutineImmunizationActivity.this.timer.cancel();
                RoutineImmunizationActivity.this.timer = new Timer();
                RoutineImmunizationActivity.this.timer.schedule(new C00571(charSequence), RoutineImmunizationActivity.DELAY);
            }

            /* renamed from: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$1$1, reason: invalid class name and collision with other inner class name */
            class C00571 extends TimerTask {
                final /* synthetic */ CharSequence val$s;

                C00571(CharSequence charSequence) {
                    this.val$s = charSequence;
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence = this.val$s;
                    if (charSequence != null && charSequence.length() > 2) {
                        if (RoutineImmunizationActivity.this.selectedServiceIndex == 2) {
                            RoutineImmunizationActivity routineImmunizationActivity = RoutineImmunizationActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            routineImmunizationActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m515xb9b44b1e(charSequence2);
                                }
                            });
                            return;
                        } else {
                            RoutineImmunizationActivity routineImmunizationActivity2 = RoutineImmunizationActivity.this;
                            final CharSequence charSequence3 = this.val$s;
                            routineImmunizationActivity2.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m516x3bfefffd(charSequence3);
                                }
                            });
                            return;
                        }
                    }
                    CharSequence charSequence4 = this.val$s;
                    if (charSequence4 == null || charSequence4.length() == 0) {
                        RoutineImmunizationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m517xbe49b4dc();
                            }
                        });
                    }
                }

                /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity$1$1, reason: not valid java name */
                /* synthetic */ void m515xb9b44b1e(CharSequence charSequence) {
                    RoutineImmunizationActivity.this.retrieveMemberListByServiceType(RoutineImmunizationActivity.this.selectedService, charSequence, null, RoutineImmunizationActivity.this.searchBox.getSelectedSearchType(), null, Collections.singletonList(RoutineImmunizationActivity.this.selectedSessionBean.getLocationId()));
                }

                /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity$1$1, reason: not valid java name */
                /* synthetic */ void m516x3bfefffd(CharSequence charSequence) {
                    RoutineImmunizationActivity.this.retrieveInitialNotificationsFromDB(RoutineImmunizationActivity.this.selectedNotificationCode, charSequence, RoutineImmunizationActivity.LIMIT, RoutineImmunizationActivity.this.offset);
                }

                /* renamed from: lambda$run$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity$1$1, reason: not valid java name */
                /* synthetic */ void m517xbe49b4dc() {
                    RoutineImmunizationActivity.this.showProcessDialog();
                    RoutineImmunizationActivity.this.offset = 0L;
                    if (RoutineImmunizationActivity.this.selectedServiceIndex == 2) {
                        RoutineImmunizationActivity.this.retrieveMemberListByServiceType(RoutineImmunizationActivity.this.selectedService, null, null, RoutineImmunizationActivity.this.searchBox.getSelectedSearchType(), null, Collections.singletonList(RoutineImmunizationActivity.this.selectedSessionBean.getLocationId()));
                    } else {
                        RoutineImmunizationActivity.this.retrieveInitialNotificationsFromDB(RoutineImmunizationActivity.this.selectedNotificationCode, null, RoutineImmunizationActivity.LIMIT, RoutineImmunizationActivity.this.offset);
                    }
                }
            }
        };
    }

    private SearchComponent.SearchClick getSearchClickOnline() {
        return new SearchComponent.SearchClick() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda21
            @Override // com.argusoft.sewa.android.app.component.SearchComponent.SearchClick
            public final void onSearchClick(String str, String str2, Date date) {
                this.f$0.m502x73c9e830(str, str2, date);
            }
        };
    }

    /* renamed from: lambda$getSearchClickOnline$15$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m502x73c9e830(String str, String str2, Date date) {
        if (SharedStructureData.sewaService.isOnline()) {
            retrieveOnlineMember(str2, date, str, null, Long.valueOf(getSelectedCampaignDate(this.selectedCampaign).getTime()));
        } else {
            SewaUtil.generateToast(this.context, "You need internet to search members online");
        }
    }

    public void retrieveCountsForEachNotificationType(Integer num) {
        this.selectedNotificationCode = null;
        this.servicesCountMap = new HashMap();
        this.isOnlineSearch = false;
        SharedStructureData.isOnlineSearch = false;
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity.2
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity.this.showProcessDialog();
            }
        });
        this.notificationsCountMap = this.notificationService.retrieveCountForNotificationTypeBasedOnCampaign(null, Collections.singletonList(num), getSelectedCampaignDate(this.selectedCampaign));
        this.servicesCountMap = this.routineImmunisationService.retrieveCountForRIServices(num);
        setServiceListView();
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

    public void setServiceListView() {
        this.bodyLayoutContainer.removeView(this.selectOptionTv);
        this.bodyLayoutContainer.removeView(this.buttonList);
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda11
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m508xedbbf808(adapterView, view, i, j);
            }
        };
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_CHILDREN_0_TO_5) + "(" + setNotificationCountFromMap(this.notificationsCountMap.get("FHW_CS")) + ")");
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_CHILDREN_5_TO_7) + "(" + setNotificationCountFromMap(this.notificationsCountMap.get("DPT_BOOSTER_2_ALERT")) + ")");
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_DUE_PREGNANT_WOMEN) + "(" + setNotificationCountFromMap(this.servicesCountMap.get(SERVICE_PREGNANT_WOMEN)) + ")");
        arrayList.add(UtilBean.getMyLabel(LabelConstants.SERVICE_DUE_PNC_WOMEN) + "(" + setNotificationCountFromMap(this.notificationsCountMap.get("FHW_PNC")) + ")");
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, "Please select an option");
        this.selectOptionTv = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        ListView buttonList = MyStaticComponents.getButtonList(this.context, arrayList, onItemClickListener);
        this.buttonList = buttonList;
        this.bodyLayoutContainer.addView(buttonList);
        hideProcessDialog();
    }

    /* renamed from: lambda$setServiceListView$16$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m508xedbbf808(AdapterView adapterView, View view, int i, long j) {
        this.selectedServiceIndex = i;
        onServiceSelectionClick();
    }

    private String setNotificationCountFromMap(Integer num) {
        if (num != null) {
            return num.toString();
        }
        return null;
    }

    public void retrieveOnlineMember(CharSequence charSequence, Date date, String str, Long l, Long l2) {
        this.memberDataBeans.clear();
        this.isOnlineSearch = true;
        SharedStructureData.isOnlineSearch = true;
        showProcessDialog();
        apiCallsForFetchingOnlineMembers(charSequence, date, str, l, Long.valueOf(getSelectedCampaignDate(this.selectedCampaign).getTime()));
        if (this.memberType.equals("C") || this.memberType.equals(SewaConstants.CHILDREN_5_PLUS)) {
            Iterator<MemberDataBean> it = this.memberDataBeans.iterator();
            while (it.hasNext()) {
                setDueVaccinesCountInMemberBean(it.next());
            }
        }
        setMemberSelectionScreen();
    }

    private void apiCallsForFetchingOnlineMembers(CharSequence charSequence, Date date, String str, Long l, Long l2) {
        try {
            setSelectedService(this.memberType);
            if (SearchComponent.SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(charSequence.toString(), null, null, null, null, null, null, null, this.memberType, null, l2, null);
                return;
            }
            if ("ABHA_NUMBER".equalsIgnoreCase(str)) {
                String string = charSequence.toString();
                if (charSequence.length() == 14) {
                    string = new StringBuilder(new StringBuilder(new StringBuilder(charSequence).insert(2, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(7, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(12, GlobalTypes.KEY_VALUE_SEPARATOR).toString();
                }
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(null, string, null, null, null, null, null, null, this.memberType, null, l2, null);
                return;
            }
            if (SearchComponent.SearchTypes.FAMILY_ID.equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(null, null, charSequence.toString(), null, null, null, null, null, this.memberType, null, l2, null);
                return;
            }
            if (SearchComponent.SearchTypes.MEMBER_ID.equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(null, null, null, charSequence.toString(), null, null, null, null, this.memberType, null, l2, null);
                return;
            }
            if (SearchComponent.SearchTypes.NAME.equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(null, null, null, null, charSequence.toString(), null, null, null, this.memberType, null, l2, null);
                return;
            }
            if (SearchComponent.SearchTypes.DOB.equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(null, null, null, null, null, new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_1, Locale.getDefault()).format(date), null, null, this.memberType, null, l2, null);
            } else if ("LMP".equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(null, null, null, null, null, null, new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_1, Locale.getDefault()).format(date), null, this.memberType, null, l2, null);
            } else if ("LOCATION".equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMembersForRIOnline(null, null, null, null, null, null, null, null, this.memberType, l, l2, null);
            } else if (SearchComponent.SearchTypes.UWIN_ID.equalsIgnoreCase(str)) {
                this.memberDataBeans = this.restClient.retrieveMemberFromUwinOnline("uwin-id", charSequence.toString());
            }
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m500xa817b7a1();
                }
            });
            hideProcessDialog();
        }
    }

    /* renamed from: lambda$apiCallsForFetchingOnlineMembers$17$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m500xa817b7a1() {
        SewaUtil.generateToast(this.context, "Unable to fetch members. Please try again.");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void retrieveMemberListByServiceType(java.lang.String r18, java.lang.CharSequence r19, java.lang.String r20, java.lang.String r21, java.util.Date r22, java.util.List<java.lang.Integer> r23) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity.retrieveMemberListByServiceType(java.lang.String, java.lang.CharSequence, java.lang.String, java.lang.String, java.util.Date, java.util.List):void");
    }

    private List<MemberDataBean> getChildrenListFromDataBase() {
        ArrayList arrayList = new ArrayList();
        List<MemberDataBean> arrayList2 = new ArrayList<>();
        if (this.selectedService.equalsIgnoreCase(SERVICE_CHILDREN_UPTO_5)) {
            arrayList2 = this.routineImmunisationService.retrieveChildrenForRoutineImmunisation(this.search, LIMIT, this.offset, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, Collections.singletonList(this.selectedSessionBean.getLocationId()), Boolean.FALSE);
        }
        if (this.selectedService.equalsIgnoreCase(SERVICE_CHILDREN_ABOVE_5)) {
            arrayList2 = this.routineImmunisationService.retrieveChildrenForRoutineImmunisation(this.search, LIMIT, this.offset, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, Collections.singletonList(this.selectedSessionBean.getLocationId()), Boolean.TRUE);
        }
        for (MemberDataBean memberDataBean : arrayList2) {
            setDueVaccinesCountInMemberBean(memberDataBean);
            arrayList.add(memberDataBean);
        }
        return arrayList;
    }

    private List<MemberDataBean> getPregnantWomenListFromDatabase() {
        List<MemberDataBean> listRetrievePregnantWomenForRoutineImmunisation = this.routineImmunisationService.retrievePregnantWomenForRoutineImmunisation(this.search, LIMIT, this.offset, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, Collections.singletonList(this.selectedSessionBean.getLocationId()));
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
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda4
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m492x3b1db2f9(adapterView, view, i, j);
                }
            };
            if (this.isOnlineSearch.booleanValue()) {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsForNotificationListFromMemberDataBeans(this.memberDataBeans), R.layout.listview_row_with_date_and_info, onItemClickListener, null);
            } else {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberListItem(this.memberDataBeans), R.layout.listview_row_with_date_and_info, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.pagingListView);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_CHILD_MEMBER_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addChildrenListView$18$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m492x3b1db2f9(AdapterView adapterView, View view, int i, long j) {
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
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m496x90252cb2(adapterView, view, i, j);
                }
            };
            if (this.isOnlineSearch.booleanValue()) {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsForNotificationListFromMemberDataBeans(this.memberDataBeans), R.layout.listview_row_with_date_and_info, onItemClickListener, null);
            } else {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberListItem(this.memberDataBeans), R.layout.listview_row_with_date_and_info, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.pagingListView);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_PREGNANT_WOMEN_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addPregnantWomenListView$19$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m496x90252cb2(AdapterView adapterView, View view, int i, long j) {
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
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda18
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m495x53d620dc(adapterView, view, i, j);
                }
            };
            if (this.isOnlineSearch.booleanValue()) {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsForNotificationListFromMemberDataBeans(this.memberDataBeans), R.layout.listview_row_with_date_and_info, onItemClickListener, null);
            } else {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberListItem(this.memberDataBeans), R.layout.listview_row_with_date_and_info, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.pagingListView);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_PNC_WOMEN_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addPncWomenListView$20$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m495x53d620dc(AdapterView adapterView, View view, int i, long j) {
        if (this.memberDataBeans.size() > i) {
            this.selectedPeopleIndex = i;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0174 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0123 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.argusoft.sewa.android.app.databean.ListItemDataBean> getMemberListItem(java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r22) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity.getMemberListItem(java.util.List):java.util.List");
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
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        try {
            if (this.selectedServiceIndex == 2 && Boolean.FALSE.equals(this.isOnlineSearch)) {
                List<MemberDataBean> pregnantWomenListFromDatabase = getPregnantWomenListFromDatabase();
                this.offset += LIMIT;
                showProcessDialog();
                onLoadMoreUiMember(pregnantWomenListFromDatabase);
            } else {
                List<NotificationMobDataBean> listRetrieveNotificationsForUserAsPerCampaignDate = this.notificationService.retrieveNotificationsForUserAsPerCampaignDate(Collections.singletonList(this.selectedSessionBean.getLocationId()), null, this.selectedNotificationCode, null, LIMIT, this.offset, getSelectedCampaignDate(this.selectedCampaign));
                this.offset += LIMIT;
                onLoadMoreUiNotifications(listRetrieveNotificationsForUserAsPerCampaignDate);
            }
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void onLoadMoreUiNotifications(List<NotificationMobDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.notificationBeanList.addAll(list);
            this.notificationListView.onFinishLoadingWithItem(true, getListViewItemsForNotificationList(list));
            return;
        }
        this.notificationListView.onFinishLoadingWithItem(false, null);
    }

    public void onLoadMoreUiMember(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> memberListItem = getMemberListItem(list);
            this.memberDataBeans.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, memberListItem);
        } else {
            this.pagingListView.onFinishLoadingWithItem(false, null);
        }
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        IntentResult activityResult = IntentIntegrator.parseActivityResult(i, i2, intent);
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY.intValue()) {
            if (this.isScanAbha) {
                addMemberTypeScreen();
                return;
            }
            if (this.screen.equals(LOCATION_SCREEN)) {
                onServiceSelectionClick();
                return;
            } else if (this.screen.equals(MEMBER_SELECTION_SCREEN)) {
                setMemberSelectionScreen();
                return;
            } else {
                if (this.screen.equals(NOTIFICATION_SELECTION_SCREEN)) {
                    addNotificationSelectionScreen(false);
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
            case "PW":
                this.selectedService = SERVICE_PREGNANT_WOMEN;
                break;
            case "PNC":
                this.selectedService = SERVICE_PNC_MOTHERS;
                break;
            case "C_5_20":
                this.selectedService = SERVICE_CHILDREN_ABOVE_5;
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r11) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity.onClick(android.view.View):void");
    }

    public void callApi(MemberDataBean memberDataBean, String str) {
        try {
            this.familyDataBean = this.restClient.retrieveFamilyDataByMemberId(Integer.valueOf(Integer.parseInt(memberDataBean.getId())));
            this.membersOfFamily = this.restClient.retrieveMembersOfFamilyByFamilyId(memberDataBean.getFamilyId());
            SharedStructureData.isOnlineSearch = true;
            SharedStructureData.onLineSelectedFamilyDataBean = this.familyDataBean;
            SharedStructureData.onLineSelectedMemberBean = new MemberBean(memberDataBean);
            startDynamicFormActivityOnline(memberDataBean, str);
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
        }
    }

    private void startDynamicFormActivityOnline(MemberDataBean memberDataBean, String str) {
        Calendar calendar;
        String str2;
        MemberDataBean next;
        MemberDataBean memberDataBean2;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.vaccineGivenDateMap.clear();
        SharedStructureData.vaccineGivenDateMapList.clear();
        SharedStructureData.riMotherList.clear();
        SharedStructureData.riMotherMap.clear();
        defaultSharedPreferences.edit().clear().apply();
        SharedStructureData.onLineSelectedMemberBean = new MemberBean(memberDataBean);
        this.selectedNotification = new NotificationMobDataBean();
        if (memberDataBean.getNotificationId() != null) {
            this.selectedNotification.setId(Long.valueOf(memberDataBean.getNotificationId().intValue()));
        }
        this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), this.selectedNotification, defaultSharedPreferences);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE, String.valueOf(new Date().getTime()));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CURRENT_DATE_DISPLAY, this.sdf.format(new Date()));
        if (this.selectedSessionBean != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SESSION_ID, this.selectedSessionBean.getSessionId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FROM_MAMTA_CAMPAIGN, MorbiditiesConstant.ONE_PLUS);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_PLACE, NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(this.selectedSessionBean.getStartedOn()));
        }
        if (this.familyDataBean != null) {
            SharedStructureData.relatedPropertyHashTable.put("locationId", this.familyDataBean.getAreaId());
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ROLE, SewaTransformer.loginBean.getUserRole());
        String memberType = UtilBean.getMemberType(memberDataBean);
        this.memberType = memberType;
        if (memberType.equals("C") || this.memberType.equals(SewaConstants.CHILDREN_5_PLUS)) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_TYPE, MorbiditiesConstant.ONE_PLUS);
        } else if (this.memberType.equals(SewaConstants.PREGNANT_WOMEN)) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_TYPE, MorbiditiesConstant.TWO_PLUS);
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NEW_ENTRY, MorbiditiesConstant.TWO_PLUS);
        SharedStructureData.relatedPropertyHashTable.put("memberId", memberDataBean.getId());
        SharedStructureData.relatedPropertyHashTable.put("familyId", memberDataBean.getFamilyId());
        SharedStructureData.currentRchMemberBean = new MemberBean(memberDataBean);
        SharedStructureData.currentRchFamilyDataBean = this.familyDataBean;
        boolean zEqualsIgnoreCase = "FHW_ANC".equalsIgnoreCase(str);
        if (zEqualsIgnoreCase) {
            calendar = Calendar.getInstance();
            calendar.add(1, -20);
            SharedStructureData.membersUnderTwenty.clear();
        } else {
            calendar = null;
        }
        MemberDataBean memberDataBean3 = null;
        int i = 0;
        for (MemberDataBean memberDataBean4 : this.membersOfFamily) {
            if (memberDataBean3 == null && Boolean.TRUE.equals(memberDataBean4.getFamilyHeadFlag())) {
                memberDataBean3 = memberDataBean4;
            }
            if (zEqualsIgnoreCase) {
                if (memberDataBean4.getDob() != null) {
                    memberDataBean2 = memberDataBean3;
                    if (new Date(memberDataBean4.getDob().longValue()).after(calendar.getTime())) {
                        SharedStructureData.membersUnderTwenty.add(new OptionDataBean(memberDataBean4.getId(), UtilBean.getMemberFullName(memberDataBean4), null));
                    }
                } else {
                    memberDataBean2 = memberDataBean3;
                }
                if (memberDataBean4.getMotherId() != null && memberDataBean4.getMotherId().toString().equals(memberDataBean.getId()) && !memberDataBean4.getId().equals(memberDataBean.getId())) {
                    memberDataBean4.getId();
                    i++;
                }
            } else {
                memberDataBean2 = memberDataBean3;
            }
            memberDataBean3 = memberDataBean2;
        }
        if (zEqualsIgnoreCase && i > 0) {
            String strValueOf = String.valueOf(i);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SELECTED_CHILDREN, strValueOf);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ACTUAL_GRAVIDA, strValueOf);
        }
        if (memberDataBean3 != null) {
            SharedStructureData.relatedPropertyHashTable.put("hofFirstName", memberDataBean3.getFirstName());
            SharedStructureData.relatedPropertyHashTable.put("hofMiddleName", memberDataBean3.getMiddleName());
            SharedStructureData.relatedPropertyHashTable.put("hofLastName", memberDataBean3.getLastName());
            if (memberDataBean3.getDob() != null) {
                SharedStructureData.relatedPropertyHashTable.put("hofDobDisplay", this.sdf.format(new Date(memberDataBean3.getDob().longValue())));
                int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(memberDataBean3.getDob().longValue());
                String ageDisplay = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay[0], iArrCalculateAgeYearMonthDay[1], iArrCalculateAgeYearMonthDay[2]);
                if (ageDisplay != null) {
                    SharedStructureData.relatedPropertyHashTable.put("hofAgeDisplay", ageDisplay);
                }
            }
            SharedStructureData.relatedPropertyHashTable.put("hofHealthId", memberDataBean3.getUniqueHealthId());
            if (memberDataBean3.getGender() != null) {
                SharedStructureData.relatedPropertyHashTable.put("hofGender", memberDataBean3.getGender());
            }
            if (memberDataBean3.getNameBasedOnAadhar() != null) {
                SharedStructureData.relatedPropertyHashTable.put("hofNameAsAadhar", memberDataBean3.getNameBasedOnAadhar());
            }
            if (memberDataBean3.getHealthIdNumber() != null && !memberDataBean3.getHealthIdNumber().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put("hofAbhaNumber", memberDataBean3.getHealthIdNumber());
            }
        }
        if (this.memberType.equals("C") || this.memberType.equals(SewaConstants.CHILDREN_5_PLUS)) {
            if (memberDataBean.getMotherId() != null) {
                Iterator<MemberDataBean> it = this.membersOfFamily.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        if (memberDataBean.getMotherId().equals(Long.valueOf(Long.parseLong(next.getId())))) {
                            break;
                        }
                    } else {
                        next = null;
                        break;
                    }
                }
                if (next != null) {
                    SharedStructureData.relatedPropertyHashTable.put("motherFirstName", next.getFirstName());
                    SharedStructureData.relatedPropertyHashTable.put("motherMiddleName", next.getMiddleName());
                    SharedStructureData.relatedPropertyHashTable.put("motherLastName", next.getLastName());
                    if (next.getDob() != null) {
                        SharedStructureData.relatedPropertyHashTable.put("motherDobDisplay", this.sdf.format(next.getDob()));
                        int[] iArrCalculateAgeYearMonthDay2 = UtilBean.calculateAgeYearMonthDay(next.getDob().longValue());
                        String ageDisplay2 = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay2[0], iArrCalculateAgeYearMonthDay2[1], iArrCalculateAgeYearMonthDay2[2]);
                        if (ageDisplay2 != null) {
                            SharedStructureData.relatedPropertyHashTable.put("motherAgeDisplay", ageDisplay2);
                        }
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MOTHER_HEALTH_ID, next.getUniqueHealthId());
                    if (next.getNameBasedOnAadhar() != null) {
                        SharedStructureData.relatedPropertyHashTable.put("motherNameAsAadhar", next.getNameBasedOnAadhar());
                    }
                    if (next.getHealthIdNumber() != null && !next.getHealthIdNumber().isEmpty()) {
                        SharedStructureData.relatedPropertyHashTable.put("motherAbhaNumber", next.getHealthIdNumber());
                    }
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHONE_NUMBER, next.getMobileNumber());
                }
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberDataBean));
            SharedStructureData.relatedPropertyHashTable.put("firstName", memberDataBean.getFirstName());
            SharedStructureData.relatedPropertyHashTable.put("middleName", memberDataBean.getMiddleName());
            SharedStructureData.relatedPropertyHashTable.put("lastName", memberDataBean.getLastName());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberDataBean) + " (" + memberDataBean.getUniqueHealthId() + ")");
            if (memberDataBean.getDob() != null) {
                SharedStructureData.relatedPropertyHashTable.put("dob", memberDataBean.getDob().toString());
                str2 = "dob";
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, this.sdf.format(new Date(memberDataBean.getDob().longValue())));
                int[] iArrCalculateAgeYearMonthDay3 = UtilBean.calculateAgeYearMonthDay(memberDataBean.getDob().longValue());
                String ageDisplay3 = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay3[0], iArrCalculateAgeYearMonthDay3[1], iArrCalculateAgeYearMonthDay3[2]);
                if (ageDisplay3 != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, ageDisplay3);
                }
            } else {
                str2 = "dob";
            }
            SharedStructureData.relatedPropertyHashTable.put("memberHealthId", memberDataBean.getUniqueHealthId());
            if (memberDataBean.getGender() != null) {
                SharedStructureData.relatedPropertyHashTable.put("gender", UtilBean.getGenderLabelFromValue(memberDataBean.getGender()));
            }
            if (memberDataBean.getNameBasedOnAadhar() != null) {
                SharedStructureData.relatedPropertyHashTable.put("nameAsAadhar", memberDataBean.getNameBasedOnAadhar());
            }
            if (memberDataBean.getHealthIdNumber() != null && !memberDataBean.getHealthIdNumber().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ABHA_NUMBER, memberDataBean.getHealthIdNumber());
            }
            SharedStructureData.vaccineGivenDateMap.clear();
            SharedStructureData.vaccineGivenDateMapList.clear();
            if (memberDataBean.getImmunisationGiven() != null && memberDataBean.getImmunisationGiven().length() > 0) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IMMUNISATION_GIVEN, memberDataBean.getImmunisationGiven());
                SharedStructureData.vaccineGivenDateMap = UtilBean.getImmunisationDateMap(memberDataBean.getImmunisationGiven());
                SharedStructureData.vaccineGivenDateMapList.put(0, SharedStructureData.vaccineGivenDateMap);
            }
            ArrayList arrayList = new ArrayList(this.immunisationService.getDueImmunisationsForChild(new Date(memberDataBean.getDob().longValue()), memberDataBean.getImmunisationGiven(), new Date(), SharedStructureData.getVaccineGivenDateMap(0)));
            arrayList.removeAll(this.immunisationService.getMissedImmunisationListFromDueList(arrayList, new Date(memberDataBean.getDob().longValue()), new Date(), SharedStructureData.getVaccineGivenDateMap(0), false));
            LinkedHashSet<String> linkedHashSet = new LinkedHashSet(arrayList);
            linkedHashSet.remove(RchConstants.VITAMIN_A);
            if (!linkedHashSet.isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.REMAINING_VACCINES, linkedHashSet.toString().replace("[", "").replace("]", ""));
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new OptionDataBean("-1", "-Select-", null));
            for (String str3 : linkedHashSet) {
                OptionDataBean optionDataBean = new OptionDataBean();
                optionDataBean.setKey(str3);
                optionDataBean.setValue(FullFormConstants.getFullFormOfVaccines(str3));
                arrayList2.add(optionDataBean);
            }
            SharedStructureData.dueImmunisations = arrayList2;
        } else {
            str2 = "dob";
        }
        if (this.memberType.equals(SewaConstants.PREGNANT_WOMEN)) {
            if (memberDataBean.getFirstName() != null) {
                SharedStructureData.relatedPropertyHashTable.put("firstName", memberDataBean.getFirstName());
            }
            SharedStructureData.relatedPropertyHashTable.put("middleName", memberDataBean.getMiddleName());
            SharedStructureData.relatedPropertyHashTable.put("lastName", memberDataBean.getLastName());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberDataBean) + " (" + memberDataBean.getUniqueHealthId() + ")");
            if (memberDataBean.getCurPregRegDetId() != null) {
                SharedStructureData.relatedPropertyHashTable.put("curPregRegDetId", memberDataBean.getCurPregRegDetId().toString());
            }
            if (memberDataBean.getDob() != null) {
                SharedStructureData.relatedPropertyHashTable.put(str2, memberDataBean.getDob().toString());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, this.sdf.format(new Date(memberDataBean.getDob().longValue())));
                int[] iArrCalculateAgeYearMonthDay4 = UtilBean.calculateAgeYearMonthDay(memberDataBean.getDob().longValue());
                String ageDisplay4 = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay4[0], iArrCalculateAgeYearMonthDay4[1], iArrCalculateAgeYearMonthDay4[2]);
                if (ageDisplay4 != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, ageDisplay4);
                }
            }
            SharedStructureData.relatedPropertyHashTable.put("memberHealthId", memberDataBean.getUniqueHealthId());
            if (memberDataBean.getLmpDate() != null) {
                SharedStructureData.relatedPropertyHashTable.put("lmpDate", String.valueOf(memberDataBean.getLmpDate()));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LMP_DATE_DISPLAY, this.sdf.format(new Date(memberDataBean.getLmpDate().longValue())));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LAST_LMP, this.sdf.format(new Date(memberDataBean.getLmpDate().longValue())));
            }
            if (memberDataBean.getEdd() != null) {
                SharedStructureData.relatedPropertyHashTable.put("edd", this.sdf.format(new Date(memberDataBean.getLmpDate().longValue())));
            }
            if (memberDataBean.getHealthIdNumber() != null && !memberDataBean.getHealthIdNumber().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ABHA_NUMBER, memberDataBean.getHealthIdNumber());
            }
            if (memberDataBean.getImmunisationGiven() != null) {
                if (memberDataBean.getImmunisationGiven().contains(RchConstants.TT_BOOSTER)) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TT, RchConstants.TT_BOOSTER);
                } else if (memberDataBean.getImmunisationGiven().contains(RchConstants.TT2)) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TT, RchConstants.TT2);
                } else if (memberDataBean.getImmunisationGiven().contains(RchConstants.TT1)) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TT, RchConstants.TT1);
                }
                if (memberDataBean.getImmunisationGiven().contains(RchConstants.TT1)) {
                    for (String str4 : memberDataBean.getImmunisationGiven().split(GlobalTypes.COMMA)) {
                        String[] strArrSplit = str4.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                        if (strArrSplit[0].equals(RchConstants.TT1)) {
                            try {
                                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TT_1_GIVEN_ON, String.valueOf(((Date) Objects.requireNonNull(this.sdf.parse(strArrSplit[1]))).getTime()));
                                Map<String, String> map = SharedStructureData.relatedPropertyHashTable;
                                SimpleDateFormat simpleDateFormat = this.sdf;
                                map.put(RelatedPropertyNameConstants.TT_1_GIVEN_ON_DISPLAY, simpleDateFormat.format(Long.valueOf(((Date) Objects.requireNonNull(simpleDateFormat.parse(strArrSplit[1]))).getTime())));
                            } catch (ParseException e) {
                                Log.e(getClass().getSimpleName(), e.getMessage(), e);
                            }
                        }
                    }
                }
                if (memberDataBean.getImmunisationGiven().contains(RchConstants.TD_BOOSTER)) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TD, RchConstants.TD_BOOSTER);
                } else if (memberDataBean.getImmunisationGiven().contains(RchConstants.TD2)) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TD, RchConstants.TD2);
                } else if (memberDataBean.getImmunisationGiven().contains(RchConstants.TD1)) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TD, RchConstants.TD1);
                }
                if (memberDataBean.getImmunisationGiven().contains(RchConstants.TD1)) {
                    for (String str5 : memberDataBean.getImmunisationGiven().split(GlobalTypes.COMMA)) {
                        String[] strArrSplit2 = str5.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                        if (strArrSplit2[0].equals(RchConstants.TD1)) {
                            try {
                            } catch (ParseException e2) {
                                e = e2;
                            }
                            try {
                                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TD_1_GIVEN_ON, String.valueOf(((Date) Objects.requireNonNull(this.sdf.parse(strArrSplit2[1]))).getTime()));
                            } catch (ParseException e3) {
                                e = e3;
                                Log.e(getClass().getSimpleName(), e.getMessage(), e);
                            }
                        }
                    }
                }
            }
        }
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", str);
        intent.putExtra("isOnlineSearchPropagated", SharedStructureData.isOnlineSearch);
        startActivityForResult(intent, REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY.intValue());
        hideProcessDialog();
    }

    private Boolean checkForPreviousSessions(CampaignMasterBean campaignMasterBean) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, CampaignMasterBean> entry : this.dayNumWithCampaignMap.entrySet()) {
            if (entry.getKey().intValue() < campaignMasterBean.getDayNumber().intValue()) {
                arrayList.add(entry.getKey());
            }
        }
        this.expiredConfigIds.addAll(arrayList);
        return Boolean.valueOf(!arrayList.isEmpty());
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() == 16908332) {
            String str = this.screen;
            str.hashCode();
            switch (str) {
                case "LOCATION_SCREEN":
                    onServiceSelectionClick();
                    break;
                case "CAMPAIGN_SELECTION_SCREEN":
                    navigateToHomeScreen(false);
                    break;
                case "notificationSelectionScreen":
                case "memberSelectionScreen":
                    addMemberTypeScreen();
                    break;
                case "IMMUNISATION_INVENTORY_SCREEN":
                    showProcessDialog();
                    retrieveCampaignSessionsByLocation();
                    break;
                case "MEMBER_DETAILS_TO_ASHA_USER_SCREEN":
                    onServiceSelectionClick();
                    break;
                case "locationSelectionScreen":
                    navigateToHomeScreen(false);
                    break;
                case "memberTypeScreen":
                    showProcessDialog();
                    retrieveCampaignSessionsByLocation();
                    break;
                default:
                    navigateToHomeScreen(false);
                    break;
            }
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ROUTINE_IMMUNISATION_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m503x279cfafa(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$21$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m503x279cfafa(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    private void startDynamicFormActivity(String str, MemberDataBean memberDataBean) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.vaccineGivenDateMap.clear();
        SharedStructureData.vaccineGivenDateMapList.clear();
        SharedStructureData.riMotherList.clear();
        SharedStructureData.riMotherMap.clear();
        defaultSharedPreferences.edit().clear().apply();
        try {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), this.selectedNotification, defaultSharedPreferences);
            if (this.selectedSessionBean != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SESSION_ID, this.selectedSessionBean.getSessionId());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FROM_MAMTA_CAMPAIGN, MorbiditiesConstant.ONE_PLUS);
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_PLACE, NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY);
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(this.selectedSessionBean.getStartedOn()));
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", str);
            startActivityForResult(intent, REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            showProcessDialog();
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m513xc5b5967(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    /* renamed from: lambda$startDynamicFormActivity$22$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity, reason: not valid java name */
    /* synthetic */ void m513xc5b5967(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
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
