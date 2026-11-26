package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
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
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class NotificationAwwActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String AREA_SELECTION_SCREEN = "AreaSelectionScreen";
    private static final long DELAY = 500;
    private static final String NOTIFICATION_SELECTION_SCREEN = "NotificationSelectionScreen";
    private static final String NOTIFICATION_TYPE_SELECTION_SCREEN = "NotificationTypeSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY = 200;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    ImmunisationServiceImpl immunisationService;
    private MaterialTextView listTitle;
    private Button nextButton;
    private MaterialTextView noNotificationTextView;
    private String notificationCode;
    NotificationServiceImpl notificationService;
    private Map<String, Integer> notificationsCountMap;
    private long offset;
    private PagingListView paginatedListView;
    private String screenName;
    private TextInputLayout searchBox;
    private CharSequence searchtring;
    private NotificationMobDataBean selectedNotification;
    private List<ListItemDataBean> serviceList;
    SewaServiceImpl sewaService;
    private long limit = 30;
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAreaIds = new ArrayList();
    private List<String> notificationCodeWithRadioButtonIdMap = new ArrayList();
    private List<NotificationMobDataBean> notificationBeanList = new LinkedList();
    private Map<Long, MemberBean> memberMapWithActualIdAsKey = new HashMap();
    private String selectedNotificationCode = null;
    private Timer timer = new Timer();
    private int selectedVisitIndex = -1;
    private int selectedNotificationIndex = -1;

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
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        setTitle(UtilBean.getTitleText(LabelConstants.NOTIFICATION_ACTIVITY_TITLE));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String string;
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screenName;
            str.hashCode();
            if (str.equals(NOTIFICATION_SELECTION_SCREEN)) {
                List<NotificationMobDataBean> list = this.notificationBeanList;
                if (list == null || list.isEmpty()) {
                    navigateToHomeScreen(false);
                    return;
                }
                int i = this.selectedNotificationIndex;
                if (i == -1) {
                    SewaUtil.generateToast(this, LabelConstants.TASK_SELECTION_ALERT);
                    return;
                } else {
                    this.selectedNotification = this.notificationBeanList.get(i);
                    startDynamicFormActivity();
                    return;
                }
            }
            if (str.equals(AREA_SELECTION_SCREEN)) {
                if (this.ashaAreaList.size() == 1) {
                    string = this.ashaAreaList.get(0).getName();
                } else {
                    string = this.ashaAreaSpinner.getSelectedItem().toString();
                }
                if (!string.equals(LabelConstants.ALL) && !string.equals(UtilBean.getMyLabel(LabelConstants.ALL))) {
                    Iterator<LocationBean> it = this.ashaAreaList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        LocationBean next = it.next();
                        if (string.equals(next.getName())) {
                            this.selectedAreaIds.add(next.getActualID());
                            break;
                        }
                    }
                } else {
                    Iterator<LocationBean> it2 = this.ashaAreaList.iterator();
                    while (it2.hasNext()) {
                        this.selectedAreaIds.add(it2.next().getActualID());
                    }
                }
                showProcessDialog();
                retrieveCountsForEachNotificationType();
            }
        }
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.ashaAreaList = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.selectedAreaIds.add(this.ashaAreaList.get(0).getActualID());
            retrieveCountsForEachNotificationType();
        } else if (this.ashaAreaList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    public void addAshaAreaSelectionSpinner() {
        this.screenName = AREA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.ashaAreaSpinner == null) {
            String[] strArr = new String[this.ashaAreaList.size() + 1];
            strArr[0] = LabelConstants.ALL;
            Iterator<LocationBean> it = this.ashaAreaList.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            this.ashaAreaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        hideProcessDialog();
    }

    public void retrieveCountsForEachNotificationType() {
        this.notificationsCountMap = this.notificationService.retrieveCountForNotificationType(null, this.selectedAreaIds);
        addNotificationTypeScreen();
    }

    public void addSearchTextBox() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        if (this.searchBox == null) {
            TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
            this.searchBox = editText;
            if (editText.getEditText() != null) {
                this.searchBox.getEditText().addTextChangedListener(new AnonymousClass1());
            }
        }
        this.bodyLayoutContainer.addView(this.searchBox);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.NotificationAwwActivity$1, reason: invalid class name */
    class AnonymousClass1 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass1() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            NotificationAwwActivity.this.timer.cancel();
            NotificationAwwActivity.this.timer = new Timer();
            NotificationAwwActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.1.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        NotificationAwwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NotificationAwwActivity.this.retrieveNotificationListFromDB(NotificationAwwActivity.this.selectedNotificationCode, charSequence);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        NotificationAwwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.1.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NotificationAwwActivity.this.showProcessDialog();
                                NotificationAwwActivity.this.retrieveNotificationListFromDB(NotificationAwwActivity.this.selectedNotificationCode, null);
                            }
                        });
                    }
                }
            }, NotificationAwwActivity.DELAY);
        }
    }

    private String setNotificationCountFromMap(Integer num) {
        if (num != null) {
            return num.toString();
        }
        return null;
    }

    public void addNotificationTypeScreen() {
        this.screenName = NOTIFICATION_TYPE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerView.setVisibility(8);
        if (this.serviceList == null) {
            ArrayList arrayList = new ArrayList();
            this.serviceList = arrayList;
            arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.TECHO_AWW_CS)), setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.TECHO_AWW_CS))));
            this.notificationCodeWithRadioButtonIdMap.add(FormConstants.TECHO_AWW_CS);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, this.serviceList, R.layout.listview_row_notification, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                NotificationAwwActivity.this.selectedVisitIndex = i;
                NotificationAwwActivity.this.offset = 0L;
                if (NotificationAwwActivity.this.selectedVisitIndex != -1) {
                    NotificationAwwActivity notificationAwwActivity = NotificationAwwActivity.this;
                    notificationAwwActivity.selectedNotificationCode = (String) notificationAwwActivity.notificationCodeWithRadioButtonIdMap.get(NotificationAwwActivity.this.selectedVisitIndex);
                    NotificationAwwActivity.this.bodyLayoutContainer.removeAllViews();
                    NotificationAwwActivity.this.showProcessDialog();
                    NotificationAwwActivity.this.addSearchTextBox();
                    NotificationAwwActivity notificationAwwActivity2 = NotificationAwwActivity.this;
                    notificationAwwActivity2.retrieveNotificationListFromDB(notificationAwwActivity2.selectedNotificationCode, null);
                    return;
                }
                SewaUtil.generateToast(NotificationAwwActivity.this.context, UtilBean.getMyLabel(LabelConstants.SELECT_NOTIFICATION_TYPE));
            }
        }, null));
        hideProcessDialog();
    }

    public void retrieveNotificationListFromDB(String str, CharSequence charSequence) {
        this.searchtring = charSequence;
        this.selectedNotificationIndex = -1;
        this.notificationCode = str;
        try {
            this.offset = 0L;
            this.notificationBeanList = this.notificationService.retrieveNotificationsForUser(null, this.selectedAreaIds, str, charSequence, this.limit, 0L);
            this.offset += this.limit;
        } catch (SQLException e) {
            Logger.getLogger(NotificationAshaActivity.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        }
        addNotificationScreen(charSequence != null);
    }

    public void addNotificationScreen(boolean z) {
        this.screenName = NOTIFICATION_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.listTitle);
        this.bodyLayoutContainer.removeView(this.noNotificationTextView);
        this.footerView.setVisibility(0);
        List<NotificationMobDataBean> list = this.notificationBeanList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_NOTIFICATION);
            this.listTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, addNotificationForLoop(this.notificationBeanList), R.layout.listview_row_with_date, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    NotificationAwwActivity.this.selectedNotificationIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_NOTIFICATION_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.noNotificationTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> addNotificationForLoop(List<NotificationMobDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : list) {
            if (notificationMobDataBean.getMemberId() != null) {
                arrayList.add(notificationMobDataBean.getMemberId());
            }
        }
        this.memberMapWithActualIdAsKey.putAll(this.fhsService.retrieveMemberBeansMapByActualIds(arrayList));
        ArrayList arrayList2 = new ArrayList();
        String strConvertDateToString = null;
        String str = null;
        for (NotificationMobDataBean notificationMobDataBean2 : list) {
            notificationMobDataBean2.setOverdueFlag(Boolean.valueOf(notificationMobDataBean2.getExpectedDueDate() != null && new Date(notificationMobDataBean2.getExpectedDueDate().longValue()).before(new Date())));
            MemberBean memberBean = this.memberMapWithActualIdAsKey.get(notificationMobDataBean2.getMemberId());
            if (memberBean != null) {
                if (notificationMobDataBean2.getExpectedDueDate() != null) {
                    strConvertDateToString = UtilBean.convertDateToString(notificationMobDataBean2.getExpectedDueDate().longValue(), false, false, true);
                }
                if (notificationMobDataBean2.getCustomField() != null && !notificationMobDataBean2.getCustomField().equals("0")) {
                    str = UtilBean.getMyLabel(LabelConstants.VISIT) + " " + notificationMobDataBean2.getCustomField();
                }
                arrayList2.add(new ListItemDataBean(strConvertDateToString, memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), str, notificationMobDataBean2.getOverdueFlag().booleanValue()));
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMetadataForFormByFormType(String str) {
        MemberBean memberBean = this.memberMapWithActualIdAsKey.get(this.selectedNotification.getMemberId());
        if (memberBean != null) {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberBean.getActualId(), memberBean.getFamilyId(), this.selectedNotification, PreferenceManager.getDefaultSharedPreferences(this));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_NOTIFICATION_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    NotificationAwwActivity.this.alertDialog.dismiss();
                    NotificationAwwActivity.this.navigateToHomeScreen(false);
                    NotificationAwwActivity.this.finish();
                    return;
                }
                NotificationAwwActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.argusoft.sewa.android.app.activity.NotificationAwwActivity$5] */
    private void startDynamicFormActivity() {
        showProcessDialog();
        final Intent intent = new Intent(this.context, (Class<?>) DynamicFormActivity_.class);
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String task = NotificationAwwActivity.this.selectedNotification.getTask();
                NotificationAwwActivity.this.setMetadataForFormByFormType(task);
                if (task != null) {
                    intent.putExtra("entity", task);
                    NotificationAwwActivity.this.startActivityForResult(intent, NotificationAwwActivity.REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue());
                }
                NotificationAwwActivity.this.hideProcessDialog();
            }
        }.start();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.offset = 0L;
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue()) {
            try {
                List<NotificationMobDataBean> listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(null, this.selectedAreaIds, this.selectedNotificationCode, null, this.limit, this.offset);
                this.notificationBeanList = listRetrieveNotificationsForUser;
                this.offset += this.limit;
                this.selectedNotificationIndex = -1;
                if (listRetrieveNotificationsForUser != null && !listRetrieveNotificationsForUser.isEmpty()) {
                    this.bodyLayoutContainer.removeAllViews();
                    showProcessDialog();
                    addSearchTextBox();
                    addNotificationScreen(false);
                } else {
                    showProcessDialog();
                    retrieveCountsForEachNotificationType();
                }
                return;
            } catch (SQLException e) {
                navigateToHomeScreen(false);
                Logger.getLogger(NotificationAshaActivity.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                return;
            }
        }
        navigateToHomeScreen(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r7) {
        /*
            r6 = this;
            super.onOptionsItemSelected(r7)
            java.lang.String r0 = r6.screenName
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L90
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto L90
        L11:
            android.widget.LinearLayout r0 = r6.footerView
            r0.setVisibility(r2)
            int r7 = r7.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r7 != r0) goto L8f
            java.lang.String r7 = r6.screenName
            r7.hashCode()
            int r0 = r7.hashCode()
            r3 = -1
            switch(r0) {
                case -208762739: goto L44;
                case 670978931: goto L39;
                case 1646831787: goto L2e;
                default: goto L2c;
            }
        L2c:
            r2 = -1
            goto L4d
        L2e:
            java.lang.String r0 = "AreaSelectionScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L37
            goto L2c
        L37:
            r2 = 2
            goto L4d
        L39:
            java.lang.String r0 = "NotificationTypeSelectionScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L42
            goto L2c
        L42:
            r2 = 1
            goto L4d
        L44:
            java.lang.String r0 = "NotificationSelectionScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L4d
            goto L2c
        L4d:
            switch(r2) {
                case 0: goto L7b;
                case 1: goto L55;
                case 2: goto L51;
                default: goto L50;
            }
        L50:
            goto L8e
        L51:
            r6.finish()
            goto L8e
        L55:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r7 = r6.ashaAreaList
            int r7 = r7.size()
            if (r7 != r1) goto L61
            r6.finish()
            goto L75
        L61:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r7 = r6.ashaAreaList
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L6d
            r6.finish()
            goto L75
        L6d:
            android.widget.LinearLayout r7 = r6.bodyLayoutContainer
            r7.removeAllViews()
            r6.addAshaAreaSelectionSpinner()
        L75:
            java.util.List<java.lang.Integer> r7 = r6.selectedAreaIds
            r7.clear()
            goto L8e
        L7b:
            r4 = 0
            r6.offset = r4
            r6.selectedVisitIndex = r3
            r6.showProcessDialog()
            r6.retrieveCountsForEachNotificationType()
            android.widget.Button r7 = r6.nextButton
            java.lang.String r0 = "Next"
            r7.setText(r0)
        L8e:
            return r1
        L8f:
            return r2
        L90:
            r6.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NotificationAwwActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<NotificationMobDataBean> listRetrieveNotificationsForUser;
        try {
            listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(null, this.selectedAreaIds, this.notificationCode, this.searchtring, this.limit, this.offset);
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            listRetrieveNotificationsForUser = null;
        }
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveNotificationsForUser);
    }

    public void onLoadMoreUi(List<NotificationMobDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.notificationBeanList.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, addNotificationForLoop(list));
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
