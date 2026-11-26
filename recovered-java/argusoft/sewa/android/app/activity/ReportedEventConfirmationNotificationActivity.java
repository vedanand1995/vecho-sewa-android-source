package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ReportedEventConfirmationNotificationActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY = 200;
    private static final String SET_SERVICE_TYPE = "setServiceType";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private Button nextButton;
    private Map<String, Integer> notificationCountMap;
    private List<NotificationMobDataBean> notificationMapWithCounter;
    private List<NotificationMobDataBean> notificationMobDataBeans;
    NotificationServiceImpl notificationService;
    private long offset;
    private PagingListView paginatedListView;
    private String screen;
    private NotificationMobDataBean selectedNotification;
    private SharedPreferences sharedPref;
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<Integer> selectedVillageIds = new ArrayList();
    private Gson gson = new Gson();
    private int selectedServiceIndex = -1;
    private List<String> servicesList = NotificationConstants.ASHA_REPORTED_EVENT_NOTIFICATIONS;
    private int selectedMemeberIndex = -1;
    private long limit = 30;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        this.selectedAshaAreas = (List) this.gson.fromJson(getIntent().getStringExtra(GlobalTypes.SELECTED_ASHA_AREAS), new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.activity.ReportedEventConfirmationNotificationActivity.1
        }.getType());
        this.selectedVillageIds = (List) this.gson.fromJson(getIntent().getStringExtra(GlobalTypes.SELECTED_VILLAGE_IDS), new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.activity.ReportedEventConfirmationNotificationActivity.2
        }.getType());
        this.sharedPref = PreferenceManager.getDefaultSharedPreferences(this.context);
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
        setTitle(UtilBean.getTitleText(LabelConstants.REPORTED_EVENT_CONF_ACTIVITY_TITLE));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        showProcessDialog();
        setServiceTypeScreen();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        setSubTitle(null);
        String str = this.screen;
        str.hashCode();
        if (str.equals(SET_SERVICE_TYPE)) {
            if (this.selectedServiceIndex != -1) {
                showProcessDialog();
                this.bodyLayoutContainer.removeAllViews();
                retrieveNotifications();
                return;
            }
            SewaUtil.generateToast(this.context, LabelConstants.TASK_SELECTION_ALERT);
            return;
        }
        if (str.equals(MEMBER_SELECTION_SCREEN)) {
            if (this.selectedMemeberIndex != -1) {
                this.bodyLayoutContainer.removeAllViews();
                this.selectedNotification = this.notificationMapWithCounter.get(this.selectedMemeberIndex);
                startConfirmationActivity();
            } else if (this.notificationMobDataBeans.isEmpty()) {
                setServiceTypeScreen();
            } else {
                SewaUtil.generateToast(this.context, LabelConstants.PLEASE_SELECT_A_MEMBER);
            }
        }
    }

    public void setServiceTypeScreen() {
        this.notificationCountMap = this.notificationService.retrieveCountForAshaReportedEventNotificationType(this.selectedVillageIds, this.selectedAshaAreas);
        viewServiceTypeScreen();
    }

    private String setNotificationCountFromMap(Integer num) {
        if (num != null) {
            return num.toString();
        }
        return null;
    }

    public void viewServiceTypeScreen() {
        this.screen = SET_SERVICE_TYPE;
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get("FHW_PREG_CONF"), setNotificationCountFromMap(this.notificationCountMap.get("FHW_PREG_CONF"))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get(NotificationConstants.NOTIFICATION_FHW_DELIVERY_CONF), setNotificationCountFromMap(this.notificationCountMap.get(NotificationConstants.NOTIFICATION_FHW_DELIVERY_CONF))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get("FHW_DEATH_CONF"), setNotificationCountFromMap(this.notificationCountMap.get("FHW_DEATH_CONF"))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get(NotificationConstants.NOTIFICATION_FHW_MEMBER_MIGRATION), setNotificationCountFromMap(this.notificationCountMap.get(NotificationConstants.NOTIFICATION_FHW_MEMBER_MIGRATION))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get(NotificationConstants.NOTIFICATION_FHW_FAMILY_MIGRATION), setNotificationCountFromMap(this.notificationCountMap.get(NotificationConstants.NOTIFICATION_FHW_FAMILY_MIGRATION))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get(NotificationConstants.NOTIFICATION_FHW_FAMILY_SPLIT), setNotificationCountFromMap(this.notificationCountMap.get(NotificationConstants.NOTIFICATION_FHW_FAMILY_SPLIT))));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_notification, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.ReportedEventConfirmationNotificationActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                ReportedEventConfirmationNotificationActivity.this.selectedServiceIndex = i;
                ReportedEventConfirmationNotificationActivity reportedEventConfirmationNotificationActivity = ReportedEventConfirmationNotificationActivity.this;
                reportedEventConfirmationNotificationActivity.onClick(reportedEventConfirmationNotificationActivity.nextButton);
                ReportedEventConfirmationNotificationActivity.this.footerView.setVisibility(0);
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    public void retrieveNotifications() {
        try {
            this.offset = 0L;
            this.notificationMobDataBeans = this.notificationService.retrieveNotificationsForUser(this.selectedVillageIds, this.selectedAshaAreas, this.servicesList.get(this.selectedServiceIndex), null, this.limit, this.offset);
            this.offset += this.limit;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        setMemberSelectionScreen();
        hideProcessDialog();
    }

    public void setMemberSelectionScreen() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        List<NotificationMobDataBean> list = this.notificationMobDataBeans;
        if (list != null && !list.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this.context, UtilBean.getFullFormOfEntity().get(this.servicesList.get(this.selectedServiceIndex))));
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getList(this.notificationMobDataBeans), R.layout.listview_row_with_date, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.ReportedEventConfirmationNotificationActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    ReportedEventConfirmationNotificationActivity.this.selectedMemeberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText("Next");
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_NOTIFICATIONS));
            this.nextButton.setText("Okay");
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getList(List<NotificationMobDataBean> list) {
        String memberFullName;
        String str;
        FamilyBean familyBeanRetrieveFamilyBeanByActualId;
        ArrayList arrayList = new ArrayList();
        this.notificationMapWithCounter = new ArrayList();
        String str2 = "";
        for (NotificationMobDataBean notificationMobDataBean : list) {
            if (notificationMobDataBean.getExpectedDueDate() != null) {
                String strConvertDateToString = UtilBean.convertDateToString(notificationMobDataBean.getExpectedDueDate().longValue(), false, false, true);
                if (new Date(notificationMobDataBean.getExpectedDueDate().longValue()).before(new Date())) {
                    notificationMobDataBean.setOverdueFlag(true);
                }
                str2 = strConvertDateToString;
            } else {
                notificationMobDataBean.setOverdueFlag(false);
            }
            if (notificationMobDataBean.getMemberId() != null) {
                MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(notificationMobDataBean.getMemberId());
                if (memberBeanRetrieveMemberBeanByActualId != null) {
                    String uniqueHealthId = memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId();
                    memberFullName = UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId);
                    str = uniqueHealthId;
                    this.notificationMapWithCounter.add(notificationMobDataBean);
                    arrayList.add(new ListItemDataBean(str2, str, memberFullName, (String) null, notificationMobDataBean.getOverdueFlag().booleanValue()));
                }
            } else if (notificationMobDataBean.getFamilyId() != null && (familyBeanRetrieveFamilyBeanByActualId = this.fhsService.retrieveFamilyBeanByActualId(notificationMobDataBean.getFamilyId())) != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(familyBeanRetrieveFamilyBeanByActualId.getFamilyId());
                MemberDataBean memberDataBean = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList2).get(familyBeanRetrieveFamilyBeanByActualId.getFamilyId());
                String familyId = familyBeanRetrieveFamilyBeanByActualId.getFamilyId();
                if (memberDataBean != null) {
                    str = familyId;
                    memberFullName = UtilBean.getMemberFullName(memberDataBean);
                } else {
                    memberFullName = "";
                    str = familyId;
                }
                this.notificationMapWithCounter.add(notificationMobDataBean);
                arrayList.add(new ListItemDataBean(str2, str, memberFullName, (String) null, notificationMobDataBean.getOverdueFlag().booleanValue()));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void startConfirmationActivity() {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.ReportedEventConfirmationNotificationActivity.startConfirmationActivity():void");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_REPORTED_EVENT_CONF_ACTIVITY.intValue()) {
            showProcessDialog();
            retrieveNotifications();
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        this.selectedMemeberIndex = -1;
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        if (MEMBER_SELECTION_SCREEN.equals(this.screen)) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            this.selectedServiceIndex = -1;
            setServiceTypeScreen();
        } else if (SET_SERVICE_TYPE.equals(this.screen)) {
            finish();
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<NotificationMobDataBean> listRetrieveNotificationsForUser;
        try {
            listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(this.selectedVillageIds, this.selectedAshaAreas, this.servicesList.get(this.selectedServiceIndex), null, this.limit, this.offset);
            try {
                this.offset += this.limit;
            } catch (SQLException e) {
                e = e;
                Log.e(getClass().getName(), null, e);
                onLoadMoreUi(listRetrieveNotificationsForUser);
            }
        } catch (SQLException e2) {
            e = e2;
            listRetrieveNotificationsForUser = null;
        }
        onLoadMoreUi(listRetrieveNotificationsForUser);
    }

    public void onLoadMoreUi(List<NotificationMobDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.notificationMobDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, getList(list));
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
