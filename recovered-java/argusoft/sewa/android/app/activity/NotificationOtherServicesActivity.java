package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class NotificationOtherServicesActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ALERT_SCREEN = "alertScreen";
    private static final Integer REQUEST_CODE_FOR_OTHER_NOTIFICATIONS_ACTIVITY = 200;
    private static final String TYPE_SELECTION_SCREEN = "typeSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialButton nextButton;
    private Map<String, Integer> notificationCountMap;
    private List<NotificationMobDataBean> notificationMobDataBeans;
    NotificationServiceImpl notificationService;
    private long offset;
    private PagingListView paginatedListView;
    private String screen;
    private ArrayList<String> serviceList;
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<Integer> selectedVillageIds = new ArrayList();
    private Gson gson = new Gson();
    private int selectedTypeIndex = -1;
    private long limit = 30;
    private List<NotificationMobDataBean> notificationMapWithCounter = new ArrayList();
    private int selectedNotificationIndex = -1;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        this.selectedAshaAreas = (List) this.gson.fromJson(getIntent().getStringExtra(GlobalTypes.SELECTED_ASHA_AREAS), new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.activity.NotificationOtherServicesActivity.1
        }.getType());
        this.selectedVillageIds = (List) this.gson.fromJson(getIntent().getStringExtra(GlobalTypes.SELECTED_VILLAGE_IDS), new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.activity.NotificationOtherServicesActivity.2
        }.getType());
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
        setTitle(UtilBean.getTitleText(LabelConstants.OTHER_NOTIFICATIONS_ACTIVITY_TITLE));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (MaterialButton) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        showProcessDialog();
        setTypeScreen();
    }

    public void setTypeScreen() {
        this.notificationCountMap = this.notificationService.retrieveCountForOtherServicesNotificationType(this.selectedVillageIds, this.selectedAshaAreas);
        viewTypeScreen();
    }

    private String setNotificationCountFromMap(Integer num) {
        if (num != null) {
            return num.toString();
        }
        return null;
    }

    public void viewTypeScreen() {
        this.screen = "typeSelectionScreen";
        ArrayList<String> arrayList = new ArrayList<>();
        this.serviceList = arrayList;
        arrayList.add("TT2_ALERT");
        this.serviceList.add("IRON_SUCROSE_ALERT");
        this.serviceList.add("DPT_BOOSTER_2_ALERT");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get("TT2_ALERT"), setNotificationCountFromMap(this.notificationCountMap.get("TT2_ALERT"))));
        arrayList2.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get("IRON_SUCROSE_ALERT"), setNotificationCountFromMap(this.notificationCountMap.get("IRON_SUCROSE_ALERT"))));
        arrayList2.add(new ListItemDataBean(-1, UtilBean.getFullFormOfEntity().get("DPT_BOOSTER_2_ALERT"), setNotificationCountFromMap(this.notificationCountMap.get("DPT_BOOSTER_2_ALERT"))));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList2, R.layout.listview_row_notification, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationOtherServicesActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                NotificationOtherServicesActivity.this.selectedTypeIndex = i;
                NotificationOtherServicesActivity notificationOtherServicesActivity = NotificationOtherServicesActivity.this;
                notificationOtherServicesActivity.onClick(notificationOtherServicesActivity.nextButton);
                NotificationOtherServicesActivity.this.footerView.setVisibility(0);
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            setSubTitle(null);
            String str = this.screen;
            str.hashCode();
            if (str.equals("typeSelectionScreen")) {
                showProcessDialog();
                this.footerView.setVisibility(0);
                retrieveNotifications();
                return;
            }
            if (str.equals(ALERT_SCREEN)) {
                List<NotificationMobDataBean> list = this.notificationMobDataBeans;
                if (list == null || list.isEmpty()) {
                    this.bodyLayoutContainer.removeAllViews();
                    viewTypeScreen();
                } else {
                    if (this.selectedNotificationIndex != -1) {
                        this.bodyLayoutContainer.removeAllViews();
                        NotificationMobDataBean notificationMobDataBean = this.notificationMapWithCounter.get(this.selectedNotificationIndex);
                        this.formMetaDataUtil.setMetaDataForOtherNotificationsForm(notificationMobDataBean);
                        Intent intent = new Intent(this.context, (Class<?>) DynamicFormActivity_.class);
                        intent.putExtra("entity", notificationMobDataBean.getTask());
                        startActivityForResult(intent, REQUEST_CODE_FOR_OTHER_NOTIFICATIONS_ACTIVITY.intValue());
                        this.selectedNotificationIndex = -1;
                        return;
                    }
                    SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.TASK_SELECTION_ALERT));
                }
            }
        }
    }

    public void retrieveNotifications() {
        try {
            this.offset = 0L;
            this.notificationMapWithCounter.clear();
            this.notificationMobDataBeans = this.notificationService.retrieveNotificationsForUser(this.selectedVillageIds, this.selectedAshaAreas, this.serviceList.get(this.selectedTypeIndex), null, this.limit, this.offset);
            this.offset += this.limit;
            setAlertScreen();
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void setAlertScreen() {
        this.screen = ALERT_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        List<NotificationMobDataBean> list = this.notificationMobDataBeans;
        if (list != null && !list.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_ALERT));
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getNotificationList(this.notificationMobDataBeans), R.layout.listview_row_with_date, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationOtherServicesActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    NotificationOtherServicesActivity.this.selectedNotificationIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_NOTIFICATION_ALERT_WITH_GRATITUDE_FOR_WORK));
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getNotificationList(List<NotificationMobDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : list) {
            if (notificationMobDataBean.getMemberId() != null) {
                arrayList.add(notificationMobDataBean.getMemberId());
            }
        }
        Map<Long, MemberBean> mapRetrieveMemberBeansMapByActualIds = this.fhsService.retrieveMemberBeansMapByActualIds(arrayList);
        ArrayList arrayList2 = new ArrayList();
        String str = "";
        for (NotificationMobDataBean notificationMobDataBean2 : list) {
            if (notificationMobDataBean2.getExpectedDueDate() != null) {
                String strConvertDateToString = UtilBean.convertDateToString(notificationMobDataBean2.getExpectedDueDate().longValue(), false, false, true);
                if (new Date(notificationMobDataBean2.getExpectedDueDate().longValue()).before(new Date())) {
                    notificationMobDataBean2.setOverdueFlag(true);
                }
                str = strConvertDateToString;
            } else {
                notificationMobDataBean2.setOverdueFlag(false);
            }
            MemberBean memberBean = mapRetrieveMemberBeansMapByActualIds.get(notificationMobDataBean2.getMemberId());
            if (memberBean != null) {
                arrayList2.add(new ListItemDataBean(str, memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), (String) null, notificationMobDataBean2.getOverdueFlag().booleanValue()));
                this.notificationMapWithCounter.add(notificationMobDataBean2);
            }
        }
        return arrayList2;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_OTHER_NOTIFICATIONS_ACTIVITY.intValue()) {
            showProcessDialog();
            setAlertScreen();
            retrieveNotifications();
        }
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
        this.selectedTypeIndex = -1;
        this.selectedNotificationIndex = -1;
        if (this.screen.equals(ALERT_SCREEN)) {
            this.bodyLayoutContainer.removeAllViews();
            setTypeScreen();
        } else {
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
            listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(this.selectedVillageIds, this.selectedAshaAreas, this.serviceList.get(this.selectedTypeIndex), null, this.limit, this.offset);
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
            this.paginatedListView.onFinishLoadingWithItem(true, getNotificationList(list));
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
