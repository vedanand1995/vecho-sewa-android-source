package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
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
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FamilyMigrationDetailsDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MigrationDetailsDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NotificationActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String AMRUTPAN_MISSED_NOTIFICATION_SELECTION_SCREEN = "amrutpanMissedNotificationSelectionScreen";
    private static final String CHILD_SELECTION_SCREEN = "childSelectionScreen";
    private static final long DELAY = 500;
    private static final long LIMIT = 30;
    private static final String MIGRATION_REVERT_NOTIFICATION_SCREEN = "migrationRevertNotificationScreen";
    private static final String NOTIFICATION_SELECTION_SCREEN = "notificationSelectionScreen";
    private static final String NOTIFICATION_TYPE_SELECTION_SCREEN = "notificationTypeSelectionScreen";
    private static final String READ_ONLY_NOTIFICATION_SCREEN = "readOnlyNotificationScreen";
    private static final String TAG = "NotificationActivity";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    private Long currentDueDate;
    private String currentNotificationCode;
    private Long currentNotificationId;
    private String currentNotificationOtherDetails;
    private Long currentScheduledDate;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    public ImmunisationServiceImpl immunisationService;
    private boolean isFromLogin;
    LocationMasterServiceImpl locationMasterService;
    private Button nextButton;
    private PagingListView notificationListView;
    NotificationServiceImpl notificationService;
    private Map<String, Integer> notificationsCountMap;
    private String screenName;
    private CharSequence search;
    private TextInputLayout searchBox;
    private MaterialTextView selectAshaAreaTextView;
    private MemberDataBean selectedAmrutpanMissedMember;
    private MemberDataBean selectedChild;
    private NotificationMobDataBean selectedNotification;
    private Integer selectedVillageId;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private MaterialTextView titleView;
    Dao<VersionBean, Integer> versionDao;
    private Spinner villageSpinner;
    private static final Integer REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY = 200;
    private static final Integer REQUEST_CODE_FOR_MR_VACCINE_ACTIVITY = 200;
    private static final Integer REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY = 201;
    private long offset = 0;
    private View.OnClickListener onClickListener = this;
    private List<NotificationMobDataBean> notificationBeanList = new LinkedList();
    private List<MemberDataBean> memberDataBeanList = new LinkedList();
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private Map<Integer, String> notificationCodeWithRadioButtonIdMap = new HashMap();
    private String selectedNotificationCode = null;
    private Timer timer = new Timer();
    private List<Integer> selectedVillageIds = new ArrayList();
    private List<Integer> selectedAreaIds = new ArrayList();

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    public class AmrutpanNotificationData {
        private long dueOn;
        private MemberDataBean member;
        private String notificationCode;
        private long notificationId;
        private String otherDetails;
        private long scheduledDate;

        public AmrutpanNotificationData(MemberDataBean memberDataBean, long j, String str, long j2, long j3, String str2) {
            this.member = memberDataBean;
            this.notificationId = j;
            this.notificationCode = str;
            this.scheduledDate = j2;
            this.dueOn = j3;
            this.otherDetails = str2;
        }

        public MemberDataBean getMember() {
            return this.member;
        }

        public long getNotificationId() {
            return this.notificationId;
        }

        public String getNotificationCode() {
            return this.notificationCode;
        }

        public long getScheduledDate() {
            return this.scheduledDate;
        }

        public long getDueOn() {
            return this.dueOn;
        }

        public String getOtherDetails() {
            return this.otherDetails;
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.isFromLogin = getIntent().getBooleanExtra("isFromLogin", false);
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
        setTitle(UtilBean.getTitleText(LabelConstants.NOTIFICATION_ACTIVITY_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        this.bodyLayoutContainer = (LinearLayout) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        setBodyDetail();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001b  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r10) {
        /*
            Method dump skipped, instructions count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NotificationActivity.onClick(android.view.View):void");
    }

    /* renamed from: lambda$onClick$0$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m447x9a0fe129(View view) {
        if (view.getId() == -1) {
            this.alertDialog.dismiss();
            startDynamicFormActivity();
        } else {
            this.alertDialog.dismiss();
        }
    }

    private void startMRVaccinationForm() {
        showProcessDialog();
        SharedStructureData.currentMemberDataBean = this.selectedChild;
        this.formMetaDataUtil.setMetaDataForRchFormByFormType("MR_VACCINATION", this.selectedChild.getId(), this.selectedChild.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", "MR_VACCINATION");
        startActivityForResult(intent, REQUEST_CODE_FOR_MR_VACCINE_ACTIVITY.intValue());
        hideProcessDialog();
    }

    private void openSelfHelpGroupMemberForm() {
        showProcessDialog();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        try {
            MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(this.selectedNotification.getMemberId());
            String str = null;
            if (memberBeanRetrieveMemberBeanByActualId != null) {
                if (this.selectedNotification.getOtherDetails() != null && this.selectedNotification.getOtherDetails().equalsIgnoreCase(SewaConstants.PREGNANT_WOMEN) && memberBeanRetrieveMemberBeanByActualId.getIsPregnantFlag() != null && memberBeanRetrieveMemberBeanByActualId.getIsPregnantFlag().booleanValue()) {
                    str = "FHW_ANC";
                } else if (this.selectedNotification.getOtherDetails() != null && this.selectedNotification.getOtherDetails().equalsIgnoreCase("AG")) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.add(1, -10);
                    Calendar calendar2 = Calendar.getInstance();
                    calendar2.add(1, -19);
                    if (memberBeanRetrieveMemberBeanByActualId.getDob().before(calendar.getTime()) && memberBeanRetrieveMemberBeanByActualId.getDob().after(calendar2.getTime())) {
                        str = "ADOLESCENT_HEALTH_SCREENING";
                    }
                } else if (memberBeanRetrieveMemberBeanByActualId.getDob() != null) {
                    Calendar calendar3 = Calendar.getInstance();
                    calendar3.add(1, -5);
                    if (memberBeanRetrieveMemberBeanByActualId.getDob().after(calendar3.getTime())) {
                        str = "FHW_CS";
                    }
                }
                String str2 = str;
                this.formMetaDataUtil.setMetaDataForRchFormByFormType(str2, memberBeanRetrieveMemberBeanByActualId.getActualId(), memberBeanRetrieveMemberBeanByActualId.getFamilyId(), this.selectedNotification, defaultSharedPreferences);
                str = str2;
            }
            if (str != null) {
                Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
                intent.putExtra("entity", str);
                startActivityForResult(intent, REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue());
            }
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m448x30b8eac7(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    /* renamed from: lambda$openSelfHelpGroupMemberForm$1$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m448x30b8eac7(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    public void setBodyDetail() {
        this.villageList = this.fhsService.getDistinctLocationsAssignedToUser();
        setSubTitle(null);
        if (this.villageList.isEmpty()) {
            this.screenName = NOTIFICATION_SELECTION_SCREEN;
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.DATA_NOT_SYNCED_ALERT)));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m449x6e9dae97(view);
                }
            };
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(onClickListener);
            hideProcessDialog();
            return;
        }
        if (this.isFromLogin) {
            for (LocationBean locationBean : this.villageList) {
                if (!this.selectedVillageIds.contains(locationBean.getActualID())) {
                    this.selectedVillageIds.add(locationBean.getActualID());
                }
            }
            retrieveCountsForEachNotificationType();
            return;
        }
        if (this.villageList.size() == 1) {
            this.selectedVillageId = this.villageList.get(0).getActualID();
            this.selectedVillageIds.add(this.villageList.get(0).getActualID());
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.selectedVillageId);
            this.screenName = VILLAGE_SELECTION_SCREEN;
            addAshaAreaSelectionSpinner();
        } else {
            this.screenName = VILLAGE_SELECTION_SCREEN;
            addVillageSelectionSpinner();
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setBodyDetail$2$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m449x6e9dae97(View view) {
        navigateToHomeScreen(false);
    }

    public void addVillageSelectionSpinner() {
        this.screenName = VILLAGE_SELECTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        int i = 1;
        String[] strArr = new String[this.villageList.size() + 1];
        strArr[0] = LabelConstants.ALL;
        Iterator<LocationBean> it = this.villageList.iterator();
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 == 0) {
                    NotificationActivity.this.ashaAreaList = null;
                } else {
                    NotificationActivity notificationActivity = NotificationActivity.this;
                    notificationActivity.selectedVillageId = ((LocationBean) notificationActivity.villageList.get(i2 - 1)).getActualID();
                    NotificationActivity notificationActivity2 = NotificationActivity.this;
                    notificationActivity2.ashaAreaList = notificationActivity2.fhsService.retrieveAshaAreaAssignedToUser(NotificationActivity.this.selectedVillageId);
                }
                NotificationActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        this.bodyLayoutContainer.addView(this.villageSpinner);
        hideProcessDialog();
    }

    public void addAshaAreaSelectionSpinner() {
        this.screenName = VILLAGE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.selectAshaAreaTextView);
        this.bodyLayoutContainer.removeView(this.ashaAreaSpinner);
        this.selectAshaAreaTextView = MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_ASHA_AREA));
        List<LocationBean> list = this.ashaAreaList;
        if (list != null && !list.isEmpty()) {
            String[] strArr = new String[this.ashaAreaList.size() + 1];
            strArr[0] = LabelConstants.ALL;
            Iterator<LocationBean> it = this.ashaAreaList.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            this.ashaAreaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
            this.bodyLayoutContainer.addView(this.selectAshaAreaTextView);
            this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        } else {
            this.ashaAreaSpinner = null;
        }
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    public void retrieveCountsForEachNotificationType() {
        this.selectedNotificationCode = null;
        this.notificationsCountMap = this.notificationService.retrieveCountForNotificationType(this.selectedVillageIds, this.selectedAreaIds);
        addNotificationTypeScreen();
    }

    private String setNotificationCountFromMap(Integer num) {
        if (num != null) {
            return num.toString();
        }
        return null;
    }

    private boolean isAmrutpanEnabled() {
        if (SewaTransformer.loginBean == null) {
            return false;
        }
        try {
            List<VersionBean> listQueryForEq = this.versionDao.queryForEq(FieldNameConstants.KEY, "amrutpanEnabled_" + SewaTransformer.loginBean.getUserID());
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                return false;
            }
            return MorbiditiesConstant.ONE_PLUS.equals(listQueryForEq.get(0).getValue());
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return false;
        }
    }

    public void addNotificationTypeScreen() {
        this.screenName = NOTIFICATION_TYPE_SELECTION_SCREEN;
        this.footerView.setVisibility(8);
        this.bodyLayoutContainer.removeAllViews();
        this.notificationCodeWithRadioButtonIdMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        this.notificationCodeWithRadioButtonIdMap.put(0, "LMPFU");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("LMPFU")), setNotificationCountFromMap(this.notificationsCountMap.get("LMPFU"))));
        this.notificationCodeWithRadioButtonIdMap.put(1, "NWC");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("NWC")), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.FHW_NOTIFICATION_NEWLY_WED_COUPLES))));
        this.notificationCodeWithRadioButtonIdMap.put(2, "FHW_ANC");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("FHW_ANC")), setNotificationCountFromMap(this.notificationsCountMap.get("FHW_ANC"))));
        this.notificationCodeWithRadioButtonIdMap.put(3, "FHW_WPD");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("FHW_WPD")), setNotificationCountFromMap(this.notificationsCountMap.get("FHW_WPD"))));
        this.notificationCodeWithRadioButtonIdMap.put(4, "FHW_PNC");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("FHW_PNC")), setNotificationCountFromMap(this.notificationsCountMap.get("FHW_PNC"))));
        this.notificationCodeWithRadioButtonIdMap.put(5, "FHW_CS");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("FHW_CS")), setNotificationCountFromMap(this.notificationsCountMap.get("FHW_CS"))));
        this.notificationCodeWithRadioButtonIdMap.put(6, "MR_VACCINATION");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("MR_VACCINATION")), setNotificationCountFromMap(this.notificationsCountMap.get("MR_VACCINATION"))));
        this.notificationCodeWithRadioButtonIdMap.put(7, NotificationConstants.FHW_NOTIFICATION_MIGRATION_IN);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_NOTIFICATION_MIGRATION_IN)), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.FHW_NOTIFICATION_MIGRATION_IN))));
        this.notificationCodeWithRadioButtonIdMap.put(8, NotificationConstants.FHW_NOTIFICATION_MIGRATION_OUT);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_NOTIFICATION_MIGRATION_OUT)), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.FHW_NOTIFICATION_MIGRATION_OUT))));
        this.notificationCodeWithRadioButtonIdMap.put(9, NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN)), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN))));
        this.notificationCodeWithRadioButtonIdMap.put(10, "DISCHARGE");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("DISCHARGE")), setNotificationCountFromMap(this.notificationsCountMap.get("DISCHARGE"))));
        this.notificationCodeWithRadioButtonIdMap.put(11, "SAM_SCREENING");
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("SAM_SCREENING")), setNotificationCountFromMap(this.notificationsCountMap.get("SAM_SCREENING"))));
        int i = 12;
        if (isAmrutpanEnabled()) {
            this.notificationCodeWithRadioButtonIdMap.put(12, "AMRUTPAN");
            arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get("AMRUTPAN")), setNotificationCountFromMap(this.notificationsCountMap.get("AMRUTPAN"))));
            this.notificationCodeWithRadioButtonIdMap.put(13, NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_MISSED);
            arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_MISSED)), (String) null));
            this.notificationCodeWithRadioButtonIdMap.put(14, NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD);
            arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD)), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD))));
            i = 15;
        }
        this.notificationCodeWithRadioButtonIdMap.put(Integer.valueOf(i), FormConstants.CMAM_FOLLOWUP);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.CMAM_FOLLOWUP)), setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.CMAM_FOLLOWUP))));
        this.notificationCodeWithRadioButtonIdMap.put(Integer.valueOf(i + 1), NotificationConstants.FHW_NOTIFICATION_READ_ONLY);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_NOTIFICATION_READ_ONLY)), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.FHW_NOTIFICATION_READ_ONLY))));
        this.notificationCodeWithRadioButtonIdMap.put(Integer.valueOf(i + 2), NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY)), (String) null));
        this.notificationCodeWithRadioButtonIdMap.put(Integer.valueOf(i + 3), NotificationConstants.FHW_WORK_PLAN_OTHER_SERVICES);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_WORK_PLAN_OTHER_SERVICES)), (String) null));
        this.notificationCodeWithRadioButtonIdMap.put(Integer.valueOf(i + 4), NotificationConstants.FHW_WORK_PLAN_ASHA_REPORTED_EVENT);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_WORK_PLAN_ASHA_REPORTED_EVENT)), (String) null));
        int i2 = i + 5;
        this.notificationCodeWithRadioButtonIdMap.put(Integer.valueOf(i2), "ADOLESCENT_HEALTH_SCREENING");
        this.notificationCodeWithRadioButtonIdMap.put(Integer.valueOf(i2), NotificationConstants.SELF_HELP_GROUP);
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.SELF_HELP_GROUP)), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.SELF_HELP_GROUP))));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_notification, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i3, long j) {
                this.f$0.m445xe74b0cd5(adapterView, view, i3, j);
            }
        }, null));
        hideProcessDialog();
    }

    /* renamed from: lambda$addNotificationTypeScreen$3$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m445xe74b0cd5(AdapterView adapterView, View view, int i, long j) {
        String str = this.notificationCodeWithRadioButtonIdMap.get(Integer.valueOf(i));
        this.selectedNotificationCode = str;
        this.offset = 0L;
        if (str == null) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.SELECT_NOTIFICATION_TYPE));
        }
        str.hashCode();
        switch (str) {
            case "ADOLESCENT_HEALTH_SCREENING":
                Intent intent = new Intent(this.context, (Class<?>) AdolescentEventNotificationActivity_.class);
                intent.putExtra(GlobalTypes.SELECTED_ASHA_AREAS, new Gson().toJson(this.selectedAreaIds));
                intent.putExtra(GlobalTypes.SELECTED_VILLAGE_IDS, new Gson().toJson(this.selectedVillageIds));
                startActivityForResult(intent, REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY.intValue());
                break;
            case "MR_VACCINATION":
                this.bodyLayoutContainer.removeAllViews();
                showProcessDialog();
                addLastUpdateLabel();
                addSearchTextBox();
                retrieveChildListFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
                this.footerView.setVisibility(0);
                break;
            case "OTHER_SERVICES":
                Intent intent2 = new Intent(this.context, (Class<?>) NotificationOtherServicesActivity_.class);
                intent2.putExtra(GlobalTypes.SELECTED_ASHA_AREAS, new Gson().toJson(this.selectedAreaIds));
                intent2.putExtra(GlobalTypes.SELECTED_VILLAGE_IDS, new Gson().toJson(this.selectedVillageIds));
                startActivityForResult(intent2, REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY.intValue());
                break;
            case "REPORTED_EVENT_BY_ASHA":
                Intent intent3 = new Intent(this.context, (Class<?>) ReportedEventConfirmationNotificationActivity_.class);
                intent3.putExtra(GlobalTypes.SELECTED_ASHA_AREAS, new Gson().toJson(this.selectedAreaIds));
                intent3.putExtra(GlobalTypes.SELECTED_VILLAGE_IDS, new Gson().toJson(this.selectedVillageIds));
                startActivityForResult(intent3, REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY.intValue());
                break;
            case "AMRUTPAN_MISSED":
                this.bodyLayoutContainer.removeAllViews();
                showProcessDialog();
                addLastUpdateLabel();
                getAmrutpanMissedNotificationMembersFromServer(this.selectedVillageIds, this.selectedAreaIds);
                this.footerView.setVisibility(0);
                break;
            case "MAMTA_DAY":
                Intent intent4 = new Intent(this.context, (Class<?>) MamtaDayActivity_.class);
                intent4.putExtra(GlobalTypes.SELECTED_ASHA_AREAS, new Gson().toJson(this.selectedAreaIds));
                intent4.putExtra(GlobalTypes.SELECTED_VILLAGE_IDS, new Gson().toJson(this.selectedVillageIds));
                startActivityForResult(intent4, REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY.intValue());
                break;
            default:
                this.bodyLayoutContainer.removeAllViews();
                showProcessDialog();
                addLastUpdateLabel();
                addSearchTextBox();
                retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
                this.footerView.setVisibility(0);
                break;
        }
    }

    public void addLastUpdateLabel() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
    }

    public void addSearchTextBox() {
        if (this.selectedNotificationCode.equals(NotificationConstants.FHW_NOTIFICATION_MIGRATION_IN) || this.selectedNotificationCode.equals(NotificationConstants.FHW_NOTIFICATION_MIGRATION_OUT) || this.selectedNotificationCode.equals(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN) || this.selectedNotificationCode.equals(NotificationConstants.FHW_NOTIFICATION_READ_ONLY)) {
            return;
        }
        this.search = null;
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.searchBox = editText;
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (this.searchBox.getEditText() != null) {
            this.searchBox.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity.2
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    NotificationActivity.this.timer.cancel();
                    NotificationActivity.this.timer = new Timer();
                    NotificationActivity.this.timer.schedule(new AnonymousClass1(charSequence), NotificationActivity.DELAY);
                }

                /* renamed from: com.argusoft.sewa.android.app.activity.NotificationActivity$2$1, reason: invalid class name */
                class AnonymousClass1 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    AnonymousClass1(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CharSequence charSequence = this.val$s;
                        if (charSequence != null && charSequence.length() > 2) {
                            if (NotificationActivity.this.selectedNotificationCode.equals("MR_VACCINATION")) {
                                NotificationActivity.this.retrieveChildListFromDB(NotificationActivity.this.selectedNotificationCode, this.val$s, NotificationActivity.LIMIT, NotificationActivity.this.offset);
                                return;
                            }
                            NotificationActivity notificationActivity = NotificationActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            notificationActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$2$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m455x290e1ae6(charSequence2);
                                }
                            });
                            return;
                        }
                        CharSequence charSequence3 = this.val$s;
                        if (charSequence3 == null || charSequence3.length() == 0) {
                            NotificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$2$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m456x76cd92e7();
                                }
                            });
                        }
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-NotificationActivity$2$1, reason: not valid java name */
                    /* synthetic */ void m455x290e1ae6(CharSequence charSequence) {
                        NotificationActivity.this.retrieveInitialNotificationsFromDB(NotificationActivity.this.selectedNotificationCode, charSequence, NotificationActivity.LIMIT, NotificationActivity.this.offset);
                    }

                    /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-NotificationActivity$2$1, reason: not valid java name */
                    /* synthetic */ void m456x76cd92e7() {
                        NotificationActivity.this.showProcessDialog();
                        if (NotificationActivity.this.selectedNotificationCode.equals("MR_VACCINATION")) {
                            NotificationActivity.this.retrieveChildListFromDB(NotificationActivity.this.selectedNotificationCode, null, NotificationActivity.LIMIT, NotificationActivity.this.offset);
                        } else {
                            NotificationActivity.this.retrieveInitialNotificationsFromDB(NotificationActivity.this.selectedNotificationCode, null, NotificationActivity.LIMIT, NotificationActivity.this.offset);
                        }
                        NotificationActivity.this.searchBox.clearFocus();
                    }
                }
            });
        }
    }

    public void retrieveInitialNotificationsFromDB(String str, CharSequence charSequence, long j, long j2) {
        this.selectedNotification = null;
        this.search = charSequence;
        try {
            this.notificationBeanList = this.notificationService.retrieveNotificationsForUser(this.selectedVillageIds, this.selectedAreaIds, str, charSequence, j, 0L);
            this.offset += LIMIT;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        addNotificationSelectionScreen(charSequence != null);
    }

    public void retrieveChildListFromDB(String str, CharSequence charSequence, long j, long j2) {
        this.selectedChild = null;
        this.search = charSequence;
        try {
            this.memberDataBeanList = this.fhsService.retrieveMemberDataBeanForMRVaccinationDrive(this.selectedVillageIds, this.selectedAreaIds, str, charSequence, j, 0L);
            this.offset += LIMIT;
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
        }
        addChildSelectionScreen(charSequence != null);
    }

    public void addNotificationSelectionScreen(boolean z) {
        this.screenName = NOTIFICATION_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        List<NotificationMobDataBean> list = this.notificationBeanList;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_NOTIFICATION_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m442xbc084f2a(view);
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
            String str2 = this.selectedNotificationCode;
            if (str2 != null && str2.equals(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD)) {
                this.titleView = MyStaticComponents.getListTitleView(this, LabelConstants.INFORMATION);
            } else {
                this.titleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_BENEFICIARY);
            }
        }
        this.bodyLayoutContainer.addView(this.titleView);
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda9
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m443x767defab(adapterView, view, i, j);
            }
        };
        List<ListItemDataBean> listViewItemsForNotificationList = getListViewItemsForNotificationList(this.notificationBeanList);
        String str3 = this.selectedNotificationCode;
        if (str3 != null && (str3.equals(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN) || this.selectedNotificationCode.equals(NotificationConstants.FHW_NOTIFICATION_MIGRATION_IN) || this.selectedNotificationCode.equals(NotificationConstants.FHW_NOTIFICATION_MIGRATION_OUT))) {
            this.notificationListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, listViewItemsForNotificationList, R.layout.listview_row_with_info, onItemClickListener, this);
        } else {
            String str4 = this.selectedNotificationCode;
            if (str4 != null && str4.equals(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD)) {
                this.notificationListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, listViewItemsForNotificationList, R.layout.listview_row_with_info, null, this);
            } else {
                this.notificationListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, listViewItemsForNotificationList, R.layout.listview_row_with_date, onItemClickListener, this);
            }
        }
        this.bodyLayoutContainer.addView(this.notificationListView);
        String str5 = this.selectedNotificationCode;
        if (str5 != null && str5.equals(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD)) {
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m444x30f3902c(view);
                }
            });
        } else {
            this.nextButton.setText("Next");
            this.nextButton.setOnClickListener(this);
        }
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addNotificationSelectionScreen$4$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m442xbc084f2a(View view) {
        addNotificationTypeScreen();
    }

    /* renamed from: lambda$addNotificationSelectionScreen$5$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m443x767defab(AdapterView adapterView, View view, int i, long j) {
        if (this.notificationBeanList.size() > i) {
            this.selectedNotification = this.notificationBeanList.get(i);
        }
    }

    /* renamed from: lambda$addNotificationSelectionScreen$6$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m444x30f3902c(View view) {
        addNotificationTypeScreen();
    }

    public void addChildSelectionScreen(boolean z) {
        this.screenName = CHILD_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        List<MemberDataBean> list = this.memberDataBeanList;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m440xb1937f64(view);
                }
            });
            hideProcessDialog();
            return;
        }
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_BENEFICIARY);
        this.titleView = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda6
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m441x6c091fe5(adapterView, view, i, j);
            }
        };
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : this.memberDataBeanList) {
            arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null));
        }
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_info, onItemClickListener, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    /* renamed from: lambda$addChildSelectionScreen$7$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m440xb1937f64(View view) {
        addNotificationTypeScreen();
    }

    /* renamed from: lambda$addChildSelectionScreen$8$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m441x6c091fe5(AdapterView adapterView, View view, int i, long j) {
        if (this.memberDataBeanList.size() > i) {
            this.selectedChild = this.memberDataBeanList.get(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateAmrutpanNotificationScreen(final List<AmrutpanNotificationData> list) {
        this.screenName = AMRUTPAN_MISSED_NOTIFICATION_SELECTION_SCREEN;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            hideProcessDialog();
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m454xa97b3cbb(view);
                }
            });
            return;
        }
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_BENEFICIARY);
        this.titleView = listTitleView;
        this.bodyLayoutContainer.addView(listTitleView);
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda13
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m453x71629cdf(list, adapterView, view, i, j);
            }
        };
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsForAmrutpanNotifications(list), R.layout.listview_row_with_date, onItemClickListener, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        hideProcessDialog();
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
    }

    /* renamed from: lambda$updateAmrutpanNotificationScreen$9$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m454xa97b3cbb(View view) {
        addNotificationTypeScreen();
    }

    /* renamed from: lambda$updateAmrutpanNotificationScreen$10$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m453x71629cdf(List list, AdapterView adapterView, View view, int i, long j) {
        if (i < 0 || i >= list.size()) {
            return;
        }
        this.selectedAmrutpanMissedMember = ((AmrutpanNotificationData) list.get(i)).getMember();
        this.currentScheduledDate = Long.valueOf(((AmrutpanNotificationData) list.get(i)).getScheduledDate());
        this.currentDueDate = Long.valueOf(((AmrutpanNotificationData) list.get(i)).getDueOn());
        this.currentNotificationCode = ((AmrutpanNotificationData) list.get(i)).getNotificationCode();
        this.currentNotificationId = Long.valueOf(((AmrutpanNotificationData) list.get(i)).getNotificationId());
        this.currentNotificationOtherDetails = ((AmrutpanNotificationData) list.get(i)).getOtherDetails();
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        if (this.selectedNotificationCode.equals("MR_VACCINATION")) {
            onLoadMoreBackgroundForMR();
        } else {
            onLoadMoreBackground();
        }
    }

    public void onLoadMoreBackground() {
        try {
            List<NotificationMobDataBean> listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(this.selectedVillageIds, this.selectedAreaIds, this.selectedNotificationCode, this.search, LIMIT, this.offset);
            this.offset += LIMIT;
            onLoadMoreUi(listRetrieveNotificationsForUser);
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

    public void onLoadMoreBackgroundForMR() {
        List<MemberDataBean> listRetrieveMemberDataBeanForMRVaccinationDrive = this.fhsService.retrieveMemberDataBeanForMRVaccinationDrive(this.selectedVillageIds, this.selectedAreaIds, this.selectedNotificationCode, this.search, LIMIT, this.offset);
        this.offset += LIMIT;
        onLoadMoreUiMR(listRetrieveMemberDataBeanForMRVaccinationDrive);
    }

    public void onLoadMoreUiMR(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.memberDataBeanList.addAll(list);
            ArrayList arrayList = new ArrayList();
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null));
            }
            this.notificationListView.onFinishLoadingWithItem(true, arrayList);
            return;
        }
        this.notificationListView.onFinishLoadingWithItem(false, null);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private List<ListItemDataBean> getListViewItemsForNotificationList(List<NotificationMobDataBean> list) {
        String visitDurationForAmrutpan;
        StringBuilder sb;
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : list) {
            notificationMobDataBean.setOverdueFlag(Boolean.valueOf(notificationMobDataBean.getExpectedDueDate() != null && new Date(notificationMobDataBean.getExpectedDueDate().longValue()).before(new Date())));
            Gson gson = new Gson();
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            String task = notificationMobDataBean.getTask();
            task.hashCode();
            char c = 65535;
            switch (task.hashCode()) {
                case 2460:
                    if (task.equals(NotificationConstants.FHW_NOTIFICATION_MIGRATION_IN)) {
                        c = 0;
                        break;
                    }
                    break;
                case 2466:
                    if (task.equals(NotificationConstants.FHW_NOTIFICATION_MIGRATION_OUT)) {
                        c = 1;
                        break;
                    }
                    break;
                case 69730:
                    if (task.equals(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN)) {
                        c = 2;
                        break;
                    }
                    break;
                case 1702562997:
                    if (task.equals(NotificationConstants.FHW_NOTIFICATION_READ_ONLY)) {
                        c = 3;
                        break;
                    }
                    break;
                case 2073219354:
                    if (task.equals("FHW_CS")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            String str = null;
            switch (c) {
                case 0:
                case 1:
                    MigrationDetailsDataBean migrationDetailsDataBean = (MigrationDetailsDataBean) gson.fromJson(notificationMobDataBean.getOtherDetails(), MigrationDetailsDataBean.class);
                    StringBuilder sb4 = new StringBuilder();
                    if (migrationDetailsDataBean.getFirstName() != null) {
                        sb4.append(migrationDetailsDataBean.getFirstName());
                    }
                    if (migrationDetailsDataBean.getMiddleName() != null) {
                        sb4.append(" ");
                        sb4.append(migrationDetailsDataBean.getMiddleName());
                    }
                    if (migrationDetailsDataBean.getLastName() != null) {
                        sb4.append(" ");
                        sb4.append(migrationDetailsDataBean.getLastName());
                    }
                    arrayList.add(new ListItemDataBean(migrationDetailsDataBean.getHealthId(), sb4.toString(), (String) null));
                    break;
                case 2:
                    FamilyMigrationDetailsDataBean familyMigrationDetailsDataBean = (FamilyMigrationDetailsDataBean) gson.fromJson(notificationMobDataBean.getOtherDetails(), FamilyMigrationDetailsDataBean.class);
                    Iterator<String> it = familyMigrationDetailsDataBean.getMemberDetails().iterator();
                    while (it.hasNext()) {
                        sb3.append(it.next());
                        sb3.append(LabelConstants.NEW_LINE);
                    }
                    arrayList.add(new ListItemDataBean(LabelConstants.FAMILY_ID, familyMigrationDetailsDataBean.getFamilyIdString(), sb3.toString().replace(LabelConstants.NULL, "")));
                    break;
                case 3:
                    if (notificationMobDataBean.getHeader() != null) {
                        sb = new StringBuilder(UtilBean.getMyLabel(notificationMobDataBean.getHeader()));
                    } else {
                        sb = new StringBuilder(UtilBean.getMyLabel(LabelConstants.INFORMATION));
                    }
                    arrayList.add(new ListItemDataBean((String) null, sb.toString(), (String) null, (String) null, false));
                    break;
                case 4:
                    MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId());
                    String strConvertDateToString = notificationMobDataBean.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean.getExpectedDueDate().longValue(), false, false, true) : null;
                    String str2 = (notificationMobDataBean.getCustomField() == null || notificationMobDataBean.getCustomField().equals("0")) ? null : UtilBean.getMyLabel(LabelConstants.VISIT) + " " + notificationMobDataBean.getCustomField();
                    Set<String> dueImmunisationsForChild = this.immunisationService.getDueImmunisationsForChild(memberBeanRetrieveMemberBeanByActualId.getDob(), memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven(), new Date(), null);
                    if (dueImmunisationsForChild != null && !dueImmunisationsForChild.isEmpty()) {
                        Iterator<String> it2 = dueImmunisationsForChild.iterator();
                        while (it2.hasNext()) {
                            sb2.append(UtilBean.getMyLabel(it2.next().trim()));
                            sb2.append(", ");
                        }
                    } else {
                        sb2 = new StringBuilder(UtilBean.getMyLabel(LabelConstants.NO_DUE_VACCINES));
                    }
                    arrayList.add(new ListItemDataBean(strConvertDateToString, memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId(), UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId), str2, LabelConstants.DUE_VACCINES, sb2.substring(0, sb2.length() - 2), notificationMobDataBean.getOverdueFlag().booleanValue()));
                    break;
                default:
                    MemberBean memberBeanRetrieveMemberBeanByActualId2 = this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId());
                    String strConvertDateToString2 = notificationMobDataBean.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean.getExpectedDueDate().longValue(), false, false, true) : null;
                    if (notificationMobDataBean.getCustomField() != null && !notificationMobDataBean.getCustomField().equals("0")) {
                        str = UtilBean.getMyLabel(LabelConstants.VISIT) + " " + notificationMobDataBean.getCustomField();
                        if ("AMRUTPAN".equalsIgnoreCase(notificationMobDataBean.getTask()) && (visitDurationForAmrutpan = UtilBean.getVisitDurationForAmrutpan(notificationMobDataBean.getCustomField())) != null && !visitDurationForAmrutpan.equals(LabelConstants.N_A)) {
                            str = str + " (" + visitDurationForAmrutpan + ")";
                        }
                    } else if (notificationMobDataBean.getCustomField() != null && notificationMobDataBean.getTask().equalsIgnoreCase("FHW_PNC")) {
                        str = UtilBean.getMyLabel(LabelConstants.VISIT) + " " + (Integer.parseInt(notificationMobDataBean.getCustomField()) + 1);
                    }
                    arrayList.add(new ListItemDataBean(strConvertDateToString2, memberBeanRetrieveMemberBeanByActualId2.getUniqueHealthId(), UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId2), str, notificationMobDataBean.getOverdueFlag().booleanValue()));
                    break;
            }
        }
        return arrayList;
    }

    private List<ListItemDataBean> getListViewItemsForAmrutpanNotifications(List<AmrutpanNotificationData> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (AmrutpanNotificationData amrutpanNotificationData : list) {
                MemberDataBean member = amrutpanNotificationData.getMember();
                if (member != null) {
                    String uniqueHealthId = member.getUniqueHealthId();
                    String memberFullName = UtilBean.getMemberFullName(member);
                    String str = UtilBean.getMyLabel(LabelConstants.VISIT) + " " + amrutpanNotificationData.getNotificationCode();
                    String visitDurationForAmrutpan = UtilBean.getVisitDurationForAmrutpan(amrutpanNotificationData.getNotificationCode());
                    if (visitDurationForAmrutpan != null && !visitDurationForAmrutpan.equals(LabelConstants.N_A)) {
                        str = str + " (" + visitDurationForAmrutpan + ")";
                    }
                    UtilBean.convertDateToString(amrutpanNotificationData.getScheduledDate(), false, false, true);
                    arrayList.add(new ListItemDataBean(UtilBean.convertDateToString(amrutpanNotificationData.getDueOn(), false, false, true), uniqueHealthId, memberFullName, str, true));
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_NOTIFICATION_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m446x9ed60436(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$11$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m446x9ed60436(View view) {
        if (view.getId() == -1) {
            this.alertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.alertDialog.dismiss();
    }

    private void startDynamicFormActivity() {
        String task;
        showProcessDialog();
        if (this.selectedNotificationCode.equalsIgnoreCase(FormConstants.FHW_MONTHLY_SAM_SCREENING)) {
            task = "SAM_SCREENING";
        } else if (this.selectedNotificationCode.equalsIgnoreCase("ADOLESCENT_HEALTH_SCREENING")) {
            task = "ADOLESCENT_HEALTH_SCREENING";
        } else if (this.selectedNotificationCode.equalsIgnoreCase(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_MISSED)) {
            task = "AMRUTPAN";
        } else {
            task = this.selectedNotification.getTask();
        }
        if (task != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
            try {
                if (this.selectedNotificationCode.equalsIgnoreCase(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_MISSED)) {
                    MemberDataBean memberDataBean = this.selectedAmrutpanMissedMember;
                    if (memberDataBean != null) {
                        setMetaDataForAmrutpanMissingMembers(memberDataBean, defaultSharedPreferences);
                    }
                } else {
                    MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(this.selectedNotification.getMemberId());
                    if (memberBeanRetrieveMemberBeanByActualId != null) {
                        this.formMetaDataUtil.setMetaDataForRchFormByFormType(task, memberBeanRetrieveMemberBeanByActualId.getActualId(), memberBeanRetrieveMemberBeanByActualId.getFamilyId(), this.selectedNotification, defaultSharedPreferences);
                    }
                }
                Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
                intent.putExtra("entity", task);
                startActivityForResult(intent, REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue());
            } catch (DataException unused) {
                this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m452x9b35669(view);
                    }
                }, DynamicUtils.BUTTON_OK);
                this.alertDialog.show();
                return;
            }
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$startDynamicFormActivity$12$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m452x9b35669(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue()) {
            showProcessDialog();
            this.offset = 0L;
            onActivityResultBackgroundTask();
        } else {
            if (i == REQUEST_CODE_FOR_MR_VACCINE_ACTIVITY.intValue()) {
                showProcessDialog();
                this.offset = 0L;
                this.bodyLayoutContainer.removeAllViews();
                addSearchTextBox();
                retrieveChildListFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
                return;
            }
            if (i == REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY.intValue()) {
                addNotificationTypeScreen();
            } else {
                navigateToHomeScreen(false);
            }
        }
    }

    private void onActivityResultBackgroundTask() {
        try {
            this.selectedNotification = null;
            this.offset = 0L;
            List<NotificationMobDataBean> listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(this.selectedVillageIds, this.selectedAreaIds, this.selectedNotificationCode, null, LIMIT, 0L);
            this.notificationBeanList = listRetrieveNotificationsForUser;
            this.offset += LIMIT;
            if (listRetrieveNotificationsForUser != null && !listRetrieveNotificationsForUser.isEmpty()) {
                this.bodyLayoutContainer.removeAllViews();
                addLastUpdateLabel();
                addSearchTextBox();
                addNotificationSelectionScreen(false);
            } else if (this.selectedNotificationCode.equals(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_MISSED)) {
                this.bodyLayoutContainer.removeAllViews();
                showProcessDialog();
                addLastUpdateLabel();
                getAmrutpanMissedNotificationMembersFromServer(this.selectedVillageIds, this.selectedAreaIds);
                this.footerView.setVisibility(0);
            } else {
                this.notificationsCountMap = this.notificationService.retrieveCountForNotificationType(this.selectedVillageIds, this.selectedAreaIds);
                addNotificationTypeScreen();
            }
        } catch (SQLException e) {
            navigateToHomeScreen(false);
            Log.e(getClass().getName(), null, e);
        }
    }

    public void showReadOnlyNotification() {
        this.screenName = READ_ONLY_NOTIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, this.selectedNotification.getOtherDetails()));
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.MARK_AS_READ));
        this.offset = 0L;
        final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m450x844c6b0(view);
            }
        };
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m451xc2ba6731(onClickListener, view);
            }
        });
    }

    /* renamed from: lambda$showReadOnlyNotification$13$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m450x844c6b0(View view) {
        if (view.getId() == -1) {
            this.alertDialog.dismiss();
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            addLastUpdateLabel();
            addSearchTextBox();
            this.nextButton.setText("Next");
            this.nextButton.setOnClickListener(this.onClickListener);
            markNotificationAsReadAndRetrieveData();
            return;
        }
        this.alertDialog.dismiss();
    }

    /* renamed from: lambda$showReadOnlyNotification$14$com-argusoft-sewa-android-app-activity-NotificationActivity, reason: not valid java name */
    /* synthetic */ void m451xc2ba6731(View.OnClickListener onClickListener, View view) {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.CONFORMATION_TO_MARK_NOTIFICATION_AS_READ, onClickListener, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    public void markNotificationAsReadAndRetrieveData() {
        this.fhsService.markNotificationAsRead(this.selectedNotification);
        this.notificationsCountMap = this.notificationService.retrieveCountForNotificationType(this.selectedVillageIds, this.selectedAreaIds);
        retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screenName;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        String str2 = this.screenName;
        str2.hashCode();
        switch (str2) {
            case "notificationTypeSelectionScreen":
                if (this.isFromLogin) {
                    navigateToHomeScreen(false);
                    return true;
                }
                if (this.villageList.size() == 1) {
                    this.bodyLayoutContainer.removeAllViews();
                    this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
                    this.screenName = VILLAGE_SELECTION_SCREEN;
                    addAshaAreaSelectionSpinner();
                } else if (this.villageList.isEmpty()) {
                    finish();
                } else {
                    this.bodyLayoutContainer.removeAllViews();
                    addVillageSelectionSpinner();
                    this.screenName = VILLAGE_SELECTION_SCREEN;
                }
                this.selectedVillageIds.clear();
                this.selectedAreaIds.clear();
                this.selectedVillageId = null;
                break;
            case "villageSelectionScreen":
                finish();
                break;
            case "amrutpanMissedNotificationSelectionScreen":
            case "notificationSelectionScreen":
            case "childSelectionScreen":
                this.offset = 0L;
                showProcessDialog();
                retrieveCountsForEachNotificationType();
                this.nextButton.setText("Next");
                break;
            case "readOnlyNotificationScreen":
            case "migrationRevertNotificationScreen":
                this.bodyLayoutContainer.removeAllViews();
                showProcessDialog();
                addLastUpdateLabel();
                addSearchTextBox();
                retrieveInitialNotificationsFromDB(this.selectedNotificationCode, null, LIMIT, this.offset);
                this.nextButton.setText("Next");
                this.nextButton.setOnClickListener(this);
                break;
        }
        this.footerView.setVisibility(0);
        return true;
    }

    public void getAmrutpanMissedNotificationMembersFromServer(List<Integer> list, List<Integer> list2) {
        if (list2 == null) {
            try {
                list2 = new ArrayList<>();
            } catch (Exception e) {
                Log.e("AmrutpanFetch", "Error fetching notification members: " + e.getMessage(), e);
                updateAmrutpanNotificationScreen(Collections.emptyList());
                return;
            }
        }
        if (list2.isEmpty() && list != null && !list.isEmpty()) {
            list2 = new ArrayList<>();
            Iterator<LocationMasterBean> it = this.locationMasterService.retrieveLocationMasterBeansByParentIdList(list).iterator();
            while (it.hasNext()) {
                list2.add(Integer.valueOf(it.next().getActualID().intValue()));
            }
        }
        updateAmrutpanNotificationScreen(fetchAmrutpanMissedMembersFromServer(list2));
    }

    private List<AmrutpanNotificationData> fetchAmrutpanMissedMembersFromServer(List<Integer> list) {
        String str;
        String str2;
        String str3;
        String str4;
        long j;
        String string;
        NotificationActivity notificationActivity = this;
        ArrayList arrayList = new ArrayList();
        String str5 = "AmrutpanMissedMembers";
        String str6 = "fetchInfo";
        try {
            try {
            } catch (RestHttpException e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
        }
        if (list != null) {
            try {
                try {
                } catch (Exception e3) {
                    e = e3;
                    String str7 = str5;
                    Log.e(str7, "Unexpected error in fetching members: " + e.getMessage(), e);
                    return arrayList;
                }
            } catch (RestHttpException e4) {
                e = e4;
                String str8 = str5;
                str = str8;
                Log.e(str, "Network/Server error: " + e.getMessage(), e);
                return arrayList;
            }
            if (!list.isEmpty()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("locationId", TextUtils.join(GlobalTypes.COMMA, list));
                List<LinkedHashMap<String, Object>> result = null;
                QueryMobDataBean queryMobDataBeanExecuteQuery = notificationActivity.sewaServiceRestClient.executeQuery(new QueryMobDataBean("AMRUTPAN_MISSED_NOTIFICATION", null, linkedHashMap, 0));
                if (queryMobDataBeanExecuteQuery != null) {
                    try {
                        result = queryMobDataBeanExecuteQuery.getResult();
                    } catch (RestHttpException e5) {
                        e = e5;
                        str = str5;
                        Log.e(str, "Network/Server error: " + e.getMessage(), e);
                        return arrayList;
                    }
                }
                if (result != null && !result.isEmpty()) {
                    for (LinkedHashMap<String, Object> linkedHashMap2 : result) {
                        Object obj = linkedHashMap2.get("id");
                        Object obj2 = linkedHashMap2.get("notification_id");
                        Object obj3 = linkedHashMap2.get("notification_code");
                        Object obj4 = linkedHashMap2.get("schedule_date");
                        Object obj5 = linkedHashMap2.get("due_on");
                        Object obj6 = linkedHashMap2.get("other_details");
                        if (obj == null) {
                            notificationActivity = this;
                        } else if (obj2 == null) {
                            continue;
                        } else {
                            try {
                                long jLongValue = obj instanceof Number ? ((Number) obj).longValue() : Long.parseLong(obj.toString());
                                long jLongValue2 = obj instanceof Number ? ((Number) obj2).longValue() : Long.parseLong(obj2.toString());
                                try {
                                    MemberBean memberBeanRetrieveMemberBeanByActualId = notificationActivity.fhsService.retrieveMemberBeanByActualId(Long.valueOf(jLongValue));
                                    if (memberBeanRetrieveMemberBeanByActualId != null) {
                                        long j2 = notificationActivity.parseLong(obj4);
                                        long j3 = notificationActivity.parseLong(obj5);
                                        MemberDataBean memberDataBean = new MemberDataBean(memberBeanRetrieveMemberBeanByActualId);
                                        String string2 = obj3 != null ? obj3.toString() : "";
                                        if (obj6 == null) {
                                            string = "";
                                        } else {
                                            string = obj6.toString();
                                        }
                                        str2 = str5;
                                        str4 = str6;
                                        j = jLongValue;
                                        try {
                                            arrayList.add(new AmrutpanNotificationData(memberDataBean, jLongValue2, string2, j2, j3, string));
                                        } catch (Exception e6) {
                                            e = e6;
                                            str3 = str4;
                                            Log.e(str3, "Error retrieving member for ID " + j + ": " + e.getMessage(), e);
                                            notificationActivity = this;
                                            str6 = str3;
                                            str5 = str2;
                                        }
                                    } else {
                                        str2 = str5;
                                        str4 = str6;
                                    }
                                    str3 = str4;
                                } catch (Exception e7) {
                                    e = e7;
                                    str2 = str5;
                                    str4 = str6;
                                    j = jLongValue;
                                }
                            } catch (NumberFormatException unused) {
                                str2 = str5;
                                str3 = str6;
                                Log.e(str3, "Invalid member ID: " + obj);
                            }
                            notificationActivity = this;
                            str6 = str3;
                            str5 = str2;
                        }
                    }
                    Log.i(str6, "✅ Total members fetched: " + arrayList.size());
                } else {
                    Log.i("fetchInfo", "Query executed successfully but returned 0 rows (empty result).");
                }
                return arrayList;
            }
        }
        Log.w("fetchInfo", "No location IDs provided.");
        return arrayList;
    }

    private long parseLong(Object obj) {
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            return Long.parseLong(obj.toString());
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public void setMetaDataForAmrutpanMissingMembers(MemberDataBean memberDataBean, SharedPreferences sharedPreferences) {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        String valueOfListValuesById;
        String valueOfListValuesById2;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.clear().apply();
        editorEdit.putString(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getId());
        SharedStructureData.relatedPropertyHashTable.put("familyId", memberDataBean.getFamilyId());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, UtilBean.getMemberFullName(memberDataBean));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, UtilBean.getMemberFullName(memberDataBean));
        SharedStructureData.relatedPropertyHashTable.put("scheduledDate", String.valueOf(this.currentScheduledDate));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DUE_DATE, String.valueOf(this.currentDueDate));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.VISIT_NUMBER, this.currentNotificationCode);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MISSED_NOTIFICATION, "yes");
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, memberDataBean.getMemberId());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE, String.valueOf(UtilBean.calculateMonthsBetweenDates(new Date(memberDataBean.getDob().longValue()), new Date())));
        SharedStructureData.relatedPropertyHashTable.put("dob", String.valueOf(memberDataBean.getDob()));
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId());
        if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion() != null && (valueOfListValuesById2 = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())) != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.RELIGION, valueOfListValuesById2);
        }
        if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste() != null && (valueOfListValuesById = this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste())) != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CASTE, valueOfListValuesById);
        }
        if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getId() != null) {
            editorEdit.putString("familyId", familyDataBeanRetrieveFamilyDataBeanByFamilyId.getId());
        }
        if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId() != null) {
            editorEdit.putString("locationId", familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId());
            SharedStructureData.relatedPropertyHashTable.put("locationId", familyDataBeanRetrieveFamilyDataBeanByFamilyId.getAreaId());
        } else {
            editorEdit.putString("locationId", familyDataBeanRetrieveFamilyDataBeanByFamilyId.getLocationId());
            SharedStructureData.relatedPropertyHashTable.put("locationId", familyDataBeanRetrieveFamilyDataBeanByFamilyId.getLocationId());
        }
        if (this.currentNotificationId != null) {
            SharedStructureData.relatedPropertyHashTable.put("notificationId", String.valueOf(this.currentNotificationId));
        }
        String str = this.currentNotificationOtherDetails;
        if (str != null) {
            SharedStructureData.currentNotificationOtherDetails = UtilBean.formatAmrutpanNotificationOtherDetails(str);
            if (SharedStructureData.currentNotificationOtherDetails != null && !SharedStructureData.currentNotificationOtherDetails.trim().isEmpty()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.IS_AMRUTPAN_OTHER_DETAIL_AVAILABLE, "Yes");
            }
        }
        LocationMasterBean locationByActualId = SharedStructureData.sewaFhsService.getLocationByActualId(Integer.valueOf(Integer.parseInt(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getLocationId())));
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.VILLAGE, locationByActualId.getName());
        LocationMasterBean parentLocation = SharedStructureData.sewaFhsService.getParentLocation(locationByActualId.getParent());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SUB_CENTRE, parentLocation.getName());
        LocationMasterBean parentLocation2 = SharedStructureData.sewaFhsService.getParentLocation(parentLocation.getParent());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHC, parentLocation2.getName());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TALUKA, SharedStructureData.sewaFhsService.getParentLocation(parentLocation2.getParent()).getName());
        SharedStructureData.relatedPropertyHashTable.put("uniqueHealthId", memberDataBean.getUniqueHealthId());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CHILD_FIRST_NAME, memberDataBean.getFirstName());
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CHILD_DOB, simpleDateFormat.format(memberDataBean.getDob()));
        if (memberDataBean.getGender() != null) {
            SharedStructureData.relatedPropertyHashTable.put("gender", UtilBean.getGenderLabelFromValue(memberDataBean.getGender()));
        }
        MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = new MemberAdditionalInfoDataBean();
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        if (memberDataBean.getAdditionalInfo() != null && !memberDataBean.getAdditionalInfo().isEmpty() && memberAdditionalInfoDataBean.getLastWeightDate() != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.LAST_WEIGHT_DATE, simpleDateFormat2.format(new Date(memberAdditionalInfoDataBean.getLastWeightDate().longValue())));
        }
        if (memberDataBean.getBirthWeight() != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BIRTH_WEIGHT, memberDataBean.getBirthWeight().toString());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BIRTH_WEIGHT_DISPLAY, memberDataBean.getBirthWeight().toString() + " " + UtilBean.getMyLabel(LabelConstants.UNIT_OF_MASS_IN_KG));
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BIRTH_WEIGHT_DISPLAY_IN_GRAMS, String.valueOf((int) (memberDataBean.getBirthWeight().floatValue() * 1000.0f)));
        }
        if (memberDataBean.getMotherId() != null && (memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(memberDataBean.getMotherId())) != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PHONE_NUMBER, memberBeanRetrieveMemberBeanByActualId.getMobileNumber());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.FAMILY_PHONE_NUMBER, memberBeanRetrieveMemberBeanByActualId.getMobileNumber());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MOTHER_HEALTH_ID, memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MOTHER_NAME, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId));
            String ageDisplayOnGivenDate = UtilBean.getAgeDisplayOnGivenDate(memberBeanRetrieveMemberBeanByActualId.getDob(), new Date());
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MOTHER_AGE_DISPLAY, ageDisplayOnGivenDate != null ? ageDisplayOnGivenDate.split(" ")[0] : "");
            if (memberBeanRetrieveMemberBeanByActualId.getEducationStatus() != null) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.EDUCATION_STATUS, this.fhsService.getListValueById(Integer.valueOf(Integer.parseInt(memberBeanRetrieveMemberBeanByActualId.getEducationStatus()))));
            }
            if (memberBeanRetrieveMemberBeanByActualId.getLmpDate() != null && !memberBeanRetrieveMemberBeanByActualId.getIsPregnantFlag().booleanValue()) {
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MONTHS_OF_PREGNANCY, String.valueOf(UtilBean.getNumberOfMonths(memberBeanRetrieveMemberBeanByActualId.getLmpDate(), memberBeanRetrieveMemberBeanByActualId.getLastDeliveryDate())));
            }
            new MemberAdditionalInfoDataBean();
            if (memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo() != null && !memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo().isEmpty()) {
                MemberAdditionalInfoDataBean memberAdditionalInfoDataBean2 = (MemberAdditionalInfoDataBean) new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create().fromJson(memberBeanRetrieveMemberBeanByActualId.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                if (memberAdditionalInfoDataBean2.getDeliveryPlace() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DELIVERY_PLACE, memberAdditionalInfoDataBean2.getDeliveryPlace());
                }
                if (memberAdditionalInfoDataBean2.getTypeOfDelivery() != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.TYPE_OF_DELIVERY, memberAdditionalInfoDataBean2.getTypeOfDelivery());
                }
            }
        }
        editorEdit.apply();
    }
}
