package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.TableLayout;
import android.widget.TableRow;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.ChildGrowthChartComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.component.SearchComponent;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class MyPeopleActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String CHART_SELECTION_SCREEN = "chartSelectionScreen";
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN = "filSideEffectMemberSelectionScreen";
    private static final String FILARIASIS_TYPE_SELECTION_SCREEN = "filariasisTypeSelectionScreen";
    private static final String MANAGE_FAMILY_MIGRATIONS_SCREEN = "manageFamilyMigrationsScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String MIGRATED_FAMILY_SCREEN = "migratedFamilyScreen";
    private static final String MIGRATED_MEMBERS_SCREEN = "migratedMembersScreen";
    private static final String PEOPLE_SELECTION_SCREEN = "peopleSelectionScreen";
    private static final String RCH_REGISTER_MEMBER_SCREEN = "rchRegisterMemberScreen";
    private static final String RCH_REGISTER_TABLE_SCREEN = "rchRegisterTableScreen";
    private static final Integer REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY = 200;
    private static final String SERVICE_ADD_NEW_MEMBER = "addNewMember";
    private static final String SERVICE_CHILDREN = "children";
    private static final String SERVICE_CHILDREN_ABOVE_5 = "childrenAbove5";
    private static final String SERVICE_ELDERLY_CARE = "elderlyCare";
    private static final String SERVICE_ELIGIBLE_COUPLES = "eligibleCouples";
    private static final String SERVICE_FILARIASIS_DRUG_CAMPAIGN = "filariasisCampaign";
    private static final String SERVICE_LEPROSY_SURVEY = "leprosySurvey";
    private static final String SERVICE_MANAGE_FAMILY_MIGRATIONS = "manageFamilyMigrations";
    private static final String SERVICE_MENTAL_HEALTH_SCREENING = "mentalHealthScreening";
    private static final String SERVICE_MIGRATED_IN_FAMILY = "migratedInFamily";
    private static final String SERVICE_MIGRATED_IN_MEMBERS = "migratedInMembers";
    private static final String SERVICE_MIGRATED_OUT_FAMILY = "migratedOutFamily";
    private static final String SERVICE_MIGRATED_OUT_MEMBERS = "migratedOutMembers";
    private static final String SERVICE_NEWLY_WED_COUPLES = "newlyWedCouples";
    private static final String SERVICE_PNC_MOTHERS = "pncMothers";
    private static final String SERVICE_PREGNANT_WOMEN = "pregnantWomen";
    private static final String SERVICE_RCH_REGISTER = "rchRegister";
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private static final String SERVICE_TEMP_REGISTRATION = "tempRegistration";
    private static final String SERVICE_UPDATE_MEMBER = "updateMember";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private static final String VISIT_SELECTION_SCREEN = "visitSelectionScreen";
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    private Date dateForOfflineSearch;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView headerTitle;
    ImmunisationServiceImpl immunisationService;
    private boolean isMigratedOut;
    LocationMasterServiceImpl locationMasterService;
    Dao<MemberBean, Integer> memberBeanDao;
    private String memberType;
    private List<MigratedFamilyBean> migratedFamilyBeans;
    private List<MigratedMembersBean> migratedMembersBeans;
    MigrationServiceImpl migrationService;
    private MyAlertDialog myAlertDialog;
    private Intent myIntent;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableView;
    private MaterialTextView noMemberAvailableView;
    NotificationServiceImpl notificationService;
    private MaterialTextView pagingHeaderView;
    private PagingListView pagingListView;
    private String qrData;
    private LinkedHashMap<String, String> qrScanFilter;
    private String rbText;
    private List<MemberDataBean> removedChildren;
    SewaServiceRestClientImpl restClient;
    private String screen;
    private CharSequence search;
    private SearchComponent searchBox;
    private Date searchDate;
    private Long searchLocation;
    private CharSequence searchString;
    private TextInputLayout searchText;
    private String searchType;
    private String selectedService;
    private Integer selectedVillage;
    SewaServiceImpl sewaService;
    private SharedPreferences sharedPref;
    private List<Integer> villageIds;
    private Spinner villageSpinner;
    private List<String> visits;
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<MemberDataBean> memberList = new ArrayList();
    private MemberDataBean memberSelected = null;
    private List<FamilyDataBean> familyList = new ArrayList();
    private FamilyDataBean familySelected = null;
    private Timer timer = new Timer();
    private int selectedServiceIndex = -1;
    private int selectedPeopleIndex = -1;
    private int selectedFamilyIndex = -1;
    private int selectedVisitIndex = -1;
    private Integer limit = 30;
    private Integer offset = 0;
    private int selectedMemberToUpdateIndex = -1;
    private int selectedFilariasisType = -1;
    private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
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
            this.myIntent = intent;
            intent.setFlags(335544320);
            startActivity(this.myIntent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.MY_PEOPLE_TITLE));
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
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.villageList = distinctLocationsAssignedToUser;
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.selectedVillage = this.villageList.get(0).getActualID();
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageSelectionSpinner();
        } else if (this.villageList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageSelectionSpinner();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0021  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r18) {
        /*
            Method dump skipped, instructions count: 2148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleActivity.onClick(android.view.View):void");
    }

    /* renamed from: lambda$onClick$0$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m285xfe038319(View view) {
        this.myAlertDialog.dismiss();
    }

    /* renamed from: lambda$onClick$1$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m286x23978c1a(String str, View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            if (Boolean.TRUE.equals(Boolean.valueOf(SharedStructureData.isOnlineSearch))) {
                if (this.sewaService.isOnline()) {
                    callApi(this.memberSelected, str);
                    return;
                } else {
                    SewaUtil.generateToast(this.context, "You are offline");
                    return;
                }
            }
            startDynamicFormActivity(str, this.memberSelected, null);
            return;
        }
        this.myAlertDialog.dismiss();
    }

    public void showMDAorSideEffectsScreen() {
        this.selectedFilariasisType = -1;
        this.screen = FILARIASIS_TYPE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_FILARIASIS_MDA)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_FILARIASIS_SIDE_EFFECTS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda11
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m297xf25598d3(adapterView, view, i, j);
            }
        }, null));
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$showMDAorSideEffectsScreen$2$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m297xf25598d3(AdapterView adapterView, View view, int i, long j) {
        if (i == 0) {
            this.selectedFilariasisType = 0;
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBoxForFamily();
            retrieveFilariaFamilyListFromDB(null);
            return;
        }
        if (i == 1) {
            this.selectedFilariasisType = 1;
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBox();
            retrieveMemberListByServiceType(this.selectedService, null, false, null, null);
        }
    }

    public void callApi(MemberDataBean memberDataBean, String str) {
        try {
            FamilyDataBean familyDataBeanRetrieveFamilyDataByMemberId = this.restClient.retrieveFamilyDataByMemberId(Integer.valueOf(Integer.parseInt(memberDataBean.getId())));
            List<MemberDataBean> listRetrieveMembersOfFamilyByFamilyId = this.restClient.retrieveMembersOfFamilyByFamilyId(familyDataBeanRetrieveFamilyDataByMemberId.getFamilyId());
            SharedStructureData.isOnlineSearch = true;
            SharedStructureData.onLineSelectedFamilyDataBean = familyDataBeanRetrieveFamilyDataByMemberId;
            SharedStructureData.onLineSelectedMemberBean = new MemberBean(memberDataBean);
            SharedStructureData.membersOfFamily = listRetrieveMembersOfFamilyByFamilyId;
            if (str != null && !TextUtils.isEmpty(str)) {
                if ("DPT_BOOSTER_2_ALERT".equals(str) && memberDataBean.getImmunisationGiven() != null && memberDataBean.getImmunisationGiven().contains(RchConstants.DPT_BOOSTER_2)) {
                    String[] strArrSplit = memberDataBean.getImmunisationGiven().split(GlobalTypes.COMMA);
                    String str2 = "";
                    int length = strArrSplit.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        String str3 = strArrSplit[i];
                        if (str3.startsWith("DPT_BOOSTER_2#")) {
                            String[] strArrSplit2 = str3.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                            if (strArrSplit2.length == 2) {
                                str2 = strArrSplit2[1];
                            }
                        } else {
                            i++;
                        }
                    }
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.m281x6b39a04f(view);
                        }
                    };
                    MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, GlobalTypes.DPT_BOOSTER_2_ALREADY_GIVEN + str2, onClickListener, DynamicUtils.BUTTON_OK);
                    this.myAlertDialog = myAlertDialog;
                    myAlertDialog.show();
                    hideProcessDialog();
                    return;
                }
                startDynamicFormActivity(str, memberDataBean, null);
                return;
            }
            if (str == null || TextUtils.isEmpty(str)) {
                return;
            }
            startDynamicFormActivity(str, memberDataBean, null);
        } catch (RestHttpException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: lambda$callApi$3$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m281x6b39a04f(View view) {
        this.myAlertDialog.dismiss();
    }

    public void setManageFamilyMigrationsScreen() {
        this.screen = MANAGE_FAMILY_MIGRATIONS_SCREEN;
        setTitle(LabelConstants.MANAGE_FAMILY_MIGRATIONS);
        this.footerLayout.setVisibility(8);
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_MIGRATED_IN_FAMILY)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_MIGRATED_OUT_FAMILY)));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m290x86af3970(adapterView, view, i, j);
            }
        }, null));
        hideProcessDialog();
    }

    /* renamed from: lambda$setManageFamilyMigrationsScreen$4$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m290x86af3970(AdapterView adapterView, View view, int i, long j) {
        this.selectedVisitIndex = i;
        onClick(this.nextButton);
    }

    public void setVisits() {
        this.visits = new ArrayList();
        String str = this.selectedService;
        str.hashCode();
        switch (str) {
            case "children":
                this.visits.add("FHW_CS");
                this.visits.add(FormConstants.TECHO_FHW_VAE);
                this.visits.add(FormConstants.TECHO_AWW_WEIGHT_GROWTH_GRAPH);
                this.bodyLayoutContainer.removeAllViews();
                setVisitSelectionScreen(this.visits);
                break;
            case "eligibleCouples":
                this.visits.add(FormConstants.TECHO_FHW_RIM);
                this.visits.add("LMPFU");
                this.bodyLayoutContainer.removeAllViews();
                setVisitSelectionScreen(this.visits);
                break;
            case "pregnantWomen":
                this.visits.add("FHW_ANC");
                this.visits.add("FHW_WPD");
                this.bodyLayoutContainer.removeAllViews();
                setVisitSelectionScreen(this.visits);
                break;
            case "pncMothers":
                this.visits.add("FHW_PNC");
                this.bodyLayoutContainer.removeAllViews();
                setVisitSelectionScreen(this.visits);
                break;
        }
        hideProcessDialog();
    }

    public void addGraph() {
        this.screen = CHART_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(new ChildGrowthChartComponent(this.context, new MemberBean(this.memberSelected)));
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
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                MyPeopleActivity.this.bodyLayoutContainer.removeView(MyPeopleActivity.this.ashaAreaSpinner);
                MyPeopleActivity myPeopleActivity = MyPeopleActivity.this;
                myPeopleActivity.ashaAreaList = myPeopleActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) MyPeopleActivity.this.villageList.get(i2)).getActualID());
                MyPeopleActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
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

    public void setServiceSelectionScreen() {
        this.screen = SERVICE_SELECTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_TYPE_SELECTION));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_ELIGIBLE_COUPLES)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_NEWLY_WED_COUPLES)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel("Pregnant Women")));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_PNC_WOMEN)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel("Children")));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_DPT_BOOSTER_2)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_TEMPORARY_REGISTRATION)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_UPDATE_MEMBER)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_ADD_MEMBER)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_MIGRATED_IN_MEMBERS)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_MIGRATED_OUT_MEMBERS)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_RCH_REGISTER)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.MANAGE_FAMILY_MIGRATIONS)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.MENTAL_HEALTH_SCREENING)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.ELDERLY_CARE)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.FILARIASIS_CAMPAIGN)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.LCDC_CAMPAIGN)));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda30
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m295x48e2681a(adapterView, view, i, j);
            }
        }, null));
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$setServiceSelectionScreen$5$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m295x48e2681a(AdapterView adapterView, View view, int i, long j) {
        this.selectedServiceIndex = i;
        onClick(this.nextButton);
    }

    public void addSearchTextBoxOnline() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(SearchComponent.SearchTypes.MOBILE_NUMBER);
        arrayList.add("ABHA_NUMBER");
        arrayList.add(SearchComponent.SearchTypes.MEMBER_ID);
        arrayList.add(SearchComponent.SearchTypes.FAMILY_ID);
        arrayList.add(SearchComponent.SearchTypes.NAME);
        arrayList.add(SearchComponent.SearchTypes.DOB);
        SearchComponent searchComponent = new SearchComponent(this.context, UtilBean.getMyLabel("Enter text and click search icon to search online"), null, arrayList, getSearchClickOnline(), getLocationSearchOnline(), this.locationMasterService);
        this.searchBox = searchComponent;
        searchComponent.addTextWatcherInEditText(getTextWatcherForOfflineSearch());
        this.searchBox.addOnDateSetListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m279xc9ea9979(view);
            }
        });
        this.bodyLayoutContainer.addView(this.searchBox);
    }

    /* renamed from: lambda$addSearchTextBoxOnline$6$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m278xa4569078() {
        retrieveMemberListByServiceType(this.selectedService, null, true, this.searchBox.getSelectedSearchType(), this.searchBox.getSelectedDate());
    }

    /* renamed from: lambda$addSearchTextBoxOnline$7$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m279xc9ea9979(View view) {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m278xa4569078();
            }
        });
    }

    private SearchComponent.SearchClick getSearchClickOnline() {
        return new SearchComponent.SearchClick() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda18
            @Override // com.argusoft.sewa.android.app.component.SearchComponent.SearchClick
            public final void onSearchClick(String str, String str2, Date date) {
                this.f$0.m283x977f85cf(str, str2, date);
            }
        };
    }

    /* renamed from: lambda$getSearchClickOnline$8$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m283x977f85cf(String str, String str2, Date date) {
        if (str2 == null && date == null) {
            return;
        }
        if (this.sewaService.isOnline()) {
            retrieveOnlineMember(str2, date, str, null);
        } else {
            SewaUtil.generateToast(this.context, "You need internet to search members online");
        }
    }

    private TextWatcher getTextWatcherForOfflineSearch() {
        return new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                MyPeopleActivity.this.timer.cancel();
                MyPeopleActivity.this.timer = new Timer();
                MyPeopleActivity.this.timer.schedule(new AnonymousClass1(charSequence), MyPeopleActivity.DELAY);
            }

            /* renamed from: com.argusoft.sewa.android.app.activity.MyPeopleActivity$2$1, reason: invalid class name */
            class AnonymousClass1 extends TimerTask {
                final /* synthetic */ CharSequence val$s;

                AnonymousClass1(CharSequence charSequence) {
                    this.val$s = charSequence;
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    SharedStructureData.isOnlineSearch = false;
                    CharSequence charSequence = this.val$s;
                    if (charSequence != null && charSequence.length() > 2) {
                        MyPeopleActivity myPeopleActivity = MyPeopleActivity.this;
                        final CharSequence charSequence2 = this.val$s;
                        myPeopleActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$2$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m302xd9f8e5d6(charSequence2);
                            }
                        });
                    } else {
                        CharSequence charSequence3 = this.val$s;
                        if (charSequence3 == null || charSequence3.length() == 0) {
                            MyPeopleActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$2$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m303x946e8657();
                                }
                            });
                        }
                    }
                }

                /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-MyPeopleActivity$2$1, reason: not valid java name */
                /* synthetic */ void m302xd9f8e5d6(CharSequence charSequence) {
                    MyPeopleActivity.this.retrieveMemberListByServiceType(MyPeopleActivity.this.selectedService, charSequence, false, MyPeopleActivity.this.searchBox.getSelectedSearchType(), null);
                }

                /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-MyPeopleActivity$2$1, reason: not valid java name */
                /* synthetic */ void m303x946e8657() {
                    MyPeopleActivity.this.showProcessDialog();
                    MyPeopleActivity.this.offset = 0;
                    MyPeopleActivity.this.retrieveMemberListByServiceType(MyPeopleActivity.this.selectedService, null, false, MyPeopleActivity.this.searchBox.getSelectedSearchType(), null);
                }
            }
        };
    }

    private SearchComponent.LocationSelection getLocationSearchOnline() {
        return new SearchComponent.LocationSelection() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda9
            @Override // com.argusoft.sewa.android.app.component.SearchComponent.LocationSelection
            public final void onLocationSelection(String str, String str2, Long l) {
                this.f$0.m282xe87e9fdf(str, str2, l);
            }
        };
    }

    /* renamed from: lambda$getLocationSearchOnline$9$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m282xe87e9fdf(String str, String str2, Long l) {
        if (str2 == null && l == null) {
            return;
        }
        if (this.sewaService.isOnline()) {
            retrieveOnlineMember(str2, null, str, l);
        } else {
            SewaUtil.generateToast(this.context, "You need internet to search members online");
        }
    }

    private void setSelectedService(String str) {
        str.hashCode();
        switch (str) {
            case "C":
                this.selectedService = SERVICE_CHILDREN;
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

    public void retrieveOnlineMember(CharSequence charSequence, Date date, String str, Long l) {
        SharedStructureData.isOnlineSearch = true;
        this.memberList.clear();
        this.search = charSequence;
        this.searchDate = date;
        this.searchType = str;
        this.searchLocation = l;
        this.offset = 0;
        showProcessDialog();
        this.memberList = fetchMembersFromServer(charSequence, date, str, l);
        setMemberSelectionScreen(this.selectedService, true);
    }

    private List<MemberDataBean> fetchMembersFromServer(CharSequence charSequence, Date date, String str, Long l) {
        try {
            setSelectedService(this.memberType);
            List<MemberDataBean> arrayList = new ArrayList<>();
            if (SearchComponent.SearchTypes.MOBILE_NUMBER.equalsIgnoreCase(str)) {
                arrayList = this.restClient.retrieveMembersForRIOnline(charSequence.toString(), null, null, null, null, null, null, this.offset, this.memberType, null, null, null);
            } else if ("ABHA_NUMBER".equalsIgnoreCase(str)) {
                String string = charSequence.toString();
                if (string.length() == 14) {
                    string = new StringBuilder(new StringBuilder(new StringBuilder(charSequence).insert(2, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(7, GlobalTypes.KEY_VALUE_SEPARATOR).toString()).insert(12, GlobalTypes.KEY_VALUE_SEPARATOR).toString();
                }
                arrayList = this.restClient.retrieveMembersForRIOnline(null, string, null, null, null, null, null, this.offset, this.memberType, null, null, null);
            } else if (SearchComponent.SearchTypes.FAMILY_ID.equalsIgnoreCase(str)) {
                arrayList = this.restClient.retrieveMembersForRIOnline(null, null, charSequence.toString(), null, null, null, null, this.offset, this.memberType, null, null, null);
            } else if (SearchComponent.SearchTypes.MEMBER_ID.equalsIgnoreCase(str)) {
                arrayList = this.restClient.retrieveMembersForRIOnline(null, null, null, charSequence.toString(), null, null, null, this.offset, this.memberType, null, null, null);
            } else if (SearchComponent.SearchTypes.NAME.equalsIgnoreCase(str)) {
                arrayList = this.restClient.retrieveMembersForRIOnline(null, null, null, null, charSequence.toString(), null, null, this.offset, this.memberType, null, null, null);
            } else if (SearchComponent.SearchTypes.DOB.equalsIgnoreCase(str)) {
                arrayList = this.restClient.retrieveMembersForRIOnline(null, null, null, null, null, new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_1, Locale.getDefault()).format(date), null, this.offset, this.memberType, null, null, null);
            } else if ("LMP".equalsIgnoreCase(str)) {
                arrayList = this.restClient.retrieveMembersForRIOnline(null, null, null, null, null, null, new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_1, Locale.getDefault()).format(date), this.offset, this.memberType, null, null, null);
            } else if ("LOCATION".equalsIgnoreCase(str)) {
                arrayList = this.restClient.retrieveMembersForRIOnline(null, null, null, null, null, null, null, this.offset, this.memberType, l, null, null);
            }
            this.offset = Integer.valueOf(this.offset.intValue() + 30);
            return arrayList;
        } catch (RestHttpException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    public void addSearchTextBox() {
        TextInputLayout editText;
        if (this.selectedService.equals(SERVICE_TEMP_REGISTRATION) || this.selectedService.equals(SERVICE_MIGRATED_IN_MEMBERS) || this.selectedService.equals(SERVICE_MIGRATED_OUT_MEMBERS)) {
            return;
        }
        if (this.selectedService.equals(SERVICE_ADD_NEW_MEMBER)) {
            editText = MyStaticComponents.getEditText(this, LabelConstants.FAMILY_ID_TO_SEARCH, 1, 15, 1);
        } else {
            editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        }
        this.bodyLayoutContainer.addView(editText);
        if (!this.selectedService.equals(SERVICE_ADD_NEW_MEMBER) && !this.selectedService.equals(SERVICE_UPDATE_MEMBER)) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        }
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    MyPeopleActivity.this.timer.cancel();
                    MyPeopleActivity.this.timer = new Timer();
                    MyPeopleActivity.this.timer.schedule(new AnonymousClass1(charSequence), MyPeopleActivity.DELAY);
                }

                /* renamed from: com.argusoft.sewa.android.app.activity.MyPeopleActivity$3$1, reason: invalid class name */
                class AnonymousClass1 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    AnonymousClass1(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CharSequence charSequence = this.val$s;
                        if (charSequence != null && charSequence.length() > 2) {
                            MyPeopleActivity myPeopleActivity = MyPeopleActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            myPeopleActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$3$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m304xd9f8e997(charSequence2);
                                }
                            });
                            return;
                        }
                        CharSequence charSequence3 = this.val$s;
                        if (charSequence3 == null || charSequence3.length() == 0) {
                            MyPeopleActivity myPeopleActivity2 = MyPeopleActivity.this;
                            final CharSequence charSequence4 = this.val$s;
                            myPeopleActivity2.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$3$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m305x946e8a18(charSequence4);
                                }
                            });
                        }
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-MyPeopleActivity$3$1, reason: not valid java name */
                    /* synthetic */ void m304xd9f8e997(CharSequence charSequence) {
                        if (!MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_ADD_NEW_MEMBER) && !MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_UPDATE_MEMBER)) {
                            if (!MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_RCH_REGISTER)) {
                                MyPeopleActivity.this.retrieveMemberListByServiceType(MyPeopleActivity.this.selectedService, charSequence, true, null, null);
                                return;
                            } else {
                                MyPeopleActivity.this.retrieveMemberListForRchRegister(charSequence);
                                return;
                            }
                        }
                        MyPeopleActivity.this.retrieveMemberListForUpdateBySearch(charSequence);
                    }

                    /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-MyPeopleActivity$3$1, reason: not valid java name */
                    /* synthetic */ void m305x946e8a18(CharSequence charSequence) {
                        MyPeopleActivity.this.showProcessDialog();
                        if (MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_ADD_NEW_MEMBER) || MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_UPDATE_MEMBER)) {
                            MyPeopleActivity.this.bodyLayoutContainer.removeView(MyPeopleActivity.this.pagingHeaderView);
                            MyPeopleActivity.this.bodyLayoutContainer.removeView(MyPeopleActivity.this.noMemberAvailableView);
                            MyPeopleActivity.this.bodyLayoutContainer.removeView(MyPeopleActivity.this.pagingListView);
                            MyPeopleActivity.this.hideProcessDialog();
                            return;
                        }
                        if (!MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_RCH_REGISTER)) {
                            MyPeopleActivity.this.retrieveMemberListByServiceType(MyPeopleActivity.this.selectedService, null, false, null, null);
                        } else {
                            MyPeopleActivity.this.retrieveMemberListForRchRegister(charSequence);
                        }
                    }
                }
            });
        }
    }

    public void addSearchTextBoxForFamily() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 15, 1);
        this.searchText = editText;
        if (editText.getEditText() != null) {
            this.searchText.getEditText().addTextChangedListener(new AnonymousClass4());
        }
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MyPeopleActivity$4, reason: invalid class name */
    class AnonymousClass4 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass4() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            MyPeopleActivity.this.timer.cancel();
            MyPeopleActivity.this.timer = new Timer();
            MyPeopleActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.4.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MyPeopleActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_LEPROSY_SURVEY)) {
                                    MyPeopleActivity.this.retrieveLCDCFamilyListFromDB(charSequence.toString());
                                } else {
                                    MyPeopleActivity.this.retrieveFilariaFamilyListFromDB(charSequence.toString());
                                }
                                MyPeopleActivity.this.searchText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        MyPeopleActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.4.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MyPeopleActivity.this.showProcessDialog();
                                if (MyPeopleActivity.this.selectedService.equals(MyPeopleActivity.SERVICE_LEPROSY_SURVEY)) {
                                    MyPeopleActivity.this.retrieveLCDCFamilyListFromDB(null);
                                } else {
                                    MyPeopleActivity.this.retrieveFilariaFamilyListFromDB(null);
                                }
                            }
                        });
                    }
                }
            }, MyPeopleActivity.DELAY);
        }
    }

    public void retrieveLCDCFamilyListFromDB(String str) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (str == null) {
            this.familyList = this.fhsService.retrieveFamilyDataBeansForLCDCByArea(this.selectedAshaAreas, this.limit.intValue(), this.offset.intValue());
            this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        } else {
            this.familyList = this.fhsService.searchFamilyDataBeansForLCDCByArea(this.selectedAshaAreas, str);
        }
        setFamilySelectionScreen(str != null);
    }

    public void retrieveFilariaFamilyListFromDB(CharSequence charSequence) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (charSequence == null) {
            this.familyList = this.fhsService.retrieveFamilyDataBeansForFilariaByArea(this.selectedAshaAreas, this.limit.intValue(), this.offset.intValue());
            this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        } else {
            this.familyList = this.fhsService.searchFamilyDataBeansForFilariaByArea(this.selectedAshaAreas, charSequence.toString());
        }
        setFamilySelectionScreen(charSequence != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.screen = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.headerTitle);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.selectedFamilyIndex = -1;
        List<FamilyDataBean> list = this.familyList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
            this.headerTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            List<ListItemDataBean> familyList = getFamilyList(this.familyList);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda2
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m287xea7a9555(adapterView, view, i, j);
                }
            };
            if (z) {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, null);
            } else {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.pagingListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m288x100e9e56(view);
                }
            });
        }
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setFamilySelectionScreen$10$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m287xea7a9555(AdapterView adapterView, View view, int i, long j) {
        this.selectedFamilyIndex = i;
    }

    /* renamed from: lambda$setFamilySelectionScreen$11$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m288x100e9e56(View view) {
        navigateToHomeScreen(false);
    }

    public void setFilariasisSideEffectsMemberSelectionScreen(boolean z) {
        this.screen = FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.selectedMemberToUpdateIndex = -1;
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
            this.pagingHeaderView = listTitleView;
            listTitleView.setPadding(0, 50, 0, 0);
            this.bodyLayoutContainer.addView(this.pagingHeaderView);
            List<ListItemDataBean> membersList = getMembersList(this.memberList);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda10
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m289xefa41ba3(adapterView, view, i, j);
                }
            };
            if (z) {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, membersList, R.layout.listview_row_with_two_item, onItemClickListener, null);
            } else {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, membersList, R.layout.listview_row_with_two_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.pagingListView);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setFilariasisSideEffectsMemberSelectionScreen$12$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m289xefa41ba3(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberToUpdateIndex = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void retrieveMemberListByServiceType(java.lang.String r15, java.lang.CharSequence r16, boolean r17, java.lang.String r18, java.util.Date r19) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleActivity.retrieveMemberListByServiceType(java.lang.String, java.lang.CharSequence, boolean, java.lang.String, java.util.Date):void");
    }

    public void setMemberSelectionScreen(String str, boolean z) {
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        str.hashCode();
        switch (str) {
            case "filariasisCampaign":
                setFilariasisSideEffectsMemberSelectionScreen(false);
                break;
            case "childrenAbove5":
            case "children":
                addChildsBelow5YearsList();
                break;
            case "newlyWedCouples":
                addNewlyWedCoupleList();
                break;
            case "elderlyCare":
                addElderlyCareMemberList();
                break;
            case "mentalHealthScreening":
                addMentalHealthScreeningMemberList();
                break;
            case "eligibleCouples":
                addEligibleCoupleList();
                break;
            case "pregnantWomen":
                addPregnantWomenList();
                break;
            case "pncMothers":
                addPncMothersList();
                break;
        }
        List<MemberDataBean> list = this.memberList;
        if (list == null || list.isEmpty()) {
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda22
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m292x4b77240e(view);
                }
            });
        } else {
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        }
        if (z) {
            return;
        }
        showProcessDialog();
    }

    /* renamed from: lambda$setMemberSelectionScreen$13$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m292x4b77240e(View view) {
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        String str = this.selectedService;
        str.hashCode();
        switch (str) {
            case "migratedInFamily":
            case "migratedOutFamily":
                loadMigratedFamily();
                break;
            case "filariasisCampaign":
                int i = this.selectedFilariasisType;
                if (i != 0) {
                    if (i == 1) {
                        loadMoreSideEffectsMethod();
                        break;
                    }
                } else {
                    loadMoreFamiliesFilaria();
                    break;
                }
                break;
            case "updateMember":
                loadMoreMembers();
                break;
            case "addNewMember":
                loadMoreFamilies();
                break;
            case "childrenAbove5":
                loadMoreDptBooster2ChildrenList();
                break;
            case "rchRegister":
                loadMoreRCH();
                break;
            case "newlyWedCouples":
                loadMoreNewlyWedCouples();
                break;
            case "elderlyCare":
                loadMoreElderlyCareMembers();
                break;
            case "leprosySurvey":
                loadMoreFamiliesLeprosy();
                break;
            case "mentalHealthScreening":
                loadMoreMentalHealthScreeningMembers();
                break;
            case "migratedInMembers":
            case "migratedOutMembers":
                loadMigratedMembers();
                break;
            case "children":
                loadMoreChildrenList();
                break;
            case "eligibleCouples":
                loadMoreEligibleCouples();
                break;
            case "pregnantWomen":
                loadMorePregnantWomenList();
                break;
            case "pncMothers":
                loadMorePNCMothersList();
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private List<ListItemDataBean> getMembersList(List<MemberDataBean> list) throws SQLException {
        ArrayList arrayList;
        arrayList = new ArrayList();
        this.rbText = "";
        String str = this.selectedService;
        str.hashCode();
        switch (str) {
            case "filariasisCampaign":
            case "updateMember":
            case "rchRegister":
            case "newlyWedCouples":
            case "elderlyCare":
            case "mentalHealthScreening":
            case "eligibleCouples":
            case "pregnantWomen":
            case "pncMothers":
                for (MemberDataBean memberDataBean : list) {
                    arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
                }
                return arrayList;
            case "childrenAbove5":
            case "children":
                this.removedChildren = new ArrayList();
                for (MemberDataBean memberDataBean2 : list) {
                    if (memberDataBean2.getUniqueHealthId() != null) {
                        MemberBean memberBeanQueryForFirst = null;
                        if (memberDataBean2.getMotherId() != null) {
                            try {
                                memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", memberDataBean2.getMotherId()).queryForFirst();
                            } catch (SQLException e) {
                                Log.e(getClass().getName(), null, e);
                            }
                        }
                        if (SharedStructureData.isOnlineSearch) {
                            this.rbText = memberDataBean2.getMotherName();
                        } else if (memberBeanQueryForFirst == null) {
                            this.rbText = UtilBean.getMyLabel("Not available");
                        } else {
                            this.rbText = UtilBean.getMemberFullName(memberBeanQueryForFirst);
                        }
                        arrayList.add(new ListItemDataBean(memberDataBean2.getFamilyId(), memberDataBean2.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean2), LabelConstants.MOTHER, this.rbText));
                    } else {
                        this.removedChildren.add(memberDataBean2);
                    }
                }
                return arrayList;
            default:
                return arrayList;
        }
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
        String myLabel;
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
                familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(" null", ""));
                myLabel = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, myLabel, false));
        }
        return arrayList2;
    }

    private List<ListItemDataBean> getMigratedMembersList(List<MigratedMembersBean> list) {
        ArrayList arrayList = new ArrayList();
        this.rbText = "";
        for (MigratedMembersBean migratedMembersBean : list) {
            if (migratedMembersBean.getLfu() != null && migratedMembersBean.getLfu().booleanValue()) {
                this.rbText = UtilBean.getMyLabel(LabelConstants.LOST_TO_FOLLOW_UP);
            } else if (migratedMembersBean.getOutOfState() != null && migratedMembersBean.getOutOfState().booleanValue()) {
                this.rbText = UtilBean.getMyLabel(LabelConstants.OUT_OF_STATE_TAG);
            } else if (migratedMembersBean.getConfirmed() != null && !migratedMembersBean.getConfirmed().booleanValue()) {
                this.rbText = UtilBean.getMyLabel(LabelConstants.CONFIRMATION_PENDING);
            } else {
                this.rbText = UtilBean.getMyLabel(LabelConstants.CONFIRMED);
            }
            arrayList.add(new ListItemDataBean((String) null, migratedMembersBean.getHealthId(), migratedMembersBean.getName(), this.rbText, (String) null));
        }
        return arrayList;
    }

    private List<ListItemDataBean> getMigratedFamilyList(List<MigratedFamilyBean> list) {
        ArrayList arrayList = new ArrayList();
        this.rbText = "";
        for (MigratedFamilyBean migratedFamilyBean : list) {
            if (migratedFamilyBean.getLfu() != null && migratedFamilyBean.getLfu().booleanValue()) {
                this.rbText = UtilBean.getMyLabel(LabelConstants.LOST_TO_FOLLOW_UP);
            } else if (migratedFamilyBean.getOutOfState() != null && migratedFamilyBean.getOutOfState().booleanValue()) {
                this.rbText = UtilBean.getMyLabel(LabelConstants.OUT_OF_STATE_TAG);
            } else if (migratedFamilyBean.getConfirmed() != null && !migratedFamilyBean.getConfirmed().booleanValue()) {
                this.rbText = UtilBean.getMyLabel(LabelConstants.CONFIRMATION_PENDING);
            } else {
                this.rbText = UtilBean.getMyLabel(LabelConstants.CONFIRMED);
            }
            arrayList.add(new ListItemDataBean((String) null, LabelConstants.FAMILY_ID, migratedFamilyBean.getFamilyIdString(), this.rbText, (String) null));
        }
        return arrayList;
    }

    public void loadMoreEligibleCouples() {
        List<MemberDataBean> listRetrieveEligibleCouplesByAshaArea = this.fhsService.retrieveEligibleCouplesByAshaArea(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveEligibleCouplesByAshaArea);
    }

    public void loadMoreNewlyWedCouples() {
        List<MemberDataBean> listRetrieveNewlyWedCouplesByAshaArea = this.fhsService.retrieveNewlyWedCouplesByAshaArea(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveNewlyWedCouplesByAshaArea);
    }

    public void loadMoreMentalHealthScreeningMembers() {
        List<MemberDataBean> listRetrieveMentalHealthScreeningMembersByAshaArea = this.fhsService.retrieveMentalHealthScreeningMembersByAshaArea(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveMentalHealthScreeningMembersByAshaArea);
    }

    public void loadMoreElderlyCareMembers() {
        List<MemberDataBean> listRetrieveElderlyCareMembersByAshaArea = this.fhsService.retrieveElderlyCareMembersByAshaArea(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveElderlyCareMembersByAshaArea);
    }

    public void loadMoreSideEffectsMethod() {
        List<MemberDataBean> listRetrieveMembersForSideEffectsOfFilaria = this.fhsService.retrieveMembersForSideEffectsOfFilaria(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveMembersForSideEffectsOfFilaria);
    }

    public void loadMorePregnantWomenList() {
        List<MemberDataBean> arrayList = new ArrayList<>();
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        if (Boolean.FALSE.equals(Boolean.valueOf(SharedStructureData.isOnlineSearch))) {
            arrayList = this.fhsService.retrievePregnantWomenByAshaArea(this.selectedAshaAreas, false, this.villageIds, this.searchString, this.limit.intValue(), this.offset.intValue());
        } else {
            CharSequence charSequence = this.searchString;
            if (charSequence != null) {
                arrayList = fetchMembersFromServer(charSequence, this.dateForOfflineSearch, this.searchBox.getSelectedSearchType(), null);
            }
        }
        onLoadMoreUiMember(arrayList);
    }

    public void loadMorePNCMothersList() {
        List<MemberDataBean> arrayList = new ArrayList<>();
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        if (Boolean.FALSE.equals(Boolean.valueOf(SharedStructureData.isOnlineSearch))) {
            arrayList = this.fhsService.retrievePncMothersByAshaArea(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        } else {
            CharSequence charSequence = this.searchString;
            if (charSequence != null) {
                arrayList = fetchMembersFromServer(charSequence, this.dateForOfflineSearch, this.searchBox.getSelectedSearchType(), null);
            }
        }
        onLoadMoreUiMember(arrayList);
    }

    public void loadMoreRCH() {
        List<MemberDataBean> listRetrieveMemberListForRchRegister = this.fhsService.retrieveMemberListForRchRegister(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveMemberListForRchRegister);
    }

    public void loadMoreMembers() {
        List<MemberDataBean> listRetrieveMembersByAshaArea = this.fhsService.retrieveMembersByAshaArea(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveMembersByAshaArea);
    }

    public void onLoadMoreUiMember(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> membersList = getMembersList(list);
            this.memberList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, membersList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }

    public void loadMoreChildrenList() {
        List<MemberDataBean> arrayList = new ArrayList<>();
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        if (Boolean.FALSE.equals(Boolean.valueOf(SharedStructureData.isOnlineSearch))) {
            arrayList = this.fhsService.retrieveChildsBelow5YearsByAshaArea(this.selectedAshaAreas, false, this.villageIds, this.searchString, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, this.limit.intValue(), this.offset.intValue());
        } else {
            CharSequence charSequence = this.searchString;
            if (charSequence != null) {
                arrayList = fetchMembersFromServer(charSequence, this.dateForOfflineSearch, this.searchBox.getSelectedSearchType(), null);
            }
        }
        onLoadMoreUiChildren(arrayList);
    }

    public void loadMoreDptBooster2ChildrenList() {
        List<MemberDataBean> arrayList = new ArrayList<>();
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        if (Boolean.FALSE.equals(Boolean.valueOf(SharedStructureData.isOnlineSearch))) {
            arrayList = this.fhsService.retrieveChildsBelow7YearsByAshaArea(this.selectedAshaAreas, false, this.villageIds, this.searchString, this.qrScanFilter, this.searchBox.getSelectedSearchType(), this.dateForOfflineSearch, this.limit.intValue(), this.offset.intValue());
        } else {
            CharSequence charSequence = this.searchString;
            if (charSequence != null) {
                arrayList = fetchMembersFromServer(charSequence, this.dateForOfflineSearch, this.searchBox.getSelectedSearchType(), null);
            }
        }
        onLoadMoreUiChildren(arrayList);
    }

    public void onLoadMoreUiChildren(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> membersList = getMembersList(list);
            this.memberList.addAll(list);
            this.memberList.removeAll(this.removedChildren);
            this.pagingListView.onFinishLoadingWithItem(true, membersList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }

    public void loadMoreFamilies() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansByAshaArea = this.fhsService.retrieveFamilyDataBeansByAshaArea(this.selectedAshaAreas, this.selectedVillage, this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiFamilies(listRetrieveFamilyDataBeansByAshaArea);
    }

    public void onLoadMoreUiFamilies(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }

    public void loadMoreFamiliesFilaria() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForFilariaByArea = this.fhsService.retrieveFamilyDataBeansForFilariaByArea(this.selectedAshaAreas, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiFamiliesForFilaria(listRetrieveFamilyDataBeansForFilariaByArea);
    }

    public void onLoadMoreUiFamiliesForFilaria(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }

    public void loadMigratedMembers() {
        List<MigratedMembersBean> listRetrieveMigrationDetailsForMigratedMembers = this.migrationService.retrieveMigrationDetailsForMigratedMembers(this.selectedVillage, this.selectedAshaAreas, this.isMigratedOut, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMigratedMembers(listRetrieveMigrationDetailsForMigratedMembers);
    }

    public void onLoadMoreUiMigratedMembers(List<MigratedMembersBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> migratedMembersList = getMigratedMembersList(list);
            this.migratedMembersBeans.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, migratedMembersList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }

    public void loadMigratedFamily() {
        List<MigratedFamilyBean> listRetrieveMigrationDetailsForMigratedFamily = this.migrationService.retrieveMigrationDetailsForMigratedFamily(this.selectedVillage, this.selectedAshaAreas, this.isMigratedOut, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMigratedFamily(listRetrieveMigrationDetailsForMigratedFamily);
    }

    public void onLoadMoreUiMigratedFamily(List<MigratedFamilyBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> migratedFamilyList = getMigratedFamilyList(list);
            this.migratedFamilyBeans.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, migratedFamilyList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }

    public void loadMoreFamiliesLeprosy() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForLCDCByArea = this.fhsService.retrieveFamilyDataBeansForLCDCByArea(this.selectedAshaAreas, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiFamiliesForLeprosy(listRetrieveFamilyDataBeansForLCDCByArea);
    }

    public void onLoadMoreUiFamiliesForLeprosy(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }

    public void addNewlyWedCoupleList() {
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select an Newly Wed Couple");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda26
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m275x1e62d43d(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_ELIGIBLE_COUPLE_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addNewlyWedCoupleList$14$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m275x1e62d43d(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void addEligibleCoupleList() {
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select an Eligible Couple");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda21
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m271x4b251110(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_ELIGIBLE_COUPLE_IN_AREA);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addEligibleCoupleList$15$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m271x4b251110(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void addPregnantWomenList() {
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select a Pregnant Women");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda4
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m277xbf9f2a6f(adapterView, view, i, j);
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

    /* renamed from: lambda$addPregnantWomenList$16$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m277xbf9f2a6f(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void addPncMothersList() {
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select a PNC Mother");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda19
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m276x26b7aade(adapterView, view, i, j);
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

    /* renamed from: lambda$addPncMothersList$17$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m276x26b7aade(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void addMentalHealthScreeningMemberList() {
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select a Mental Health Screening");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda32
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m274xf9b7dda7(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addMentalHealthScreeningMemberList$18$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m274xf9b7dda7(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void addElderlyCareMemberList() {
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select a member for Elderly Care");
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda31
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m270x1056b8f1(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addElderlyCareMemberList$19$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m270x1056b8f1(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void addChildsBelow5YearsList() {
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_CHILD);
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            List<ListItemDataBean> membersList = getMembersList(this.memberList);
            this.memberList.removeAll(this.removedChildren);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, membersList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda24
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m269xa689f4ae(adapterView, view, i, j);
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

    /* renamed from: lambda$addChildsBelow5YearsList$20$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m269xa689f4ae(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void retrieveMemberListForUpdateBySearch(CharSequence charSequence) {
        this.searchString = charSequence;
        this.selectedPeopleIndex = -1;
        this.selectedFamilyIndex = -1;
        if (this.selectedService.equals(SERVICE_UPDATE_MEMBER)) {
            this.offset = 0;
            this.memberList = this.fhsService.retrieveMembersByAshaArea(this.selectedAshaAreas, this.selectedVillage, charSequence, this.limit.intValue(), this.offset.intValue());
            this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
            addMemberListScreenForUpdateInfo();
        }
        if (this.selectedService.equals(SERVICE_ADD_NEW_MEMBER)) {
            this.offset = 0;
            this.familyList = this.fhsService.retrieveFamilyDataBeansByAshaArea(this.selectedAshaAreas, this.selectedVillage, charSequence, this.limit.intValue(), this.offset.intValue());
            this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
            addFamilyListScreenForNewMember();
        }
    }

    public void addMemberListScreenForUpdateInfo() {
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.selectedMemberToUpdateIndex = -1;
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
            this.pagingHeaderView = listTitleView;
            listTitleView.setPadding(0, 50, 0, 0);
            this.bodyLayoutContainer.addView(this.pagingHeaderView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda28
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m273xdaa89f8c(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
        this.noMemberAvailableView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
    }

    /* renamed from: lambda$addMemberListScreenForUpdateInfo$21$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m273xdaa89f8c(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberToUpdateIndex = i;
    }

    public void addFamilyListScreenForNewMember() {
        this.selectedFamilyIndex = -1;
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        if (!this.familyList.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_ADD_MEMBER);
            this.pagingHeaderView = listTitleView;
            listTitleView.setPadding(0, 50, 0, 0);
            this.bodyLayoutContainer.addView(this.pagingHeaderView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getFamilyList(this.familyList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda27
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m272x2ba303c2(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
        this.noMemberAvailableView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    /* renamed from: lambda$addFamilyListScreenForNewMember$22$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m272x2ba303c2(AdapterView adapterView, View view, int i, long j) {
        this.selectedFamilyIndex = i;
    }

    public void setVisitSelectionScreen(List<String> list) {
        this.screen = VISIT_SELECTION_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(it.next()))));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda20
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m296x5f7b2bb4(adapterView, view, i, j);
            }
        }, null));
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$setVisitSelectionScreen$23$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m296x5f7b2bb4(AdapterView adapterView, View view, int i, long j) {
        this.selectedVisitIndex = i;
        onClick(this.nextButton);
    }

    public void retrieveMigratedFamilyList(Boolean bool) {
        this.isMigratedOut = bool.booleanValue();
        this.offset = 0;
        this.selectedPeopleIndex = -1;
        this.migratedFamilyBeans = this.migrationService.retrieveMigrationDetailsForMigratedFamily(this.selectedVillage, this.selectedAshaAreas, bool.booleanValue(), this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        setMigratedFamilyScreen(bool.booleanValue());
    }

    public void setMigratedFamilyScreen(boolean z) {
        if (this.selectedService.equals(SERVICE_MIGRATED_IN_FAMILY)) {
            setTitle(LabelConstants.SERVICE_MIGRATED_IN_FAMILY);
        } else if (this.selectedService.equals(SERVICE_MIGRATED_OUT_FAMILY)) {
            setTitle(LabelConstants.SERVICE_MIGRATED_OUT_FAMILY);
        }
        this.bodyLayoutContainer.removeAllViews();
        this.screen = MIGRATED_FAMILY_SCREEN;
        this.nextButton.setText("Okay");
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
        this.pagingHeaderView = listTitleView;
        listTitleView.setPadding(0, 0, 0, 20);
        this.bodyLayoutContainer.addView(this.pagingHeaderView);
        List<MigratedFamilyBean> list = this.migratedFamilyBeans;
        if (list != null && !list.isEmpty()) {
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMigratedFamilyList(this.migratedFamilyBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda16
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m293x7d8f37d9(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MIGRATED_FAMILY_FOUND);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setMigratedFamilyScreen$24$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m293x7d8f37d9(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void retrieveMigratedMembersList(Boolean bool) {
        this.isMigratedOut = bool.booleanValue();
        this.offset = 0;
        this.selectedPeopleIndex = -1;
        this.migratedMembersBeans = this.migrationService.retrieveMigrationDetailsForMigratedMembers(this.selectedVillage, this.selectedAshaAreas, bool.booleanValue(), this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        setMigratedMembersScreen(bool.booleanValue());
    }

    public void setMigratedMembersScreen(boolean z) {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = MIGRATED_MEMBERS_SCREEN;
        this.nextButton.setText("Okay");
        if (z) {
            this.pagingHeaderView = MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_MIGRATED_OUT_MEMBERS);
        } else {
            this.pagingHeaderView = MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_MIGRATED_IN_MEMBERS);
        }
        this.pagingHeaderView.setPadding(0, 0, 0, 20);
        this.bodyLayoutContainer.addView(this.pagingHeaderView);
        List<MigratedMembersBean> list = this.migratedMembersBeans;
        if (list != null && !list.isEmpty()) {
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMigratedMembersList(this.migratedMembersBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda23
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m294xd96b0441(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MIGRATED_MEMBER_FOUND);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setMigratedMembersScreen$25$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m294xd96b0441(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void retrieveMemberListForRchRegister(CharSequence charSequence) {
        this.offset = 0;
        this.selectedPeopleIndex = -1;
        this.searchString = charSequence;
        this.memberList = this.fhsService.retrieveMemberListForRchRegister(this.selectedAshaAreas, this.selectedVillage, charSequence, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        setMemberScreenForRchRegister();
    }

    public void setMemberScreenForRchRegister() {
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.screen = RCH_REGISTER_MEMBER_SCREEN;
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
        this.pagingHeaderView = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda29
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m291xacdc1bad(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_ELIGIBLE_MEMBER_FOUND_FOR_RCH);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setMemberScreenForRchRegister$26$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m291xacdc1bad(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    public void showNotOnlineMessage() {
        if (this.sewaService.isOnline()) {
            return;
        }
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m298x4e51ac0f(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.m299x73e5b510(dialogInterface);
            }
        });
    }

    /* renamed from: lambda$showNotOnlineMessage$27$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m298x4e51ac0f(View view) {
        this.myAlertDialog.dismiss();
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        this.memberList.clear();
        this.familyList.clear();
        setServiceSelectionScreen();
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
    }

    /* renamed from: lambda$showNotOnlineMessage$28$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m299x73e5b510(DialogInterface dialogInterface) {
        this.myAlertDialog.dismiss();
        showProcessDialog();
        this.bodyLayoutContainer.removeAllViews();
        this.memberList.clear();
        this.familyList.clear();
        setServiceSelectionScreen();
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
    }

    public void retrieveRCHServicesProvidedToMember() {
        Boolean bool;
        Boolean bool2;
        List<LinkedHashMap<String, Object>> result;
        this.screen = RCH_REGISTER_TABLE_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -7);
            Date time = calendar.getTime();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, -15);
            Date time2 = calendar2.getTime();
            Calendar calendar3 = Calendar.getInstance();
            calendar3.add(1, -49);
            Date time3 = calendar3.getTime();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put("memberId", this.memberSelected.getId());
            if (new Date(this.memberSelected.getDob().longValue()).after(time)) {
                linkedHashMap2.put("Child Service", new QueryMobDataBean("mob_child_services_provided", null, linkedHashMap3, 0));
                bool2 = true;
            } else {
                bool2 = null;
            }
            try {
                if (new Date(this.memberSelected.getDob().longValue()).before(time2) && new Date(this.memberSelected.getDob().longValue()).after(time3) && this.memberSelected.getGender().equalsIgnoreCase("F") && this.memberSelected.getMaritalStatus().equalsIgnoreCase("629")) {
                    linkedHashMap2.put("LMP Follow Up Service", new QueryMobDataBean("mob_lmp_services_provided", null, linkedHashMap3, 0));
                    linkedHashMap2.put("ANC Service", new QueryMobDataBean("mob_anc_services_provided", null, linkedHashMap3, 0));
                    linkedHashMap2.put("WPD Service", new QueryMobDataBean("mob_wpd_services_provided", null, linkedHashMap3, 0));
                    linkedHashMap2.put("PNC Service", new QueryMobDataBean("mob_pnc_services_provided", null, linkedHashMap3, 0));
                    bool2 = false;
                }
                for (Map.Entry entry : linkedHashMap2.entrySet()) {
                    QueryMobDataBean queryMobDataBeanExecuteQuery = this.restClient.executeQuery((QueryMobDataBean) entry.getValue());
                    if (queryMobDataBeanExecuteQuery != null && (result = queryMobDataBeanExecuteQuery.getResult()) != null && !result.isEmpty()) {
                        linkedHashMap.put((String) entry.getKey(), result);
                    }
                }
            } catch (RestHttpException e) {
                bool = bool2;
                e = e;
                Log.e(getClass().getName(), null, e);
                bool2 = bool;
                setServicesProvidedScreenForRchRegister(linkedHashMap, bool2);
            }
        } catch (RestHttpException e2) {
            e = e2;
            bool = null;
        }
        setServicesProvidedScreenForRchRegister(linkedHashMap, bool2);
    }

    public void setServicesProvidedScreenForRchRegister(Map<String, List<LinkedHashMap<String, Object>>> map, Boolean bool) {
        if (bool != null) {
            if (Boolean.TRUE.equals(bool)) {
                setMemberDetailsForChildRchRegister();
            } else {
                setMemberDetailsForEligibleCouplesRchRegister();
                if (this.memberSelected.getIsPregnantFlag() != null && this.memberSelected.getIsPregnantFlag().booleanValue()) {
                    setMemberDetailsForPregnantWomenRchRegister();
                }
                addPreviousPregnancyDetailsRchRegister();
            }
        }
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, List<LinkedHashMap<String, Object>>> entry : map.entrySet()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, entry.getKey()));
                Set<String> setKeySet = entry.getValue().get(0).keySet();
                ArrayList arrayList = new ArrayList();
                for (String str : setKeySet) {
                    if (!str.startsWith("hidden")) {
                        arrayList.add(str);
                    }
                }
                createTableLayout(arrayList, entry.getValue());
            }
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_SERVICE_PROVIDED_TO_MEMBER)));
            this.nextButton.setText(GlobalTypes.MAIN_MENU);
        }
        hideProcessDialog();
    }

    private void setMemberDetailsForEligibleCouplesRchRegister() {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(this.memberSelected.getFamilyId());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this, UtilBean.getMyLabel(LabelConstants.GENERAL_INFORMATION)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.TECHO_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getUniqueHealthId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FAMILY_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getFamilyId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MEMBER_NAME));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.memberSelected)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.ABHA_NUMBER));
        if (this.memberSelected.getHealthIdNumber() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getHealthIdNumber()));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.HUSBAND_NAME));
        if (this.memberSelected.getHusbandId() != null && (memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(this.memberSelected.getHusbandId())) != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId)));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MARRIAGE_YEAR));
        if (this.memberSelected.getYearOfWedding() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getYearOfWedding().toString()));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.AGE_WITH_DOB));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getAgeDisplayOnGivenDate(new Date(this.memberSelected.getDob().longValue()), new Date()) + " (" + this.sdf.format(this.memberSelected.getDob()) + ")"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MOBILE_NUMBER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(UtilBean.getNotAvailableIfNull(this.memberSelected.getMobileNumber()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.BLOOD_GROUP));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(UtilBean.getNotAvailableIfNull(this.memberSelected.getBloodGroup()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.ADDRESS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.RELIGION_WITH_CASTE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())) + " / " + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.BPL_OR_APL));
        if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag() != null) {
            if (Boolean.TRUE.equals(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag())) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(LabelConstants.BPL)));
                return;
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(LabelConstants.APL)));
                return;
            }
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
    }

    private void setMemberDetailsForPregnantWomenRchRegister() {
        Integer numValueOf;
        if (this.memberSelected.getCurPregRegDate() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.DATE_OF_REGISTRATION));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.sdf.format(this.memberSelected.getCurPregRegDate())));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "LMP"));
        if (this.memberSelected.getLmpDate() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.sdf.format(this.memberSelected.getLmpDate())));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.PREGNANCY_WEEK_NUMBER_AT_TIME_OF_REGISTRATION));
        if (this.memberSelected.getLmpDate() != null && this.memberSelected.getCurPregRegDate() != null) {
            numValueOf = Integer.valueOf(UtilBean.getNumberOfWeeks(new Date(this.memberSelected.getLmpDate().longValue()), new Date(this.memberSelected.getCurPregRegDate().longValue())));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, numValueOf.toString()));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
            numValueOf = null;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.REGISTERED_WITHIN_12_WEEKS_OF_PREGNANCY));
        if (numValueOf != null) {
            if (numValueOf.intValue() < 12) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Yes")));
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("No")));
            }
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.EXPECTED_DELIVERY_DATE));
        if (this.memberSelected.getEdd() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.sdf.format(this.memberSelected.getEdd())));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.PREVIOUS_PREGNANCY_COMPLICATION));
        if (this.memberSelected.getPreviousPregnancyComplication() != null) {
            for (String str : this.memberSelected.getPreviousPregnancyComplication().split(GlobalTypes.COMMA)) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(str)));
            }
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.JSY_BENEFICIARY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(UtilBean.returnYesNoNotAvailableFromBoolean(this.memberSelected.getJsyBeneficiary()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.KPSY_BENEFICIARY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(UtilBean.returnYesNoNotAvailableFromBoolean(this.memberSelected.getKpsyBeneficiary()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.IAY_BENEFICIARY));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(UtilBean.returnYesNoNotAvailableFromBoolean(this.memberSelected.getIayBeneficiary()))));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0233  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addPreviousPregnancyDetailsRchRegister() {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleActivity.addPreviousPregnancyDetailsRchRegister():void");
    }

    private void setMemberDetailsForChildRchRegister() {
        MemberAdditionalInfoDataBean memberAdditionalInfoDataBean;
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(this.memberSelected.getFamilyId());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this, UtilBean.getMyLabel(LabelConstants.GENERAL_INFORMATION)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.TECHO_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getUniqueHealthId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FAMILY_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getFamilyId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.CHILD_NAME));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.memberSelected)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.ABHA_NUMBER));
        if (this.memberSelected.getHealthIdNumber() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getHealthIdNumber()));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MOTHER_NAME));
        MemberBean memberBeanRetrieveMemberBeanByActualId = this.memberSelected.getMotherId() != null ? this.fhsService.retrieveMemberBeanByActualId(this.memberSelected.getMotherId()) : null;
        if (memberBeanRetrieveMemberBeanByActualId != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId) + " (" + memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId() + ")"));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.GENDER));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, FullFormConstants.getFullFormOfGender(this.memberSelected.getGender())));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.AGE_WITH_DOB));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getAgeDisplayOnGivenDate(new Date(this.memberSelected.getDob().longValue()), new Date()) + " (" + this.sdf.format(this.memberSelected.getDob()) + ")"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.BIRTH_WEIGHT));
        if (this.memberSelected.getBirthWeight() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.memberSelected.getBirthWeight() + " Kgs"));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.BIRTH_PLACE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getNotAvailableIfNull(FullFormConstants.getFullFormsOfPlace(this.memberSelected.getPlaceOfBirth()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.ADDRESS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.RELIGION_WITH_CASTE));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())) + " / " + UtilBean.getMyLabel(this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste()))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.LAST_CHILD_SERVICE_DATE));
        if (this.memberSelected.getAdditionalInfo() != null && (memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(this.memberSelected.getAdditionalInfo(), MemberAdditionalInfoDataBean.class)) != null && memberAdditionalInfoDataBean.getLastServiceLongDate() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.sdf.format(memberAdditionalInfoDataBean.getLastServiceLongDate())));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FULLY_IMMUNISED_IN_1_YEAR));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.formMetaDataUtil.isChildImmunisedInOneYear(new MemberBean(this.memberSelected))));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FULLY_IMMUNISED_IN_2_YEAR));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.formMetaDataUtil.isChildImmunisedInTwoYear(new MemberBean(this.memberSelected))));
        SharedStructureData.relatedPropertyHashTable.put("memberId", this.memberSelected.getId());
        SharedStructureData.immunisationService = this.immunisationService;
        SharedStructureData.sewaFhsService = this.fhsService;
        QueFormBean queFormBean = new QueFormBean();
        queFormBean.setRelatedpropertyname("memberId");
        this.bodyLayoutContainer.addView(MyDynamicComponents.getImmunisationGivenComponent(this, queFormBean));
    }

    private void createTableLayout(List<String> list, List<LinkedHashMap<String, Object>> list2) {
        TableLayout tableLayout = new TableLayout(this);
        tableLayout.setPadding(10, 10, 10, 10);
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(0, -1, 1.0f);
        TableRow tableRow = new TableRow(this);
        tableRow.setPadding(10, 15, 10, 15);
        tableRow.setLayoutParams(new TableRow.LayoutParams(-1));
        for (String str : list) {
            MaterialTextView materialTextView = new MaterialTextView(this);
            materialTextView.setGravity(16);
            materialTextView.setPadding(10, 10, 10, 10);
            materialTextView.setText(UtilBean.getMyLabel(str));
            materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
            materialTextView.setTextColor(ContextCompat.getColor(this.context, R.color.textColor));
            tableRow.addView(materialTextView, layoutParams);
        }
        MaterialTextView materialTextView2 = new MaterialTextView(this);
        materialTextView2.setPadding(10, 10, 10, 10);
        tableRow.addView(materialTextView2, new TableRow.LayoutParams(0, -1, 0.5f));
        tableLayout.addView(tableRow, 0);
        this.bodyLayoutContainer.addView(tableLayout);
        Iterator<LinkedHashMap<String, Object>> it = list2.iterator();
        int i = 1;
        while (it.hasNext()) {
            addTableRow(tableLayout, i, it.next(), list);
            i++;
        }
        this.nextButton.setText("Okay");
    }

    private void addTableRow(TableLayout tableLayout, int i, final LinkedHashMap<String, Object> linkedHashMap, List<String> list) {
        ViewGroup.LayoutParams layoutParams = new TableRow.LayoutParams(-1);
        ViewGroup.LayoutParams layoutParams2 = new TableRow.LayoutParams(0, -1, 1.0f);
        TableRow tableRow = new TableRow(this);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setLayoutParams(layoutParams);
        tableRow.setPadding(10, 15, 10, 15);
        for (String str : list) {
            MaterialTextView materialTextView = new MaterialTextView(this);
            materialTextView.setGravity(16);
            materialTextView.setPadding(10, 10, 10, 10);
            materialTextView.setTextColor(ContextCompat.getColorStateList(this.context, R.color.listview_text_color_selector));
            Object obj = linkedHashMap.get(str);
            if (obj != null) {
                materialTextView.setText(obj.toString());
            } else {
                materialTextView.setText(LabelConstants.N_A);
            }
            tableRow.addView(materialTextView, layoutParams2);
        }
        tableRow.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m280x7a00af5c(linkedHashMap, view);
            }
        });
        ViewGroup.LayoutParams layoutParams3 = new TableRow.LayoutParams(0, -1, 0.5f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 17;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, layoutParams4);
        ImageView imageView = MyStaticComponents.getImageView(this.context, -1, R.drawable.ic_arrow_right, layoutParams4);
        imageView.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.black));
        imageView.setMaxWidth(30);
        imageView.setMaxHeight(30);
        imageView.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.listview_text_color_selector));
        linearLayout.addView(imageView);
        tableRow.addView(linearLayout, layoutParams3);
        tableLayout.addView(tableRow, i);
    }

    /* renamed from: lambda$addTableRow$29$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m280x7a00af5c(LinkedHashMap linkedHashMap, View view) {
        Object obj = linkedHashMap.get("hiddenVisitId");
        Object obj2 = linkedHashMap.get("hiddenServiceType");
        if (obj == null || obj2 == null) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) WorkRegisterLineListActivity_.class);
        intent.putExtra("visitId", obj.toString());
        intent.putExtra("serviceType", obj2.toString());
        startActivity(intent);
    }

    public void setRadioButtonColorFromSyncStatus(RadioButton radioButton, MemberDataBean memberDataBean) {
        if (memberDataBean.getSyncStatus() != null) {
            String syncStatus = memberDataBean.getSyncStatus();
            syncStatus.hashCode();
            if (syncStatus.equals(LocationConstants.LocationType.TALUKA)) {
                radioButton.setTextColor(-16776961);
                return;
            } else if (syncStatus.equals(MorbiditiesConstant.RED_COLOR)) {
                radioButton.setTextColor(SupportMenu.CATEGORY_MASK);
                return;
            } else {
                radioButton.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                return;
            }
        }
        if (memberDataBean.getAdditionalInfo() != null) {
            MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberDataBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
            if (memberAdditionalInfoDataBean.getCpNegativeQues() != null && memberAdditionalInfoDataBean.getCpState() != null && memberAdditionalInfoDataBean.getCpState().equals(RchConstants.CP_DELAYED_DEVELOPMENT)) {
                radioButton.setTextColor(InputDeviceCompat.SOURCE_ANY);
            } else if (memberAdditionalInfoDataBean.getCpNegativeQues() != null && memberAdditionalInfoDataBean.getCpState() != null && memberAdditionalInfoDataBean.getCpState().equals(RchConstants.CP_TREATMENT_COMMENCED)) {
                radioButton.setTextColor(Color.parseColor("#20aa0b"));
            } else {
                radioButton.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_MY_PEOPLE_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m284xa8d59e3(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$30$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m284xa8d59e3(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    private void startDynamicFormActivity(String str, MemberDataBean memberDataBean, FamilyDataBean familyDataBean) {
        if (str.equals(FormConstants.TECHO_FHW_VAE) && this.memberSelected.getImmunisationGiven() == null) {
            this.footerLayout.setVisibility(8);
            this.alertDialog = new MyAlertDialog(this, LabelConstants.NO_IMMUNISATIONS_GIVEN_TO_MEMBER_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m300xce79bd96(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
            return;
        }
        showProcessDialog();
        this.sharedPref = PreferenceManager.getDefaultSharedPreferences(this);
        if (!str.equals(FormConstants.FHS_MEMBER_UPDATE)) {
            try {
                this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), null, this.sharedPref);
            } catch (DataException unused) {
                showProcessDialog();
                this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m301xf40dc697(view);
                    }
                }, DynamicUtils.BUTTON_OK);
                this.alertDialog.show();
                return;
            }
        } else {
            this.formMetaDataUtil.setMetaDataForMemberUpdateForm(memberDataBean, memberDataBean != null ? this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId()) : familyDataBean, this.sharedPref);
        }
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        this.myIntent = intent;
        intent.putExtra("entity", str);
        this.myIntent.putExtra("isOnlineSearchPropagated", SharedStructureData.isOnlineSearch);
        startActivityForResult(this.myIntent, REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY.intValue());
        hideProcessDialog();
    }

    /* renamed from: lambda$startDynamicFormActivity$31$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m300xce79bd96(View view) {
        this.alertDialog.dismiss();
    }

    /* renamed from: lambda$startDynamicFormActivity$32$com-argusoft-sewa-android-app-activity-MyPeopleActivity, reason: not valid java name */
    /* synthetic */ void m301xf40dc697(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    private void startDynamicFormActivityForFilaria() {
        try {
            int i = this.selectedFilariasisType;
            if (i == 0) {
                this.formMetaDataUtil.setMetaDataForFilariaCampaign(this.familySelected, this, i, null);
            } else if (i == 1) {
                this.formMetaDataUtil.setMetaDataForFilariaCampaign(null, this, i, this.memberSelected);
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", FormConstants.FILARIA_CAMPAIGN);
            startActivityForResult(intent, REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyPeopleActivity.this.alertDialog.dismiss();
                    MyPeopleActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    private void startDynamicFormActivityForLCDC() {
        try {
            this.formMetaDataUtil.setMetaDataForLcdcCampaign(this.familySelected, this, FormConstants.LCDC_CAMPAIGN);
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", FormConstants.LCDC_CAMPAIGN);
            startActivityForResult(intent, REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyPeopleActivity.this.alertDialog.dismiss();
                    MyPeopleActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x003a  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onActivityResult(int r11, int r12, android.content.Intent r13) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    private void onlineQRScanFromSearchBox(LinkedHashMap<String, String> linkedHashMap) {
        String str;
        if (!Objects.equals(linkedHashMap.get("isQrCodeScan"), "true") || (str = linkedHashMap.get("healthIdNumber")) == null) {
            return;
        }
        if (SharedStructureData.sewaService.isOnline()) {
            retrieveOnlineMember(str, null, "ABHA_NUMBER", null);
        } else {
            SewaUtil.generateToast(this.context, "You need internet to search members online");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0025  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r9) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SharedStructureData.isOnlineSearch = false;
    }
}
