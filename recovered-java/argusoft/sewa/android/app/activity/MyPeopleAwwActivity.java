package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.ChildGrowthChartComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class MyPeopleAwwActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final String CHART_SELECTION_SCREEN = "chartSelectionScreen";
    private static final long DELAY = 500;
    private static final String MOTHER_OBJECT = "Mother";
    private static final String NO_DATA_SCREEN = "noDataScreen";
    private static final String PEOPLE_SELECTION_SCREEN = "peopleSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY = 200;
    private static final String SERVICE_ADOLESCENT_GIRLS = "adolescentGirls";
    private static final String SERVICE_CHILDREN = "childrenOf0to6years";
    private static final String SERVICE_ELIGIBLE_MOTHERS = "mothersWithLastDeliveryLessThan6Months";
    private static final String SERVICE_PREGNANT_WOMEN = "pregnantWomen";
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private static final String VISIT_SELECTION_SCREEN = "visitSelectionScreen";
    private List<Integer> areas;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private List<String> mapOfVisitFormWithRadioButtonId;
    Dao<MemberBean, Integer> memberBeanDao;
    private MyAlertDialog myAlertDialog;
    private Intent myIntent;
    private Button nextButton;
    private MaterialTextView noMemberTextView;
    NotificationServiceImpl notificationService;
    private long offset;
    private PagingListView paginatedListView;
    private String screen;
    private CharSequence searchString;
    private Integer selectedAshaArea;
    private String selectedService;
    SewaServiceImpl sewaService;
    private MaterialTextView subtitleTextView;
    public TechoAshaServiceImpl techoAshaService;
    private List<String> visits;
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<MemberDataBean> memberList = new ArrayList();
    private MemberDataBean memberSelected = null;
    private Timer timer = new Timer();
    private int selectedServiceIndex = -1;
    private long limit = 30;
    private int selectedMemberIndex = -1;
    private int selectedVisitIndex = -1;

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
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> listRetrieveAshaAreasAssignedToUser = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        this.ashaAreaList = listRetrieveAshaAreasAssignedToUser;
        if (listRetrieveAshaAreasAssignedToUser.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            setServiceSelectionScreen();
        } else if (this.ashaAreaList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001f  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r9) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.onClick(android.view.View):void");
    }

    public void addVisitSelectionScreen() {
        this.visits = new ArrayList();
        if (SERVICE_CHILDREN.equals(this.selectedService)) {
            this.visits.add(FormConstants.TECHO_AWW_CS);
            this.visits.add(FormConstants.TECHO_AWW_WEIGHT_GROWTH_GRAPH);
            this.bodyLayoutContainer.removeAllViews();
            setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
            setVisitSelectionScreen();
            return;
        }
        this.alertDialog = new MyAlertDialog(this, LabelConstants.SERVICE_IS_TEMPORARY_BLOCKED, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyPeopleAwwActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_OK);
        this.alertDialog.show();
    }

    public void addGraph(String str) {
        this.screen = CHART_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(new ChildGrowthChartComponent(this.context, new MemberBean(this.memberSelected)));
    }

    public void addAshaAreaSelectionSpinner() {
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        String[] strArr = new String[this.ashaAreaList.size()];
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.ashaAreaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        if (this.selectedAshaArea != null) {
            for (LocationBean locationBean : this.ashaAreaList) {
                if (locationBean.getActualID().intValue() == this.selectedAshaArea.intValue()) {
                    this.ashaAreaSpinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        hideProcessDialog();
    }

    public void setServiceSelectionScreen() {
        this.screen = SERVICE_SELECTION_SCREEN;
        ArrayList arrayList = new ArrayList();
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_TYPE_SELECTION));
        arrayList.add(new ListItemDataBean(LabelConstants.SERVICE_CHILDREN_OF_AGE_0_TO_6_YEARS));
        arrayList.add(new ListItemDataBean("Pregnant Women"));
        arrayList.add(new ListItemDataBean(LabelConstants.SERVICE_MOTHERS_WITH_LAST_DELIVERY_BEFORE_6_MONTHS));
        arrayList.add(new ListItemDataBean(LabelConstants.SERVICE_ADOLESCENT_GIRLS));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MyPeopleAwwActivity.this.selectedServiceIndex = i;
                MyPeopleAwwActivity myPeopleAwwActivity = MyPeopleAwwActivity.this;
                myPeopleAwwActivity.onClick(myPeopleAwwActivity.nextButton);
                MyPeopleAwwActivity.this.footerView.setVisibility(0);
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    public void addSearchTextBox() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass4());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity$4, reason: invalid class name */
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
            MyPeopleAwwActivity.this.timer.cancel();
            MyPeopleAwwActivity.this.timer = new Timer();
            MyPeopleAwwActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.4.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MyPeopleAwwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MyPeopleAwwActivity.this.retrieveMemberListByServiceType(MyPeopleAwwActivity.this.selectedService, charSequence, true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        MyPeopleAwwActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.4.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MyPeopleAwwActivity.this.showProcessDialog();
                                MyPeopleAwwActivity.this.retrieveMemberListByServiceType(MyPeopleAwwActivity.this.selectedService, null, false);
                            }
                        });
                    }
                }
            }, MyPeopleAwwActivity.DELAY);
        }
    }

    public void retrieveMemberListByServiceType(String str, CharSequence charSequence, Boolean bool) {
        this.offset = 0L;
        this.searchString = charSequence;
        this.selectedMemberIndex = -1;
        str.hashCode();
        switch (str) {
            case "mothersWithLastDeliveryLessThan6Months":
                this.memberList = this.fhsService.retrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea(this.selectedAshaArea, charSequence, this.limit, this.offset);
                this.offset += this.limit;
                break;
            case "childrenOf0to6years":
                this.memberList = this.fhsService.retrieveChildsBelow6YearsByAshaArea(this.selectedAshaArea, charSequence, this.limit, this.offset);
                this.offset += this.limit;
                break;
            case "adolescentGirls":
                this.memberList = this.fhsService.retrieveAdolescentGirlsByAshaArea(this.selectedAshaArea, charSequence, this.limit, this.offset);
                this.offset += this.limit;
                break;
            case "pregnantWomen":
                LinkedList linkedList = new LinkedList();
                this.areas = linkedList;
                linkedList.add(this.selectedAshaArea);
                this.memberList = this.fhsService.retrievePregnantWomenByAshaArea(this.areas, false, new LinkedList(), charSequence, this.limit, this.offset);
                this.offset += this.limit;
                break;
        }
        setMemberSelectionScreen(str, bool);
    }

    public void setMemberSelectionScreen(String str, Boolean bool) {
        str.hashCode();
        switch (str) {
            case "mothersWithLastDeliveryLessThan6Months":
                addEligibleMothersList();
                break;
            case "childrenOf0to6years":
                addChildsBelow6YearsList();
                break;
            case "adolescentGirls":
                addAdolescentGirlsList();
                break;
            case "pregnantWomen":
                addPregnantWomenList();
                break;
        }
        hideProcessDialog();
    }

    private void addEligibleMothersList() {
        this.bodyLayoutContainer.removeView(this.subtitleTextView);
        this.bodyLayoutContainer.removeView(this.noMemberTextView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MOTHER);
            this.subtitleTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMothersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MyPeopleAwwActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MOTHERS_WITH_LAST_DELIVERY_BEFORE_6_MONTHS_ALERT);
        this.noMemberTextView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    private void addPregnantWomenList() {
        this.bodyLayoutContainer.removeView(this.subtitleTextView);
        this.bodyLayoutContainer.removeView(this.noMemberTextView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, "Select a Pregnant Women");
            this.subtitleTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMothersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.6
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MyPeopleAwwActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_PREGNANT_WOMEN_IN_AREA);
        this.noMemberTextView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    private List<ListItemDataBean> getMothersList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
        }
        return arrayList;
    }

    private void addAdolescentGirlsList() {
        this.bodyLayoutContainer.removeView(this.subtitleTextView);
        this.bodyLayoutContainer.removeView(this.noMemberTextView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_ADOLESCENT_GIRL);
            this.subtitleTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getAdolescentGirlsList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.7
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MyPeopleAwwActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_ADOLESCENT_GIRLS_IN_YOUR_AREA);
        this.noMemberTextView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.argusoft.sewa.android.app.databean.ListItemDataBean> getAdolescentGirlsList(java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r11) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r11 = r11.iterator()
        Le:
            boolean r2 = r11.hasNext()
            if (r2 == 0) goto L77
            java.lang.Object r2 = r11.next()
            com.argusoft.sewa.android.app.databean.MemberDataBean r2 = (com.argusoft.sewa.android.app.databean.MemberDataBean) r2
            java.lang.String r3 = r2.getUniqueHealthId()
            if (r3 == 0) goto L73
            java.lang.Long r3 = r2.getMotherId()
            if (r3 == 0) goto L4b
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r3 = r10.memberBeanDao     // Catch: java.sql.SQLException -> L41
            com.j256.ormlite.stmt.QueryBuilder r3 = r3.queryBuilder()     // Catch: java.sql.SQLException -> L41
            com.j256.ormlite.stmt.Where r3 = r3.where()     // Catch: java.sql.SQLException -> L41
            java.lang.String r4 = "actualId"
            java.lang.Long r5 = r2.getMotherId()     // Catch: java.sql.SQLException -> L41
            com.j256.ormlite.stmt.Where r3 = r3.eq(r4, r5)     // Catch: java.sql.SQLException -> L41
            java.lang.Object r3 = r3.queryForFirst()     // Catch: java.sql.SQLException -> L41
            com.argusoft.sewa.android.app.model.MemberBean r3 = (com.argusoft.sewa.android.app.model.MemberBean) r3     // Catch: java.sql.SQLException -> L41
            goto L4c
        L41:
            r3 = move-exception
            java.lang.String r4 = "+++++++++++++"
            java.lang.String r3 = r3.getMessage()
            android.util.Log.d(r4, r3)
        L4b:
            r3 = 0
        L4c:
            if (r3 != 0) goto L55
            java.lang.String r3 = "Not available"
            java.lang.String r3 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r3)
            goto L59
        L55:
            java.lang.String r3 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r3)
        L59:
            r9 = r3
            com.argusoft.sewa.android.app.databean.ListItemDataBean r3 = new com.argusoft.sewa.android.app.databean.ListItemDataBean
            java.lang.String r6 = r2.getUniqueHealthId()
            java.lang.String r7 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r2)
            java.lang.String r2 = "Mother"
            java.lang.String r8 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r2)
            r5 = 0
            r4 = r3
            r4.<init>(r5, r6, r7, r8, r9)
            r0.add(r3)
            goto Le
        L73:
            r1.add(r2)
            goto Le
        L77:
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r11 = r10.memberList
            r11.removeAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.getAdolescentGirlsList(java.util.List):java.util.List");
    }

    private void addChildsBelow6YearsList() {
        this.bodyLayoutContainer.removeView(this.subtitleTextView);
        this.bodyLayoutContainer.removeView(this.noMemberTextView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_CHILD);
            this.subtitleTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getChildrenList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.8
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MyPeopleAwwActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_CHILDREN_OF_AGE_0_TO_6_YEARS_ALERT);
        this.noMemberTextView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.argusoft.sewa.android.app.databean.ListItemDataBean> getChildrenList(java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r11) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r11 = r11.iterator()
        Le:
            boolean r2 = r11.hasNext()
            if (r2 == 0) goto L77
            java.lang.Object r2 = r11.next()
            com.argusoft.sewa.android.app.databean.MemberDataBean r2 = (com.argusoft.sewa.android.app.databean.MemberDataBean) r2
            java.lang.String r3 = r2.getUniqueHealthId()
            if (r3 == 0) goto L73
            java.lang.Long r3 = r2.getMotherId()
            if (r3 == 0) goto L4b
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.MemberBean, java.lang.Integer> r3 = r10.memberBeanDao     // Catch: java.sql.SQLException -> L41
            com.j256.ormlite.stmt.QueryBuilder r3 = r3.queryBuilder()     // Catch: java.sql.SQLException -> L41
            com.j256.ormlite.stmt.Where r3 = r3.where()     // Catch: java.sql.SQLException -> L41
            java.lang.String r4 = "actualId"
            java.lang.Long r5 = r2.getMotherId()     // Catch: java.sql.SQLException -> L41
            com.j256.ormlite.stmt.Where r3 = r3.eq(r4, r5)     // Catch: java.sql.SQLException -> L41
            java.lang.Object r3 = r3.queryForFirst()     // Catch: java.sql.SQLException -> L41
            com.argusoft.sewa.android.app.model.MemberBean r3 = (com.argusoft.sewa.android.app.model.MemberBean) r3     // Catch: java.sql.SQLException -> L41
            goto L4c
        L41:
            r3 = move-exception
            java.lang.String r4 = "++++++++++++++++++"
            java.lang.String r3 = r3.getMessage()
            android.util.Log.d(r4, r3)
        L4b:
            r3 = 0
        L4c:
            if (r3 != 0) goto L55
            java.lang.String r3 = "Not available"
            java.lang.String r3 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r3)
            goto L59
        L55:
            java.lang.String r3 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r3)
        L59:
            r9 = r3
            com.argusoft.sewa.android.app.databean.ListItemDataBean r3 = new com.argusoft.sewa.android.app.databean.ListItemDataBean
            java.lang.String r6 = r2.getUniqueHealthId()
            java.lang.String r7 = com.argusoft.sewa.android.app.util.UtilBean.getMemberFullName(r2)
            java.lang.String r2 = "Mother"
            java.lang.String r8 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r2)
            r5 = 0
            r4 = r3
            r4.<init>(r5, r6, r7, r8, r9)
            r1.add(r3)
            goto Le
        L73:
            r0.add(r2)
            goto Le
        L77:
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r11 = r10.memberList
            r11.removeAll(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.getChildrenList(java.util.List):java.util.List");
    }

    public void setVisitSelectionScreen() {
        this.screen = VISIT_SELECTION_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        this.mapOfVisitFormWithRadioButtonId = new ArrayList();
        ArrayList arrayList = new ArrayList();
        for (String str : this.visits) {
            arrayList.add(new ListItemDataBean(UtilBean.getFullFormOfEntity().get(str)));
            this.mapOfVisitFormWithRadioButtonId.add(str);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MyPeopleAwwActivity.this.selectedVisitIndex = i;
                MyPeopleAwwActivity myPeopleAwwActivity = MyPeopleAwwActivity.this;
                myPeopleAwwActivity.onClick(myPeopleAwwActivity.nextButton);
            }
        }, null));
        this.footerView.setVisibility(8);
    }

    public void showNotOnlineMessage() {
        if (this.sewaService.isOnline()) {
            return;
        }
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyPeopleAwwActivity.this.myAlertDialog.dismiss();
                MyPeopleAwwActivity.this.showProcessDialog();
                MyPeopleAwwActivity.this.bodyLayoutContainer.removeAllViews();
                MyPeopleAwwActivity.this.memberList.clear();
                MyPeopleAwwActivity.this.setServiceSelectionScreen();
                MyPeopleAwwActivity.this.nextButton.setText(UtilBean.getMyLabel("Next"));
                MyPeopleAwwActivity.this.nextButton.setOnClickListener(MyPeopleAwwActivity.this);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
        this.myAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.11
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                MyPeopleAwwActivity.this.myAlertDialog.dismiss();
                MyPeopleAwwActivity.this.showProcessDialog();
                MyPeopleAwwActivity.this.bodyLayoutContainer.removeAllViews();
                MyPeopleAwwActivity.this.memberList.clear();
                MyPeopleAwwActivity.this.setServiceSelectionScreen();
                MyPeopleAwwActivity.this.nextButton.setText(UtilBean.getMyLabel("Next"));
                MyPeopleAwwActivity.this.nextButton.setOnClickListener(MyPeopleAwwActivity.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMetadataForFormByFormType(String str, MemberDataBean memberDataBean) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (!str.equals(FormConstants.FHS_MEMBER_UPDATE)) {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), null, defaultSharedPreferences);
        } else {
            this.formMetaDataUtil.setMetaDataForMemberUpdateForm(memberDataBean, this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId()), defaultSharedPreferences);
        }
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
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_MY_PEOPLE_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MyPeopleAwwActivity.this.myAlertDialog.dismiss();
                    MyPeopleAwwActivity.this.navigateToHomeScreen(false);
                    MyPeopleAwwActivity.this.finish();
                    return;
                }
                MyPeopleAwwActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity$13] */
    public void startDynamicFormActivity(final String str) {
        showProcessDialog();
        this.myIntent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.13
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                MyPeopleAwwActivity myPeopleAwwActivity = MyPeopleAwwActivity.this;
                myPeopleAwwActivity.setMetadataForFormByFormType(str, myPeopleAwwActivity.memberSelected);
                MyPeopleAwwActivity.this.myIntent.putExtra("entity", str);
                MyPeopleAwwActivity myPeopleAwwActivity2 = MyPeopleAwwActivity.this;
                myPeopleAwwActivity2.startActivityForResult(myPeopleAwwActivity2.myIntent, MyPeopleAwwActivity.REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY.intValue());
                MyPeopleAwwActivity.this.showProcessDialog();
            }
        }.start();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY.intValue()) {
            this.memberList.clear();
            this.screen = PEOPLE_SELECTION_SCREEN;
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            setVisitSelectionScreen();
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r7) {
        /*
            r6 = this;
            super.onOptionsItemSelected(r7)
            java.lang.String r0 = r6.screen
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lca
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Lca
        L11:
            int r7 = r7.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r7 != r0) goto Lc9
            java.lang.String r7 = r6.screen
            r7.hashCode()
            int r0 = r7.hashCode()
            java.lang.String r3 = "peopleSelectionScreen"
            java.lang.String r4 = "ashaAreaSelectionScreen"
            r5 = -1
            switch(r0) {
                case -813922784: goto L57;
                case 242061389: goto L4c;
                case 326577498: goto L41;
                case 1850997385: goto L38;
                case 2126435747: goto L2d;
                default: goto L2b;
            }
        L2b:
            r7 = -1
            goto L5f
        L2d:
            java.lang.String r0 = "serviceSelectionScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L36
            goto L2b
        L36:
            r7 = 4
            goto L5f
        L38:
            boolean r7 = r7.equals(r3)
            if (r7 != 0) goto L3f
            goto L2b
        L3f:
            r7 = 3
            goto L5f
        L41:
            java.lang.String r0 = "chartSelectionScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L4a
            goto L2b
        L4a:
            r7 = 2
            goto L5f
        L4c:
            java.lang.String r0 = "visitSelectionScreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L55
            goto L2b
        L55:
            r7 = 1
            goto L5f
        L57:
            boolean r7 = r7.equals(r4)
            if (r7 != 0) goto L5e
            goto L2b
        L5e:
            r7 = 0
        L5f:
            switch(r7) {
                case 0: goto Lc5;
                case 1: goto La1;
                case 2: goto L9d;
                case 3: goto L7a;
                case 4: goto L63;
                default: goto L62;
            }
        L62:
            goto Lc8
        L63:
            android.widget.LinearLayout r7 = r6.footerView
            r7.setVisibility(r2)
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r7 = r6.ashaAreaList
            int r7 = r7.size()
            if (r7 != r1) goto L74
            r6.navigateToHomeScreen(r2)
            goto L77
        L74:
            r6.addAshaAreaSelectionSpinner()
        L77:
            r6.screen = r4
            goto Lc8
        L7a:
            r6.showProcessDialog()
            android.widget.LinearLayout r7 = r6.bodyLayoutContainer
            r7.removeAllViews()
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r7 = r6.memberList
            r7.clear()
            r6.selectedServiceIndex = r5
            r6.setServiceSelectionScreen()
            android.widget.Button r7 = r6.nextButton
            java.lang.String r0 = "Next"
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r7.setText(r0)
            android.widget.Button r7 = r6.nextButton
            r7.setOnClickListener(r6)
            goto Lc8
        L9d:
            r6.addVisitSelectionScreen()
            goto Lc8
        La1:
            r6.screen = r3
            r6.showProcessDialog()
            android.widget.LinearLayout r7 = r6.footerView
            r7.setVisibility(r2)
            android.widget.LinearLayout r7 = r6.bodyLayoutContainer
            r7.removeAllViews()
            r6.selectedMemberIndex = r5
            r7 = 0
            r6.setSubTitle(r7)
            r6.addSearchTextBox()
            java.lang.String r0 = r6.selectedService
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            r6.retrieveMemberListByServiceType(r0, r7, r2)
            r6.memberSelected = r7
            goto Lc8
        Lc5:
            r6.navigateToHomeScreen(r2)
        Lc8:
            return r1
        Lc9:
            return r2
        Lca:
            r6.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> listRetrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea;
        String str = this.selectedService;
        str.hashCode();
        switch (str) {
            case "mothersWithLastDeliveryLessThan6Months":
                listRetrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea = this.fhsService.retrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea(this.selectedAshaArea, this.searchString, this.limit, this.offset);
                this.offset += this.limit;
                break;
            case "childrenOf0to6years":
                listRetrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea = this.fhsService.retrieveChildsBelow6YearsByAshaArea(this.selectedAshaArea, this.searchString, this.limit, this.offset);
                this.offset += this.limit;
                break;
            case "adolescentGirls":
                listRetrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea = this.fhsService.retrieveAdolescentGirlsByAshaArea(this.selectedAshaArea, this.searchString, this.limit, this.offset);
                this.offset += this.limit;
                break;
            case "pregnantWomen":
                listRetrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea = this.fhsService.retrievePregnantWomenByAshaArea(this.areas, false, new LinkedList(), this.searchString, this.limit, this.offset);
                this.offset += this.limit;
                break;
            default:
                listRetrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea = null;
                break;
        }
        onLoadMoreUi(listRetrieveMothersWithLastDeliveryLessThan6MonthsByAshaArea);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLoadMoreUi(java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r7) {
        /*
            r6 = this;
            r0 = 0
            if (r7 == 0) goto L65
            boolean r1 = r7.isEmpty()
            if (r1 != 0) goto L65
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r1 = r6.memberList
            r1.addAll(r7)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r2 = r6.selectedService
            r2.hashCode()
            int r3 = r2.hashCode()
            r4 = 1
            r5 = -1
            switch(r3) {
                case -177072433: goto L44;
                case 862093397: goto L39;
                case 1124543073: goto L2e;
                case 1707929377: goto L23;
                default: goto L21;
            }
        L21:
            r0 = -1
            goto L4d
        L23:
            java.lang.String r0 = "pregnantWomen"
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto L2c
            goto L21
        L2c:
            r0 = 3
            goto L4d
        L2e:
            java.lang.String r0 = "adolescentGirls"
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto L37
            goto L21
        L37:
            r0 = 2
            goto L4d
        L39:
            java.lang.String r0 = "childrenOf0to6years"
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto L42
            goto L21
        L42:
            r0 = 1
            goto L4d
        L44:
            java.lang.String r3 = "mothersWithLastDeliveryLessThan6Months"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L4d
            goto L21
        L4d:
            switch(r0) {
                case 0: goto L5b;
                case 1: goto L56;
                case 2: goto L51;
                case 3: goto L5b;
                default: goto L50;
            }
        L50:
            goto L5f
        L51:
            java.util.List r1 = r6.getAdolescentGirlsList(r7)
            goto L5f
        L56:
            java.util.List r1 = r6.getChildrenList(r7)
            goto L5f
        L5b:
            java.util.List r1 = r6.getMothersList(r7)
        L5f:
            com.argusoft.sewa.android.app.component.PagingListView r7 = r6.paginatedListView
            r7.onFinishLoadingWithItem(r4, r1)
            goto L6b
        L65:
            com.argusoft.sewa.android.app.component.PagingListView r7 = r6.paginatedListView
            r1 = 0
            r7.onFinishLoadingWithItem(r0, r1)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleAwwActivity.onLoadMoreUi(java.util.List):void");
    }
}
