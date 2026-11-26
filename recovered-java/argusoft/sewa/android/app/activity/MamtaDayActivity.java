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
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class MamtaDayActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_MAMTA_DAY_ACTIVITY = 200;
    private static final String SERVICE_CHILDREN = "children";
    private static final String SERVICE_GAURAVI_DIWAS = "gauraviDiwas";
    private static final String SERVICE_PREGNANT_WOMEN = "pregnantWomen";
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private static final String VISIT_SELECTION_SCREEN = "visitSelectionScreen";
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private List<String> mapOfVisitFormWithRadioButtonId;
    Dao<MemberBean, Integer> memberBeanDao;
    private Map<Long, MemberBean> memberMapWithActualIdAsKey;
    private MyAlertDialog myAlertDialog;
    private MyAlertDialog myDialog;
    private Intent myIntent;
    private Button nextButton;
    private MaterialTextView noWomanView;
    private String notificationCodeChild;
    private String notificationCodePregnantWomen;
    NotificationServiceImpl notificationService;
    private long offset;
    private PagingListView paginatedListView;
    private String screen;
    private CharSequence searchString;
    private String selectedAshaArea;
    private Integer selectedLocationId;
    private String selectedService;
    private Integer selectedVillage;
    private MaterialTextView textView;
    private Spinner villageSpinner;
    private List<String> visits;
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<Integer> villageIds = new ArrayList();
    private MemberDataBean memberSelected = null;
    private List<NotificationMobDataBean> notificationList = new ArrayList();
    private Gson gson = new Gson();
    private Timer timer = new Timer();
    private Long role = -1L;
    private int selectedTypeIndex = -1;
    private int selectedMemberIndex = -1;
    private long limit = 30;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectedAshaAreas = (List) this.gson.fromJson(getIntent().getStringExtra(GlobalTypes.SELECTED_ASHA_AREAS), new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.1
        }.getType());
        String stringExtra = getIntent().getStringExtra(GlobalTypes.SELECTED_VILLAGE_IDS);
        this.role = Long.valueOf(getIntent().getLongExtra(RelatedPropertyNameConstants.ROLE, -1L));
        this.villageIds = (List) this.gson.fromJson(stringExtra, new TypeToken<List<Integer>>() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.2
        }.getType());
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
        setTitle(UtilBean.getTitleText(LabelConstants.MAMTA_DAY_TITLE));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_CLOSE_MAMTA_DAY_WORKPLAN, this, DynamicUtils.BUTTON_YES_NO);
        this.myDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MamtaDayActivity.onClick(android.view.View):void");
    }

    public void retrieveMemberListByServiceType(String str, CharSequence charSequence, boolean z) {
        this.searchString = charSequence;
        this.selectedMemberIndex = -1;
        try {
            if (this.role.longValue() == 24) {
                this.notificationCodePregnantWomen = FormConstants.ASHA_ANC;
                this.notificationCodeChild = FormConstants.ASHA_CS;
            } else {
                this.notificationCodePregnantWomen = "FHW_ANC";
                this.notificationCodeChild = "FHW_CS";
            }
            this.offset = 0L;
            if (SERVICE_PREGNANT_WOMEN.equals(str)) {
                this.notificationList = this.notificationService.retrieveNotificationsForUser(this.villageIds, this.selectedAshaAreas, this.notificationCodePregnantWomen, charSequence, this.limit, this.offset);
            } else if (SERVICE_CHILDREN.equals(str)) {
                this.notificationList = this.notificationService.retrieveNotificationsForUser(this.villageIds, this.selectedAshaAreas, this.notificationCodeChild, charSequence, this.limit, this.offset);
            }
            this.offset += this.limit;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        setMemberSelectionScreen(str, z);
    }

    public void setMemberSelectionScreen(String str, boolean z) {
        this.screen = MEMBER_SELECTION_SCREEN;
        if (SERVICE_PREGNANT_WOMEN.equals(str)) {
            addAncDueNotificationList();
        } else if (SERVICE_CHILDREN.equals(str)) {
            addChildServicesDueNotificationList();
        }
        if (this.notificationList.isEmpty()) {
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MamtaDayActivity.this.navigateToHomeScreen(false);
                }
            });
        } else {
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        }
        hideProcessDialog();
    }

    private void addAncDueNotificationList() {
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.textView);
        this.bodyLayoutContainer.removeView(this.noWomanView);
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : this.notificationList) {
            if (notificationMobDataBean.getMemberId() != null) {
                arrayList.add(notificationMobDataBean.getMemberId());
            }
        }
        this.memberMapWithActualIdAsKey = this.fhsService.retrieveMemberBeansMapByActualIds(arrayList);
        List<NotificationMobDataBean> list = this.notificationList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_A_PREGNANT_WOMEN);
            this.textView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getWomenList(this.notificationList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MamtaDayActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_PREGNANT_WOMEN_IN_AREA);
        this.noWomanView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
    }

    private List<ListItemDataBean> getWomenList(List<NotificationMobDataBean> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<NotificationMobDataBean> it = list.iterator();
        String str = null;
        while (it.hasNext()) {
            MemberBean memberBean = this.memberMapWithActualIdAsKey.get(it.next().getMemberId());
            if (memberBean != null) {
                if (memberBean.getImmunisationGiven() == null || memberBean.getImmunisationGiven().isEmpty()) {
                    str = LabelConstants.NO_TT_GIVEN;
                }
                arrayList.add(new ListItemDataBean(memberBean.getFamilyId(), memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), str, (String) null));
            }
        }
        return arrayList;
    }

    private void addChildServicesDueNotificationList() {
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.textView);
        this.bodyLayoutContainer.removeView(this.noWomanView);
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : this.notificationList) {
            if (notificationMobDataBean.getMemberId() != null) {
                arrayList.add(notificationMobDataBean.getMemberId());
            }
        }
        this.memberMapWithActualIdAsKey = this.fhsService.retrieveMemberBeansMapByActualIds(arrayList);
        List<NotificationMobDataBean> list = this.notificationList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_CHILD);
            this.textView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getChildrenList(this.notificationList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MamtaDayActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_CHILDREN_IN_YOUR_AREA);
        this.noWomanView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
    }

    private List<ListItemDataBean> getChildrenList(List<NotificationMobDataBean> list) {
        MemberBean memberBeanQueryForFirst;
        String memberFullName;
        ArrayList arrayList = new ArrayList();
        Iterator<NotificationMobDataBean> it = list.iterator();
        while (it.hasNext()) {
            MemberBean memberBean = this.memberMapWithActualIdAsKey.get(it.next().getMemberId());
            if (memberBean != null && memberBean.getMotherId() != null) {
                try {
                    memberBeanQueryForFirst = this.memberBeanDao.queryBuilder().where().eq("actualId", memberBean.getMotherId()).queryForFirst();
                } catch (SQLException e) {
                    Log.e(getClass().getName(), null, e);
                    memberBeanQueryForFirst = null;
                }
                if (memberBeanQueryForFirst == null) {
                    memberFullName = UtilBean.getMyLabel("Not available");
                } else {
                    memberFullName = UtilBean.getMemberFullName(memberBeanQueryForFirst);
                }
                arrayList.add(new ListItemDataBean(memberBean.getFamilyId(), memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), LabelConstants.MOTHER, memberFullName));
            }
        }
        return arrayList;
    }

    public void setVisitSelectionScreen(List<String> list) {
        this.screen = VISIT_SELECTION_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        this.mapOfVisitFormWithRadioButtonId = new ArrayList();
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(str))));
            this.mapOfVisitFormWithRadioButtonId.add(str);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                final String str2;
                if (i != -1 && (str2 = (String) MamtaDayActivity.this.mapOfVisitFormWithRadioButtonId.get(i)) != null) {
                    if (!str2.equals("FHW_WPD") || !Boolean.TRUE.equals(MamtaDayActivity.this.notificationService.checkIfThereArePendingNotificationsForMember(Long.valueOf(MamtaDayActivity.this.memberSelected.getId()), "FHW_ANC"))) {
                        MamtaDayActivity.this.startDynamicFormActivity(str2);
                    } else {
                        MamtaDayActivity.this.myAlertDialog = new MyAlertDialog(MamtaDayActivity.this.context, LabelConstants.PROCEED_FROM_WPD_WHILE_ANC_ALERTS_PENDING_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.6.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (view2.getId() == -1) {
                                    MamtaDayActivity.this.myAlertDialog.dismiss();
                                    MamtaDayActivity.this.startDynamicFormActivity(str2);
                                } else {
                                    MamtaDayActivity.this.myAlertDialog.dismiss();
                                }
                            }
                        }, DynamicUtils.BUTTON_YES_NO);
                        MamtaDayActivity.this.myAlertDialog.show();
                    }
                }
                MamtaDayActivity.this.footerView.setVisibility(0);
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDynamicFormActivity(String str) {
        showProcessDialog();
        try {
            if (Objects.equals(this.screen, VILLAGE_SELECTION_SCREEN)) {
                setMetaDataForGauraviDiwasForm(this.selectedLocationId, this.selectedAshaArea);
            } else {
                setMetadataForFormByFormType(str, this.memberSelected);
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            this.myIntent = intent;
            intent.putExtra("entity", str);
            startActivityForResult(this.myIntent, REQUEST_CODE_FOR_MAMTA_DAY_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MamtaDayActivity.this.alertDialog.dismiss();
                    MamtaDayActivity.this.navigateToHomeScreen(false);
                    MamtaDayActivity.this.finish();
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    private void setMetadataForFormByFormType(String str, MemberDataBean memberDataBean) {
        this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
    }

    public void setMetaDataForGauraviDiwasForm(Integer num, String str) {
        Calendar calendar = Calendar.getInstance();
        SharedStructureData.relatedPropertyHashTable.clear();
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SERVICE_DATE, String.valueOf(calendar.getTimeInMillis()));
        if (num != null) {
            SharedStructureData.relatedPropertyHashTable.put("locationId", num.toString());
        }
        if (str != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.ASHA_AREA, str);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        setContentView(new TextView(this));
        super.onSaveInstanceState(bundle);
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        Toolbar toolbar = (Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar);
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        setSupportActionBar(toolbar);
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        addServiceSelectionScreen();
    }

    private void addServiceSelectionScreen() {
        this.screen = SERVICE_SELECTION_SCREEN;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean("Pregnant Women"));
        arrayList.add(new ListItemDataBean("Children"));
        arrayList.add(new ListItemDataBean(LabelConstants.GAURAVI_DIWAS));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MamtaDayActivity.this.selectedTypeIndex = i;
                MamtaDayActivity mamtaDayActivity = MamtaDayActivity.this;
                mamtaDayActivity.onClick(mamtaDayActivity.nextButton);
                MamtaDayActivity.this.footerView.setVisibility(0);
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_MAMTA_DAY_ACTIVITY.intValue()) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            addServiceSelectionScreen();
            hideProcessDialog();
            return;
        }
        finish();
    }

    private void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass9());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MamtaDayActivity$9, reason: invalid class name */
    class AnonymousClass9 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass9() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            MamtaDayActivity.this.timer.cancel();
            MamtaDayActivity.this.timer = new Timer();
            MamtaDayActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.9.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MamtaDayActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.9.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MamtaDayActivity.this.retrieveMemberListByServiceType(MamtaDayActivity.this.selectedService, charSequence, true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        MamtaDayActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.9.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MamtaDayActivity.this.showProcessDialog();
                                MamtaDayActivity.this.retrieveMemberListByServiceType(MamtaDayActivity.this.selectedService, null, false);
                            }
                        });
                    }
                }
            }, MamtaDayActivity.DELAY);
        }
    }

    public void addVillageSelectionSpinner() {
        setSubTitle(null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        String[] strArr = new String[this.villageList.size()];
        Iterator<LocationBean> it = this.villageList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                MamtaDayActivity.this.bodyLayoutContainer.removeView(MamtaDayActivity.this.ashaAreaSpinner);
                MamtaDayActivity mamtaDayActivity = MamtaDayActivity.this;
                mamtaDayActivity.ashaAreaList = mamtaDayActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) MamtaDayActivity.this.villageList.get(i2)).getActualID());
                MamtaDayActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_ASHA_AREA)));
    }

    public void addAshaAreaSelectionSpinner() {
        this.screen = VILLAGE_SELECTION_SCREEN;
        String[] strArr = new String[this.ashaAreaList.size()];
        strArr[0] = LabelConstants.ALL;
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        this.ashaAreaSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity.11
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                MamtaDayActivity mamtaDayActivity = MamtaDayActivity.this;
                mamtaDayActivity.selectedAshaArea = mamtaDayActivity.ashaAreaSpinner.getSelectedItem().toString();
                if (MamtaDayActivity.this.selectedAshaArea.contains(" - ")) {
                    MamtaDayActivity mamtaDayActivity2 = MamtaDayActivity.this;
                    mamtaDayActivity2.selectedAshaArea = mamtaDayActivity2.selectedAshaArea.split(" - ")[0].trim();
                }
                MamtaDayActivity mamtaDayActivity3 = MamtaDayActivity.this;
                mamtaDayActivity3.selectedLocationId = ((LocationBean) mamtaDayActivity3.ashaAreaList.get(i2)).getActualID();
            }
        });
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        hideProcessDialog();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r5) {
        /*
            r4 = this;
            super.onOptionsItemSelected(r5)
            java.lang.String r0 = r4.screen
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lb5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Lb5
        L11:
            int r5 = r5.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r5 != r0) goto Lb4
            java.lang.String r5 = r4.screen
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case -1531358265: goto L55;
                case -329684276: goto L4a;
                case 242061389: goto L3f;
                case 754789150: goto L34;
                case 2126435747: goto L29;
                default: goto L27;
            }
        L27:
            r5 = -1
            goto L5f
        L29:
            java.lang.String r0 = "serviceSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L32
            goto L27
        L32:
            r5 = 4
            goto L5f
        L34:
            java.lang.String r0 = "memberSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3d
            goto L27
        L3d:
            r5 = 3
            goto L5f
        L3f:
            java.lang.String r0 = "visitSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L48
            goto L27
        L48:
            r5 = 2
            goto L5f
        L4a:
            java.lang.String r0 = "villageSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L53
            goto L27
        L53:
            r5 = 1
            goto L5f
        L55:
            java.lang.String r0 = "gauraviDiwas"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L5e
            goto L27
        L5e:
            r5 = 0
        L5f:
            java.lang.String r0 = "Next"
            switch(r5) {
                case 0: goto L9d;
                case 1: goto L85;
                case 2: goto L69;
                case 3: goto L85;
                case 4: goto L65;
                default: goto L64;
            }
        L64:
            goto Lb4
        L65:
            r4.finish()
            goto Lb4
        L69:
            r4.showProcessDialog()
            android.widget.LinearLayout r5 = r4.footerView
            r5.setVisibility(r2)
            r5 = 0
            r4.setSubTitle(r5)
            r4.selectedMemberIndex = r3
            android.widget.LinearLayout r0 = r4.bodyLayoutContainer
            r0.removeAllViews()
            r4.addSearchTextBox()
            java.lang.String r0 = r4.selectedService
            r4.retrieveMemberListByServiceType(r0, r5, r2)
            goto Lb4
        L85:
            r4.showProcessDialog()
            r4.selectedTypeIndex = r3
            android.widget.LinearLayout r5 = r4.bodyLayoutContainer
            r5.removeAllViews()
            r4.addServiceSelectionScreen()
            android.widget.Button r5 = r4.nextButton
            r5.setText(r0)
            android.widget.Button r5 = r4.nextButton
            r5.setOnClickListener(r4)
            goto Lb4
        L9d:
            r4.showProcessDialog()
            r4.selectedTypeIndex = r3
            android.widget.LinearLayout r5 = r4.bodyLayoutContainer
            r5.removeAllViews()
            r4.addVillageSelectionSpinner()
            android.widget.Button r5 = r4.nextButton
            r5.setText(r0)
            android.widget.Button r5 = r4.nextButton
            r5.setOnClickListener(r4)
        Lb4:
            return r1
        Lb5:
            r4.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MamtaDayActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        try {
            if (SERVICE_PREGNANT_WOMEN.equals(this.selectedService)) {
                List<NotificationMobDataBean> listRetrieveNotificationsForUser = this.notificationService.retrieveNotificationsForUser(this.villageIds, this.selectedAshaAreas, this.notificationCodePregnantWomen, this.searchString, this.limit, this.offset);
                this.offset += this.limit;
                onLoadMoreUi(listRetrieveNotificationsForUser);
            } else if (SERVICE_CHILDREN.equals(this.selectedService)) {
                List<NotificationMobDataBean> listRetrieveNotificationsForUser2 = this.notificationService.retrieveNotificationsForUser(this.villageIds, this.selectedAshaAreas, this.notificationCodeChild, this.searchString, this.limit, this.offset);
                this.offset += this.limit;
                onLoadMoreUi(listRetrieveNotificationsForUser2);
            }
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void onLoadMoreUi(List<NotificationMobDataBean> list) {
        this.notificationList.addAll(list);
        ArrayList arrayList = new ArrayList();
        for (NotificationMobDataBean notificationMobDataBean : list) {
            if (notificationMobDataBean.getMemberId() != null) {
                arrayList.add(notificationMobDataBean.getMemberId());
            }
        }
        this.memberMapWithActualIdAsKey.putAll(this.fhsService.retrieveMemberBeansMapByActualIds(arrayList));
        if (!list.isEmpty()) {
            if (SERVICE_PREGNANT_WOMEN.equals(this.selectedService)) {
                this.paginatedListView.onFinishLoadingWithItem(true, getWomenList(list));
                return;
            } else {
                if (SERVICE_CHILDREN.equals(this.selectedService)) {
                    this.paginatedListView.onFinishLoadingWithItem(true, getChildrenList(list));
                    return;
                }
                return;
            }
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
