package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
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
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.AbhaCreationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class AbhaNumberActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final int LIMIT = 30;
    private static final String OPTION_SELECTION_SCREEN = "optionSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    AbhaCreationServiceImpl abhaCreationService;
    private Spinner areaSpinner;
    private LinearLayout bodyLayoutContainer;
    Dao<FamilyBean, Integer> familyBeansDao;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    private String locationId;
    LocationMasterServiceImpl locationService;
    Dao<MemberBean, Integer> memberBeansDao;
    private Intent myIntent;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableView;
    private PagingListView paginatedListView;
    private MaterialTextView pagingHeaderView;
    private String role;
    private String screen;
    private Integer selectedAshaArea;
    private FamilyDataBean selectedFamily;
    private MemberDataBean selectedMember;
    SewaServiceImpl sewaService;
    private Spinner spinner;
    Dao<StoreAnswerBean, Integer> storeAnswerBeanDao;
    TechoAshaServiceImpl techoAshaService;
    private Timer timer = new Timer();
    private List<LocationBean> locationBeans = new ArrayList();
    private List<FamilyDataBean> familyDataBeans = null;
    private int selectedFamilyIndex = -1;
    private int selectedMemberIndex = -1;
    private int offset = 0;
    private List<LocationBean> ashaAreaList = new ArrayList();

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
        setTitle(UtilBean.getTitleText(LabelConstants.HEALTH_ID_MANAGEMENT));
    }

    private void initView() {
        showProcessDialog();
        this.role = getIntent().getStringExtra(RelatedPropertyNameConstants.ROLE);
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        Button button = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.nextButton = button;
        button.setText(UtilBean.getMyLabel("Next"));
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        if (this.role.equals("ASHA")) {
            retrieveLocationsAssignedToUser();
        } else {
            setBodyDetail();
        }
    }

    public void retrieveLocationsAssignedToUser() {
        this.ashaAreaList = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        setBodyDetailForAsha();
    }

    public void setBodyDetailForAsha() {
        if (this.ashaAreaList.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            LinearLayout linearLayout = this.bodyLayoutContainer;
            linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
            this.screen = FAMILY_SELECTION_SCREEN;
            addSearchTextBox();
            addFamilyList();
            return;
        }
        if (this.ashaAreaList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    public void addAshaAreaSelectionSpinner() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        if (this.areaSpinner == null) {
            String[] strArr = new String[this.ashaAreaList.size()];
            Iterator<LocationBean> it = this.ashaAreaList.iterator();
            int i = 0;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            this.areaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        this.bodyLayoutContainer.addView(this.areaSpinner);
        hideProcessDialog();
    }

    public void retrieveFamilyListFromDBForAsha(String str) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (str == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForAbhaNumberByArea(Long.valueOf(this.selectedAshaArea.longValue()), 30L, this.offset);
            this.offset += 30;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForFHSByArea(Long.valueOf(this.selectedAshaArea.longValue()), str);
        }
        setFamilySelectionScreen(str != null);
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.locationBeans = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.locationId = this.locationBeans.get(0).getActualID().toString();
            this.screen = FAMILY_SELECTION_SCREEN;
            addSearchTextBox();
            addFamilyList();
            return;
        }
        if (this.locationBeans.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.screen = VILLAGE_SELECTION_SCREEN;
            addVillageSelectionSpinner();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.onClick(android.view.View):void");
    }

    public void addSearchTextBox() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 10);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass1(editText));
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.AbhaNumberActivity$1, reason: invalid class name */
    class AnonymousClass1 implements TextWatcher {
        final /* synthetic */ TextInputLayout val$editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass1(TextInputLayout textInputLayout) {
            this.val$editText = textInputLayout;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            AbhaNumberActivity.this.timer.cancel();
            AbhaNumberActivity.this.timer = new Timer();
            AbhaNumberActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.1.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        AbhaNumberActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AbhaNumberActivity.this.role.equals("ASHA")) {
                                    AbhaNumberActivity.this.retrieveFamilyListFromDBForAsha(charSequence.toString());
                                } else {
                                    AbhaNumberActivity.this.retrieveFamilyListFromDB(charSequence.toString());
                                }
                                AnonymousClass1.this.val$editText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        AbhaNumberActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.1.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AbhaNumberActivity.this.showProcessDialog();
                                if (AbhaNumberActivity.this.role.equals("ASHA")) {
                                    AbhaNumberActivity.this.retrieveFamilyListFromDBForAsha(null);
                                } else {
                                    AbhaNumberActivity.this.retrieveFamilyListFromDB(null);
                                }
                                AnonymousClass1.this.val$editText.clearFocus();
                            }
                        });
                    }
                }
            }, AbhaNumberActivity.DELAY);
        }
    }

    private void reFetchMemberList() {
        this.bodyLayoutContainer.removeAllViews();
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(this.selectedMember.getFamilyId());
        this.selectedFamily = familyDataBeanRetrieveFamilyDataBeanByFamilyId;
        addSelectedFamilyDetails(familyDataBeanRetrieveFamilyDataBeanByFamilyId);
        this.screen = OPTION_SELECTION_SCREEN;
    }

    private void addFamilyList() {
        if (this.role.equals("ASHA")) {
            retrieveFamilyListFromDBForAsha(null);
        } else {
            retrieveFamilyListFromDB(null);
        }
    }

    public void addVillageSelectionSpinner() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        String[] strArr = new String[this.locationBeans.size()];
        Iterator<LocationBean> it = this.locationBeans.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        String str = this.locationId;
        if (str != null) {
            int i2 = Integer.parseInt(str);
            for (LocationBean locationBean : this.locationBeans) {
                if (locationBean.getActualID().intValue() == i2) {
                    this.spinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.spinner);
        hideProcessDialog();
    }

    public void retrieveFamilyListFromDB(String str) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (str == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForAbhaNumberByVillage(this.locationId, 30L, 0);
            this.offset += 30;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForCFHCByVillage(str, this.locationId, false);
        }
        setFamilySelectionScreen(str != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        List<FamilyDataBean> list = this.familyDataBeans;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            List<ListItemDataBean> familyList = getFamilyList(this.familyDataBeans);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    AbhaNumberActivity.this.selectedFamilyIndex = i;
                }
            };
            if (z) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_three_item, onItemClickListener, null);
            } else {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_three_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.paginatedListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AbhaNumberActivity.this.navigateToHomeScreen(false);
                }
            });
        }
        hideProcessDialog();
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
            String str = myLabel;
            if (FhsConstants.CFHC_VERIFIED_FAMILY_STATES.contains(familyDataBean.getState())) {
                arrayList2.add(new ListItemDataBean((String) null, familyDataBean.getFamilyId(), (String) null, (String) null, str, true, familyDataBean.getPendingAbhaCount()));
            } else {
                arrayList2.add(new ListItemDataBean((String) null, familyDataBean.getFamilyId(), (String) null, (String) null, str, false, familyDataBean.getPendingAbhaCount()));
            }
        }
        return arrayList2;
    }

    private List<ListItemDataBean> getMemberList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            String str = memberDataBean.getFirstName() + " ";
            String str2 = memberDataBean.getMiddleName() != null ? str + memberDataBean.getMiddleName() + " " + memberDataBean.getLastName() : str + memberDataBean.getLastName();
            boolean z = (memberDataBean.getHealthIdNumber() == null || memberDataBean.getHealthIdNumber().isEmpty()) ? false : true;
            if (FhsConstants.CFHC_VERIFIED_FAMILY_STATES.contains(memberDataBean.getState())) {
                arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), str2, true, z, memberDataBean.getHealthIdNumber()));
            } else {
                arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), str2, false, z, memberDataBean.getHealthIdNumber()));
            }
        }
        return arrayList;
    }

    private void addSelectedFamilyDetails(FamilyDataBean familyDataBean) {
        ArrayList arrayList = new ArrayList();
        setSubTitle(UtilBean.getMyLabel(LabelConstants.FAMILY_DETAILS));
        arrayList.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        if (arrayList.contains(familyDataBean.getState())) {
            familyDataBean.setMembers(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean.getFamilyId()));
        } else {
            familyDataBean.setMembers(this.fhsService.retrieveMemberDataBeansByFamily(familyDataBean.getFamilyId()));
        }
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateLabelView(this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
        detailsLayout.addView(MyStaticComponents.generateBoldAnswerView(this, familyDataBean.getFamilyId()));
        this.bodyLayoutContainer.addView(detailsLayout);
        if (familyDataBean.getMembers() != null && !familyDataBean.getMembers().isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.MEMBERS_INFO);
            this.pagingHeaderView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberList(familyDataBean.getMembers()), R.layout.listview_row_abha_number, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    AbhaNumberActivity.this.selectedMemberIndex = i;
                    AbhaNumberActivity abhaNumberActivity = AbhaNumberActivity.this;
                    abhaNumberActivity.selectedMember = abhaNumberActivity.selectedFamily.getMembers().get(AbhaNumberActivity.this.selectedMemberIndex);
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
        this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AbhaNumberActivity.this.onBackPressed();
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        MemberBean memberBeanQueryForFirst;
        super.onActivityResult(i, i2, intent);
        this.footerLayout.setVisibility(0);
        if (i == 1022) {
            this.selectedFamilyIndex = -1;
            if (i2 == -1) {
                this.locationId = intent.getStringExtra("locationId");
                showProcessDialog();
                this.screen = FAMILY_SELECTION_SCREEN;
                this.bodyLayoutContainer.removeAllViews();
                addSearchTextBox();
                addFamilyList();
                return;
            }
            finish();
            return;
        }
        if (i != 1020) {
            if (i == 1021) {
                if (intent != null && intent.getStringExtra("OfflineHealthIdBean") != null) {
                    if (this.selectedMember != null) {
                        try {
                            memberBeanQueryForFirst = this.memberBeansDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, this.selectedMember.getId()).queryForFirst();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                        this.abhaCreationService.createMigrationForOfflineAbha(intent.getStringExtra("OfflineHealthIdBean"), memberBeanQueryForFirst);
                    } else {
                        memberBeanQueryForFirst = null;
                        this.abhaCreationService.createMigrationForOfflineAbha(intent.getStringExtra("OfflineHealthIdBean"), memberBeanQueryForFirst);
                    }
                }
                handleBackClick();
                return;
            }
            return;
        }
        if (this.selectedMember == null) {
            handleBackClick();
            return;
        }
        if (intent != null && intent.getStringExtra("healthIdNumber") != null) {
            if (intent.getBooleanExtra("isFromOffline", false)) {
                try {
                    this.abhaCreationService.createMigrationForOfflineAbha(intent.getStringExtra("healthIdNumber"), this.memberBeansDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, this.selectedMember.getId()).queryForFirst());
                } catch (SQLException e2) {
                    e2.printStackTrace();
                }
            } else {
                try {
                    MemberBean memberBeanQueryForFirst2 = this.memberBeansDao.queryBuilder().where().eq(FieldNameConstants.ACTUAL_I_D, this.selectedMember.getId()).queryForFirst();
                    memberBeanQueryForFirst2.setHealthIdNumber(intent.getStringExtra("healthIdNumber"));
                    memberBeanQueryForFirst2.setHealthId(intent.getStringExtra("healthId"));
                    memberBeanQueryForFirst2.setUpdatedOn(new Date());
                    this.memberBeansDao.update((Dao<MemberBean, Integer>) memberBeanQueryForFirst2);
                    FamilyBean familyBeanQueryForFirst = this.familyBeansDao.queryBuilder().where().eq("familyId", this.selectedFamily.getFamilyId()).queryForFirst();
                    int pendingAbhaCount = familyBeanQueryForFirst.getPendingAbhaCount();
                    if (pendingAbhaCount > 0) {
                        familyBeanQueryForFirst.setPendingAbhaCount(pendingAbhaCount - 1);
                    }
                    this.familyBeansDao.update((Dao<FamilyBean, Integer>) familyBeanQueryForFirst);
                } catch (SQLException e3) {
                    e3.printStackTrace();
                }
            }
        }
        reFetchMemberList();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_HEALTH_ID_CREATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    AbhaNumberActivity.this.alertDialog.dismiss();
                    AbhaNumberActivity.this.navigateToHomeScreen(false);
                    AbhaNumberActivity.this.finish();
                    return;
                }
                AbhaNumberActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        if (this.screen.equals(FAMILY_SELECTION_SCREEN)) {
            onLoadMoreBackground();
        }
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForAbhaNumberByVillage;
        new ArrayList();
        if (this.role.equals("ASHA")) {
            listRetrieveFamilyDataBeansForAbhaNumberByVillage = this.fhsService.retrieveFamilyDataBeansForAbhaNumberByArea(Long.valueOf(this.selectedAshaArea.longValue()), 30L, this.offset);
        } else {
            listRetrieveFamilyDataBeansForAbhaNumberByVillage = this.fhsService.retrieveFamilyDataBeansForAbhaNumberByVillage(this.locationId, 30L, this.offset);
        }
        this.offset += 30;
        onLoadMoreUi(listRetrieveFamilyDataBeansForAbhaNumberByVillage);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            this.footerLayout.setVisibility(0);
            handleBackClick();
        }
        return true;
    }

    private void handleBackClick() {
        String str = this.screen;
        str.hashCode();
        if (str.equals(OPTION_SELECTION_SCREEN)) {
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBox();
            addFamilyList();
            this.screen = FAMILY_SELECTION_SCREEN;
            return;
        }
        if (str.equals(FAMILY_SELECTION_SCREEN)) {
            this.bodyLayoutContainer.removeAllViews();
            if (this.role.equals("ASHA")) {
                addAshaAreaSelectionSpinner();
                this.screen = ASHA_AREA_SELECTION_SCREEN;
                return;
            } else {
                addVillageSelectionSpinner();
                this.screen = VILLAGE_SELECTION_SCREEN;
                return;
            }
        }
        finish();
    }
}
