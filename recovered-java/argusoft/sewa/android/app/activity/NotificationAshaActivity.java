package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
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
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class NotificationAshaActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String AREA_SELECTION_SCREEN = "AreaSelectionScreen";
    private static final long DELAY = 500;
    private static final long LIMIT = 30;
    private static final String NOTIFICATION_SELECTION_SCREEN = "NotificationSelectionScreen";
    private static final String NOTIFICATION_TYPE_SELECTION_SCREEN = "NotificationTypeSelectionScreen";
    private static final String READ_ONLY_NOTIFICATION_SCREEN = "ReadOnlyNotificationScreen";
    private static final Integer REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY = 200;
    private static final Integer REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY = 201;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    ImmunisationServiceImpl immunisationService;
    private boolean isFromLogin;
    private MaterialTextView listTitle;
    private Button nextButton;
    private MaterialTextView noNotificationAvailabelView;
    private PagingListView notificationListView;
    NotificationServiceImpl notificationService;
    private Map<String, Integer> notificationsCountMap;
    private String screenName;
    private CharSequence searchString;
    private NotificationMobDataBean selectedNotification;
    SewaServiceImpl sewaService;
    private View.OnClickListener onClickListener = this;
    private long offset = 0;
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAreaIds = new ArrayList();
    private List<NotificationMobDataBean> notificationBeanList = new LinkedList();
    private Map<Long, MemberBean> memberMapWithActualIdAsKey = new HashMap();
    private String selectedNotificationCode = null;
    private Timer timer = new Timer();
    private int selectedNotificationTypeIndex = -1;
    private List<String> notificationGroupCodes = new ArrayList();

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String string;
        setSubTitle(null);
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screenName;
            str.hashCode();
            switch (str) {
                case "NotificationSelectionScreen":
                    List<NotificationMobDataBean> list = this.notificationBeanList;
                    if (list == null || list.isEmpty()) {
                        navigateToHomeScreen(false);
                        break;
                    } else {
                        NotificationMobDataBean notificationMobDataBean = this.selectedNotification;
                        if (notificationMobDataBean == null) {
                            SewaUtil.generateToast(this.context, LabelConstants.NOTIFICATION_SELECTION_REQUIRED_ALERT);
                            break;
                        } else if (notificationMobDataBean.getTask().equals(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY)) {
                            showReadOnlyNotification();
                            break;
                        } else {
                            startDynamicFormActivity();
                            break;
                        }
                    }
                case "ReadOnlyNotificationScreen":
                    this.bodyLayoutContainer.removeAllViews();
                    showProcessDialog();
                    LinearLayout linearLayout = this.bodyLayoutContainer;
                    linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
                    addSearchTextBox();
                    retrieveNotificationListFromDB(this.selectedNotificationCode, null);
                    break;
                case "AreaSelectionScreen":
                    if (this.ashaAreaList.size() == 1) {
                        string = this.ashaAreaList.get(0).getName();
                    } else {
                        string = this.ashaAreaSpinner.getSelectedItem().toString();
                    }
                    if (!string.equals(LabelConstants.ALL) && !string.equals(UtilBean.getMyLabel(LabelConstants.ALL))) {
                        Iterator<LocationBean> it = this.ashaAreaList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                LocationBean next = it.next();
                                if (string.equals(next.getName())) {
                                    this.selectedAreaIds.add(next.getActualID());
                                }
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
                    break;
            }
        }
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.ashaAreaList = distinctLocationsAssignedToUser;
        if (this.isFromLogin) {
            Iterator<LocationBean> it = distinctLocationsAssignedToUser.iterator();
            while (it.hasNext()) {
                this.selectedAreaIds.add(it.next().getActualID());
            }
            retrieveCountsForEachNotificationType();
            return;
        }
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
        setSubTitle(null);
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
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_ASHA_AREA));
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        hideProcessDialog();
    }

    public void retrieveCountsForEachNotificationType() {
        this.notificationsCountMap = this.notificationService.retrieveCountForNotificationType(null, this.selectedAreaIds);
        addNotificationTypeScreen();
    }

    public void addSearchTextBox() {
        if (this.selectedNotificationCode.equals(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY)) {
            return;
        }
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 10, 1);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass1());
        }
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.NotificationAshaActivity$1, reason: invalid class name */
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
            NotificationAshaActivity.this.timer.cancel();
            NotificationAshaActivity.this.timer = new Timer();
            NotificationAshaActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.1.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        NotificationAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NotificationAshaActivity.this.retrieveNotificationListFromDB(NotificationAshaActivity.this.selectedNotificationCode, charSequence);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        NotificationAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.1.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NotificationAshaActivity.this.showProcessDialog();
                                NotificationAshaActivity.this.retrieveNotificationListFromDB(NotificationAshaActivity.this.selectedNotificationCode, null);
                            }
                        });
                    }
                }
            }, NotificationAshaActivity.DELAY);
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
        setSubTitle(null);
        this.notificationGroupCodes.add(FormConstants.ASHA_LMPFU);
        this.notificationGroupCodes.add(FormConstants.ASHA_ANC);
        this.notificationGroupCodes.add(FormConstants.ASHA_PNC);
        this.notificationGroupCodes.add(FormConstants.ASHA_CS);
        this.notificationGroupCodes.add(FormConstants.CMAM_FOLLOWUP);
        this.notificationGroupCodes.add(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY);
        this.notificationGroupCodes.add(NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.ASHA_LMPFU)), setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.ASHA_LMPFU))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.ASHA_ANC)), setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.ASHA_ANC))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.ASHA_HBNC)), setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.ASHA_PNC))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.ASHA_HBYC)), setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.ASHA_CS))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(FormConstants.CMAM_FOLLOWUP)), setNotificationCountFromMap(this.notificationsCountMap.get(FormConstants.CMAM_FOLLOWUP))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY)), setNotificationCountFromMap(this.notificationsCountMap.get(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY))));
        arrayList.add(new ListItemDataBean(-1, UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY)), (String) null));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_notification, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                NotificationAshaActivity.this.offset = 0L;
                NotificationAshaActivity.this.selectedNotificationTypeIndex = i;
                if (NotificationAshaActivity.this.selectedNotificationTypeIndex != -1) {
                    NotificationAshaActivity notificationAshaActivity = NotificationAshaActivity.this;
                    notificationAshaActivity.selectedNotificationCode = (String) notificationAshaActivity.notificationGroupCodes.get(NotificationAshaActivity.this.selectedNotificationTypeIndex);
                    if (!NotificationAshaActivity.this.selectedNotificationCode.equals(NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY)) {
                        NotificationAshaActivity.this.bodyLayoutContainer.removeAllViews();
                        NotificationAshaActivity.this.showProcessDialog();
                        LinearLayout linearLayout = NotificationAshaActivity.this.bodyLayoutContainer;
                        NotificationAshaActivity notificationAshaActivity2 = NotificationAshaActivity.this;
                        linearLayout.addView(notificationAshaActivity2.lastUpdateLabelView(notificationAshaActivity2.sewaService, NotificationAshaActivity.this.bodyLayoutContainer));
                        NotificationAshaActivity.this.addSearchTextBox();
                        NotificationAshaActivity notificationAshaActivity3 = NotificationAshaActivity.this;
                        notificationAshaActivity3.retrieveNotificationListFromDB(notificationAshaActivity3.selectedNotificationCode, null);
                        NotificationAshaActivity.this.footerView.setVisibility(0);
                        return;
                    }
                    Intent intent = new Intent(NotificationAshaActivity.this.context, (Class<?>) MamtaDayActivity_.class);
                    intent.putExtra(GlobalTypes.SELECTED_ASHA_AREAS, new Gson().toJson(NotificationAshaActivity.this.selectedAreaIds));
                    intent.putExtra(GlobalTypes.SELECTED_VILLAGE_IDS, new Gson().toJson(new ArrayList()));
                    intent.putExtra(RelatedPropertyNameConstants.ROLE, 24L);
                    NotificationAshaActivity.this.startActivityForResult(intent, NotificationAshaActivity.REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY.intValue());
                    return;
                }
                SewaUtil.generateToast(NotificationAshaActivity.this.context, UtilBean.getMyLabel(LabelConstants.SELECT_NOTIFICATION_TYPE));
            }
        }, null));
        hideProcessDialog();
    }

    public void retrieveNotificationListFromDB(String str, CharSequence charSequence) {
        this.offset = 0L;
        this.searchString = charSequence;
        try {
            this.notificationBeanList = this.notificationService.retrieveNotificationsForUser(null, this.selectedAreaIds, str, charSequence, LIMIT, 0L);
            this.offset += LIMIT;
        } catch (SQLException e) {
            Logger.getLogger(NotificationAshaActivity.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        }
        addNotificationScreen(charSequence != null);
    }

    public void addNotificationScreen(boolean z) {
        this.screenName = NOTIFICATION_SELECTION_SCREEN;
        this.selectedNotification = null;
        this.bodyLayoutContainer.removeView(this.listTitle);
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.noNotificationAvailabelView);
        List<NotificationMobDataBean> list = this.notificationBeanList;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_NOTIFICATION_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.noNotificationAvailabelView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NotificationAshaActivity.this.addNotificationTypeScreen();
                }
            });
        } else {
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    if (NotificationAshaActivity.this.notificationBeanList.size() > i) {
                        NotificationAshaActivity notificationAshaActivity = NotificationAshaActivity.this;
                        notificationAshaActivity.selectedNotification = (NotificationMobDataBean) notificationAshaActivity.notificationBeanList.get(i);
                    }
                }
            };
            List<ListItemDataBean> listAddNotificationForLoop = addNotificationForLoop(this.notificationBeanList);
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
            this.listTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            if (this.selectedNotificationCode.equals(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY)) {
                this.notificationListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddNotificationForLoop, R.layout.listview_row_with_item, onItemClickListener, this);
            } else {
                this.notificationListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddNotificationForLoop, R.layout.listview_row_with_date, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.notificationListView);
            this.nextButton.setText("Next");
            this.nextButton.setOnClickListener(this);
        }
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private List<ListItemDataBean> addNotificationForLoop(List<NotificationMobDataBean> list) {
        String strConvertDateToString;
        String myLabel;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : list) {
            if (notificationMobDataBean.getMemberId() != null) {
                arrayList2.add(notificationMobDataBean.getMemberId());
            }
        }
        this.memberMapWithActualIdAsKey.putAll(this.fhsService.retrieveMemberBeansMapByActualIds(arrayList2));
        ArrayList arrayList3 = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean2 : list) {
            notificationMobDataBean2.setOverdueFlag(Boolean.valueOf(notificationMobDataBean2.getExpectedDueDate() != null && new Date(notificationMobDataBean2.getExpectedDueDate().longValue()).before(new Date())));
            MemberBean memberBean = this.memberMapWithActualIdAsKey.get(notificationMobDataBean2.getMemberId());
            StringBuilder sb = new StringBuilder();
            String task = notificationMobDataBean2.getTask();
            task.hashCode();
            char c = 65535;
            switch (task.hashCode()) {
                case -1299236319:
                    if (task.equals(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY)) {
                        c = 0;
                        break;
                    }
                    break;
                case 2940036:
                    if (task.equals(FormConstants.ASHA_CS)) {
                        c = 1;
                        break;
                    }
                    break;
                case 91153521:
                    if (task.equals(FormConstants.ASHA_PNC)) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (notificationMobDataBean2.getHeader() != null) {
                        myLabel = UtilBean.getMyLabel(notificationMobDataBean2.getHeader());
                    } else {
                        myLabel = UtilBean.getMyLabel(LabelConstants.INFORMATION);
                    }
                    arrayList.add(new ListItemDataBean(myLabel, null));
                    break;
                case 1:
                    if (memberBean == null) {
                        arrayList3.add(notificationMobDataBean2);
                        break;
                    } else if (memberBean.getDob() == null) {
                        arrayList3.add(notificationMobDataBean2);
                        break;
                    } else {
                        Calendar calendar = Calendar.getInstance();
                        calendar.add(1, -5);
                        if (memberBean.getDob().before(calendar.getTime())) {
                            arrayList3.add(notificationMobDataBean2);
                            break;
                        } else {
                            strConvertDateToString = notificationMobDataBean2.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean2.getExpectedDueDate().longValue(), false, false, true) : "";
                            String str = (notificationMobDataBean2.getCustomField() == null || notificationMobDataBean2.getCustomField().equals("0")) ? null : UtilBean.getMyLabel(LabelConstants.VISIT) + " " + notificationMobDataBean2.getCustomField();
                            Set<String> dueImmunisationsForChild = this.immunisationService.getDueImmunisationsForChild(memberBean.getDob(), memberBean.getImmunisationGiven(), new Date(), null);
                            if (dueImmunisationsForChild != null && !dueImmunisationsForChild.isEmpty()) {
                                Iterator<String> it = dueImmunisationsForChild.iterator();
                                while (it.hasNext()) {
                                    sb.append(UtilBean.getMyLabel(it.next().trim()));
                                    sb.append(", ");
                                }
                            } else {
                                sb = new StringBuilder(UtilBean.getMyLabel(LabelConstants.NO_DUE_VACCINES));
                            }
                            arrayList.add(new ListItemDataBean(strConvertDateToString.isEmpty() ? null : strConvertDateToString, memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), str, LabelConstants.DUE_VACCINES, sb.substring(0, sb.length() - 2), notificationMobDataBean2.getOverdueFlag().booleanValue()));
                            break;
                        }
                    }
                case 2:
                    if (memberBean == null) {
                        arrayList3.add(notificationMobDataBean2);
                        break;
                    } else if (memberBean.getIsPregnantFlag() != null && memberBean.getIsPregnantFlag().booleanValue()) {
                        arrayList3.add(notificationMobDataBean2);
                        break;
                    } else {
                        strConvertDateToString = notificationMobDataBean2.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean2.getExpectedDueDate().longValue(), false, false, true) : "";
                        arrayList.add(new ListItemDataBean(strConvertDateToString.isEmpty() ? null : strConvertDateToString, memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), (notificationMobDataBean2.getCustomField() == null || notificationMobDataBean2.getCustomField().equals("0")) ? null : UtilBean.getMyLabel(LabelConstants.VISIT) + " " + notificationMobDataBean2.getCustomField(), notificationMobDataBean2.getOverdueFlag().booleanValue()));
                        break;
                    }
                default:
                    if (memberBean == null) {
                        arrayList3.add(notificationMobDataBean2);
                        break;
                    } else {
                        strConvertDateToString = notificationMobDataBean2.getExpectedDueDate() != null ? UtilBean.convertDateToString(notificationMobDataBean2.getExpectedDueDate().longValue(), false, false, true) : "";
                        arrayList.add(new ListItemDataBean(strConvertDateToString.isEmpty() ? null : strConvertDateToString, memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), (notificationMobDataBean2.getCustomField() == null || notificationMobDataBean2.getCustomField().equals("0")) ? null : UtilBean.getMyLabel(LabelConstants.VISIT) + " " + notificationMobDataBean2.getCustomField(), notificationMobDataBean2.getOverdueFlag().booleanValue()));
                        break;
                    }
                    break;
            }
        }
        this.notificationBeanList.removeAll(arrayList3);
        return arrayList;
    }

    public void showReadOnlyNotification() {
        this.screenName = READ_ONLY_NOTIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, this.selectedNotification.getOtherDetails()));
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.MARK_AS_READ));
        final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    NotificationAshaActivity.this.alertDialog.dismiss();
                    NotificationAshaActivity.this.fhsService.markNotificationAsRead(NotificationAshaActivity.this.selectedNotification);
                    NotificationAshaActivity.this.bodyLayoutContainer.removeAllViews();
                    NotificationAshaActivity.this.showProcessDialog();
                    LinearLayout linearLayout = NotificationAshaActivity.this.bodyLayoutContainer;
                    NotificationAshaActivity notificationAshaActivity = NotificationAshaActivity.this;
                    linearLayout.addView(notificationAshaActivity.lastUpdateLabelView(notificationAshaActivity.sewaService, NotificationAshaActivity.this.bodyLayoutContainer));
                    NotificationAshaActivity.this.addSearchTextBox();
                    NotificationAshaActivity notificationAshaActivity2 = NotificationAshaActivity.this;
                    notificationAshaActivity2.retrieveNotificationListFromDB(notificationAshaActivity2.selectedNotificationCode, null);
                    NotificationAshaActivity.this.nextButton.setText("Next");
                    NotificationAshaActivity.this.nextButton.setOnClickListener(NotificationAshaActivity.this.onClickListener);
                    return;
                }
                NotificationAshaActivity.this.alertDialog.dismiss();
            }
        };
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NotificationAshaActivity.this.alertDialog = new MyAlertDialog(NotificationAshaActivity.this.context, LabelConstants.CONFORMATION_TO_MARK_NOTIFICATION_AS_READ, onClickListener, DynamicUtils.BUTTON_YES_NO);
                NotificationAshaActivity.this.alertDialog.show();
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_NOTIFICATION_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    NotificationAshaActivity.this.alertDialog.dismiss();
                    NotificationAshaActivity.this.navigateToHomeScreen(false);
                    NotificationAshaActivity.this.finish();
                    return;
                }
                NotificationAshaActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    private void startDynamicFormActivity() {
        showProcessDialog();
        String task = this.selectedNotification.getTask();
        try {
            MemberBean memberBean = this.memberMapWithActualIdAsKey.get(this.selectedNotification.getMemberId());
            if (memberBean != null) {
                this.formMetaDataUtil.setMetaDataForRchFormByFormType(task, memberBean.getActualId(), memberBean.getFamilyId(), this.selectedNotification, PreferenceManager.getDefaultSharedPreferences(this));
            }
            if (task != null) {
                Intent intent = new Intent(this.context, (Class<?>) DynamicFormActivity_.class);
                intent.putExtra("entity", task);
                startActivityForResult(intent, REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue());
            }
            hideProcessDialog();
        } catch (DataException unused) {
            hideProcessDialog();
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NotificationAshaActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NotificationAshaActivity.this.alertDialog.dismiss();
                    NotificationAshaActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.offset = 0L;
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue()) {
            try {
                List<NotificationMobDataBean> listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(null, this.selectedAreaIds, this.selectedNotificationCode, null, LIMIT, this.offset);
                this.notificationBeanList = listRetrieveNotificationsForUser;
                this.offset += LIMIT;
                if (listRetrieveNotificationsForUser != null && !listRetrieveNotificationsForUser.isEmpty()) {
                    this.bodyLayoutContainer.removeAllViews();
                    showProcessDialog();
                    LinearLayout linearLayout = this.bodyLayoutContainer;
                    linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
                    addSearchTextBox();
                    this.selectedNotification = null;
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
        if (i == REQUEST_CODE_FOR_OTHER_NOTIFICATION_ACTIVITY.intValue()) {
            addNotificationTypeScreen();
        } else {
            navigateToHomeScreen(false);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        this.selectedNotificationTypeIndex = -1;
        String str = this.screenName;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        this.footerView.setVisibility(0);
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        String str2 = this.screenName;
        str2.hashCode();
        switch (str2) {
            case "NotificationSelectionScreen":
                this.offset = 0L;
                showProcessDialog();
                retrieveCountsForEachNotificationType();
                this.nextButton.setText("Next");
                return true;
            case "ReadOnlyNotificationScreen":
                this.bodyLayoutContainer.removeAllViews();
                showProcessDialog();
                LinearLayout linearLayout = this.bodyLayoutContainer;
                linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
                addSearchTextBox();
                retrieveNotificationListFromDB(this.selectedNotificationCode, null);
                this.nextButton.setText("Next");
                this.nextButton.setOnClickListener(this);
                return true;
            case "NotificationTypeSelectionScreen":
                if (this.isFromLogin) {
                    navigateToHomeScreen(false);
                    return true;
                }
                if (this.ashaAreaList.size() == 1 || this.ashaAreaList.isEmpty()) {
                    finish();
                } else {
                    this.bodyLayoutContainer.removeAllViews();
                    addAshaAreaSelectionSpinner();
                }
                this.selectedAreaIds.clear();
                return true;
            case "AreaSelectionScreen":
                finish();
                return true;
            default:
                return true;
        }
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<NotificationMobDataBean> listRetrieveNotificationsForUser;
        try {
            listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(null, this.selectedAreaIds, this.selectedNotificationCode, this.searchString, LIMIT, this.offset);
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
            listRetrieveNotificationsForUser = null;
        }
        this.offset += LIMIT;
        onLoadMoreUi(listRetrieveNotificationsForUser);
    }

    public void onLoadMoreUi(List<NotificationMobDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.notificationBeanList.addAll(list);
            this.offset += LIMIT;
            this.notificationListView.onFinishLoadingWithItem(true, addNotificationForLoop(list));
            return;
        }
        this.notificationListView.onFinishLoadingWithItem(false, null);
    }
}
