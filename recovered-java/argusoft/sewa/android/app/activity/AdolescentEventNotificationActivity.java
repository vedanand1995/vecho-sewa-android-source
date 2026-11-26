package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SchoolServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.AdolescentDataBean;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class AdolescentEventNotificationActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ADD_MEMBERS_OF_PARTICULAR_SCHOOL = "addMemberOfParticularSchool";
    private static final String ADVANCED_SEARCH_SCREEN_BASED_ON_REGION = "advancedSearchScreenBasedOnRegion";
    private static final long DELAY = 500;
    private static final long LIMIT = 30;
    private static final String OTHERS_SCREEN = "otherScreen";
    private static final String REGION_SELECTION_SCREEN = "regionSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY = 200;
    private static final String SCHOOL_OR_OTHERS_SCREEN = "schoolOrOtherSelectionScreen";
    private static final String SCHOOL_SELECTION_SCREEN = "schoolSelectionScreen";
    private static final String TAG = "NotificationActivity";
    private static final String VILLAGE_SELECTION_SCREEN_FOR_FETCHING_LOCAL_DATA = "villageSelectionScreenForFetchingLocalData";
    private static final String VILLAGE_SELECTION_SCREEN_FOR_STORING_FAMILY = "villageSelectionScreenForStoringFamily";
    private Spinner ashaAreaSpinner;
    private Spinner blockSpinner;
    private LinearLayout bodyLayoutContainer;
    private Spinner districtSpinner;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private LinearLayout hierarchyLayout;
    private MaterialTextView hierarchyTextView;
    private boolean isAddNewButtonShown;
    private boolean isAddNewMemberFlow;
    private boolean isAdvanceMemberSearchFlow;
    private boolean isSchoolFlow;
    private Button nextButton;
    private PagingListView notificationListView;
    NotificationServiceImpl notificationService;
    private long offset;
    private Spinner phcSpinner;
    private QueFormBean queFormBean;
    SewaServiceRestClientImpl restClient;
    SchoolServiceImpl schoolService;
    private String screenName;
    private CharSequence search;
    private TextInputLayout searchBox;
    private MaterialTextView selectAshaAreaTextView;
    private MaterialTextView selectBlockQues;
    private MaterialTextView selectDistrictQues;
    private MaterialTextView selectPhcQues;
    private MaterialTextView selectSubcenterQues;
    private MaterialTextView selectVillageQues;
    private AdolescentDataBean selectedAdolescentMember;
    private MemberDataBean selectedAdvancedSearchMember;
    private Integer selectedAreaId;
    private MemberBean selectedNotification;
    private Integer selectedVillageId;
    SewaServiceImpl sewaService;
    private SharedPreferences sharedPref;
    private String standard;
    private Spinner subCenterSpinner;
    private MaterialTextView titleView;
    private Spinner villageSpinner;
    private Spinner villageSpinnerSelection;
    private Timer timer = new Timer();
    private List<MemberBean> notificationBeanList = new LinkedList();
    private List<AdolescentDataBean> adolescentDataBeansList = new LinkedList();
    private List<MemberDataBean> advanceSearchedMemberList = new LinkedList();
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private Map<String, Long> selectionMap = new HashMap();
    private Long selectedLocationId = null;
    private List<Integer> selectedAreaIds = new ArrayList();
    private List<Integer> selectedVillageIds = new ArrayList();
    private String role = "";

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        this.sharedPref = PreferenceManager.getDefaultSharedPreferences(this);
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
        setTitle(UtilBean.getTitleText(LabelConstants.ADOLESCENT_HEALTH_SCREENING_TITLE));
    }

    private void initView() {
        this.role = getIntent().getStringExtra(RelatedPropertyNameConstants.ROLE);
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        this.bodyLayoutContainer = (LinearLayout) linearLayoutGenerateDynamicScreenTemplate.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        addSchoolOrOthersSelectionScreen();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String string;
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screenName;
            str.hashCode();
            switch (str) {
                case "otherScreen":
                    if (this.selectedNotification == null) {
                        SewaUtil.generateToast(this, LabelConstants.TASK_SELECTION_ALERT);
                        break;
                    } else {
                        startDynamicFormActivity();
                        break;
                    }
                case "regionSelectionScreen":
                    if (this.selectedLocationId != null && this.selectionMap.get(MorbiditiesConstant.ONE_PLUS) != null && this.selectionMap.get(MorbiditiesConstant.TWO_PLUS) != null) {
                        addAdvancedMemberListScreen();
                        break;
                    } else {
                        SewaUtil.generateToast(this.context, "Please select region and district");
                        break;
                    }
                case "addMemberOfParticularSchool":
                    if (this.selectedAdolescentMember == null) {
                        SewaUtil.generateToast(this, LabelConstants.TASK_SELECTION_ALERT);
                        break;
                    } else {
                        startDynamicFormActivity();
                        break;
                    }
                case "villageSelectionScreenForFetchingLocalData":
                    showProcessDialog();
                    if (this.villageList.size() == 1) {
                        string = this.villageList.get(0).getName();
                    } else {
                        string = this.villageSpinner.getSelectedItem().toString();
                    }
                    if (!string.equals(LabelConstants.ALL) && !string.equals(UtilBean.getMyLabel(LabelConstants.ALL))) {
                        Iterator<LocationBean> it = this.villageList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                LocationBean next = it.next();
                                if (string.equals(next.getName())) {
                                    this.selectedVillageId = next.getActualID();
                                    if (!this.selectedVillageIds.contains(next.getActualID())) {
                                        this.selectedVillageIds.add(next.getActualID());
                                    }
                                }
                            }
                        }
                        Spinner spinner = this.ashaAreaSpinner;
                        if (spinner != null) {
                            String string2 = spinner.getSelectedItem().toString();
                            if (!string2.equals(LabelConstants.ALL) && !string2.equals(UtilBean.getMyLabel(LabelConstants.ALL))) {
                                Iterator<LocationBean> it2 = this.ashaAreaList.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        LocationBean next2 = it2.next();
                                        if (string2.equals(next2.getName())) {
                                            this.selectedAreaIds.add(next2.getActualID());
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        for (LocationBean locationBean : this.villageList) {
                            if (!this.selectedVillageIds.contains(locationBean.getActualID())) {
                                this.selectedVillageIds.add(locationBean.getActualID());
                            }
                        }
                    }
                    addOthersLayout();
                    break;
                case "villageSelectionScreenForStoringFamily":
                    String string3 = this.villageSpinnerSelection.getSelectedItem().toString();
                    Iterator<LocationBean> it3 = this.villageList.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            LocationBean next3 = it3.next();
                            if (string3.equals(next3.getName())) {
                                this.selectedVillageId = next3.getActualID();
                            }
                        }
                    }
                    String string4 = this.ashaAreaSpinner.getSelectedItem().toString();
                    if (string4.equals("-Select-")) {
                        SewaUtil.generateToast(this.context, LabelConstants.PLEASE_SELECT_LOCATION);
                        break;
                    } else {
                        Iterator<LocationBean> it4 = this.ashaAreaList.iterator();
                        while (true) {
                            if (it4.hasNext()) {
                                LocationBean next4 = it4.next();
                                if (string4.equals(next4.getName())) {
                                    this.selectedAreaId = next4.getActualID();
                                }
                            }
                        }
                        showProcessDialog();
                        startDynamicFormActivity();
                        break;
                    }
                case "advancedSearchScreenBasedOnRegion":
                    if (this.selectedAdvancedSearchMember == null) {
                        SewaUtil.generateToast(this, LabelConstants.TASK_SELECTION_ALERT);
                        break;
                    } else {
                        startDynamicFormActivity();
                        break;
                    }
                case "schoolSelectionScreen":
                    if (SharedStructureData.selectedSchool != null) {
                        if (!this.standard.equals("0")) {
                            this.bodyLayoutContainer.removeAllViews();
                            addListOfSchoolMembersLayout();
                        } else {
                            SewaUtil.generateToast(this.context, "Please select standard");
                        }
                    } else {
                        SewaUtil.generateToast(this.context, "Please select school");
                    }
                    dismissKeyboard();
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSchoolOrOthersSelectionScreen() {
        this.screenName = SCHOOL_OR_OTHERS_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_FROM_BELOW_OPTIONS)));
        ArrayList arrayList = new ArrayList();
        String str = this.role;
        if (str != null && str.equals("RBSK")) {
            arrayList.add(UtilBean.getMyLabel(LabelConstants.GOING_TO_SCHOOL));
        } else {
            arrayList.add(UtilBean.getMyLabel(LabelConstants.GOING_TO_SCHOOL));
            arrayList.add(UtilBean.getMyLabel(LabelConstants.OTHERS));
        }
        ListView buttonList = MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda7
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m133x1ed1eb00(adapterView, view, i, j);
            }
        });
        buttonList.setPadding(0, 0, 0, 30);
        this.bodyLayoutContainer.addView(buttonList);
        this.nextButton.setText("Okay");
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m134x60e9185f(view);
            }
        });
        this.footerView.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$addSchoolOrOthersSelectionScreen$1$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m133x1ed1eb00(AdapterView adapterView, View view, int i, long j) {
        if (i != 0) {
            if (i == 1) {
                setBodyDetailForFetchingLocalData();
            }
        } else {
            if (this.sewaService.isOnline()) {
                addSchoolSelectionLayout();
                return;
            }
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m132xdcbabda1(view2);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    /* renamed from: lambda$addSchoolOrOthersSelectionScreen$0$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m132xdcbabda1(View view) {
        this.alertDialog.dismiss();
    }

    /* renamed from: lambda$addSchoolOrOthersSelectionScreen$2$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m134x60e9185f(View view) {
        finish();
    }

    public void setBodyDetailForStoringFamily() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.villageList = distinctLocationsAssignedToUser;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.selectedVillageId = this.villageList.get(0).getActualID();
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageForStoringFamilySelectionSpinner();
        } else if (this.villageList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageForStoringFamilySelectionSpinner();
        }
    }

    public void setBodyDetailForFetchingLocalData() {
        this.villageList = this.fhsService.getDistinctLocationsAssignedToUser();
        setSubTitle(null);
        if (this.villageList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
            return;
        }
        if (this.villageList.size() == 1) {
            this.selectedVillageId = this.villageList.get(0).getActualID();
            this.selectedVillageIds.add(this.villageList.get(0).getActualID());
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.selectedVillageId);
            this.screenName = VILLAGE_SELECTION_SCREEN_FOR_FETCHING_LOCAL_DATA;
            addAshaAreaSelectionSpinnerForLocalData();
        } else {
            this.screenName = VILLAGE_SELECTION_SCREEN_FOR_FETCHING_LOCAL_DATA;
            addVillageSelectionSpinnerForLocalData();
        }
        hideProcessDialog();
    }

    private void addSchoolSelectionLayout() {
        this.screenName = SCHOOL_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        SharedStructureData.selectedSchool = null;
        this.queFormBean = new QueFormBean();
        FormulaTagBean formulaTagBean = new FormulaTagBean();
        formulaTagBean.setFormulavalue("setStandard-standard");
        ArrayList arrayList = new ArrayList();
        arrayList.add(formulaTagBean);
        this.queFormBean.setFormulas(arrayList);
        Spinner spinner = MyStaticComponents.getSpinner(this.context, new String[]{"--Select Standard--", "5th", "6th", "7th", "8th", "9th", "10th", "11th", "12th"}, 0, IdConstants.STANDARD_SPINNER_ID);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    AdolescentEventNotificationActivity.this.standard = "0";
                } else {
                    AdolescentEventNotificationActivity.this.standard = String.valueOf(i + 4);
                }
            }
        });
        SharedStructureData.schoolService = this.schoolService;
        LinearLayout schoolComponent = MyDynamicComponents.getSchoolComponent(this.context, this.queFormBean);
        View viewFindViewById = schoolComponent.findViewById(IdConstants.SCHOOL_COMPONENT_RESET_BUTTON_ID);
        if (viewFindViewById != null) {
            viewFindViewById.performClick();
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Select school")));
        this.bodyLayoutContainer.addView(schoolComponent);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Select standard")));
        this.bodyLayoutContainer.addView(spinner);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    private void addOthersLayout() {
        this.bodyLayoutContainer.removeAllViews();
        showProcessDialog();
        addLastUpdateLabel();
        addSearchTextBox();
        retrieveInitialNotificationsFromDB("ADOLESCENT_HEALTH_SCREENING", null, LIMIT, this.offset);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAdvancedMemberListScreen() {
        this.bodyLayoutContainer.removeAllViews();
        showProcessDialog();
        addAdvancedSearchTextBox();
        addAdvancedSearchBasedOnRegionScreen(false);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
    }

    private void addRegionSelectionScreen() {
        this.screenName = REGION_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(addScreenToSelectRegion());
        this.footerView.setVisibility(0);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addListOfSchoolMembersLayout() {
        this.bodyLayoutContainer.removeAllViews();
        showProcessDialog();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, SharedStructureData.selectedSchool.getName()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, String.format("Standard: %s", this.standard)));
        addAdvancedSearchButton();
        addSchoolMemberSearchTextBox();
        retrieveMemberOfParticularSchool(null);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
    }

    private ListView addNewMemberButton() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel("Add new member"));
        ListView buttonList = MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda3
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m130x86e8fe50(adapterView, view, i, j);
            }
        });
        buttonList.setPadding(0, 0, 0, 5);
        return buttonList;
    }

    /* renamed from: lambda$addNewMemberButton$3$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m130x86e8fe50(AdapterView adapterView, View view, int i, long j) {
        if (i == 0) {
            this.isAddNewMemberFlow = true;
            this.selectedAdolescentMember = null;
            this.selectedNotification = null;
            this.selectedAdvancedSearchMember = null;
            this.isSchoolFlow = true;
            setBodyDetailForStoringFamily();
        }
    }

    private void addAdvancedSearchButton() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel(LabelConstants.ADD_ADVANCED_SEARCH));
        ListView buttonList = MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda11
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m126xecf0d757(adapterView, view, i, j);
            }
        });
        buttonList.setPadding(0, 0, 0, 5);
        this.bodyLayoutContainer.addView(buttonList);
    }

    /* renamed from: lambda$addAdvancedSearchButton$4$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m126xecf0d757(AdapterView adapterView, View view, int i, long j) {
        if (i == 0) {
            this.isAdvanceMemberSearchFlow = true;
            this.selectedAdolescentMember = null;
            this.selectedNotification = null;
            this.selectedAdvancedSearchMember = null;
            addRegionSelectionScreen();
            dismissKeyboard();
        }
    }

    public void addLastUpdateLabel() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
    }

    public void addSearchTextBox() {
        this.search = null;
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 50, 1);
        this.searchBox = editText;
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (this.searchBox.getEditText() != null) {
            this.searchBox.getEditText().addTextChangedListener(new AnonymousClass2());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$2, reason: invalid class name */
    class AnonymousClass2 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass2() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            AdolescentEventNotificationActivity.this.timer.cancel();
            AdolescentEventNotificationActivity.this.timer = new Timer();
            AdolescentEventNotificationActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.2.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        AdolescentEventNotificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AdolescentEventNotificationActivity.this.retrieveInitialNotificationsFromDB("ADOLESCENT_HEALTH_SCREENING", charSequence, AdolescentEventNotificationActivity.LIMIT, AdolescentEventNotificationActivity.this.offset);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        AdolescentEventNotificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.2.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AdolescentEventNotificationActivity.this.showProcessDialog();
                                AdolescentEventNotificationActivity.this.retrieveInitialNotificationsFromDB("ADOLESCENT_HEALTH_SCREENING", null, AdolescentEventNotificationActivity.LIMIT, AdolescentEventNotificationActivity.this.offset);
                                AdolescentEventNotificationActivity.this.searchBox.clearFocus();
                            }
                        });
                    }
                }
            }, AdolescentEventNotificationActivity.DELAY);
        }
    }

    public void addSchoolMemberSearchTextBox() {
        this.search = null;
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_MEMBER_OF_SCHOOL, 1, 50, 1);
        this.searchBox = editText;
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (this.searchBox.getEditText() != null) {
            this.searchBox.getEditText().addTextChangedListener(new AnonymousClass3());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$3, reason: invalid class name */
    class AnonymousClass3 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass3() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            AdolescentEventNotificationActivity.this.timer.cancel();
            AdolescentEventNotificationActivity.this.timer = new Timer();
            AdolescentEventNotificationActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.3.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 3) {
                        AdolescentEventNotificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AdolescentEventNotificationActivity.this.showProcessDialog();
                                AdolescentEventNotificationActivity.this.retrieveMemberOfParticularSchool(charSequence);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        AdolescentEventNotificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.3.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AdolescentEventNotificationActivity.this.showProcessDialog();
                                AdolescentEventNotificationActivity.this.addListOfSchoolMembersLayout();
                                AdolescentEventNotificationActivity.this.searchBox.clearFocus();
                            }
                        });
                    }
                }
            }, AdolescentEventNotificationActivity.DELAY);
        }
    }

    public void addAdvancedSearchTextBox() {
        this.search = null;
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_MEMBER_ADVANCE, 1, 50, 1);
        this.searchBox = editText;
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (this.searchBox.getEditText() != null) {
            this.searchBox.getEditText().addTextChangedListener(new AnonymousClass4());
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$4, reason: invalid class name */
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
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AdolescentEventNotificationActivity.this.timer.cancel();
            AdolescentEventNotificationActivity.this.timer = new Timer();
            AdolescentEventNotificationActivity.this.timer.schedule(new AnonymousClass1(charSequence), AdolescentEventNotificationActivity.DELAY);
        }

        /* renamed from: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$4$1, reason: invalid class name */
        class AnonymousClass1 extends TimerTask {
            final /* synthetic */ CharSequence val$s;

            AnonymousClass1(CharSequence charSequence) {
                this.val$s = charSequence;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                CharSequence charSequence = this.val$s;
                if (charSequence != null && charSequence.length() > 3) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdolescentEventNotificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.4.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdolescentEventNotificationActivity.this.showProcessDialog();
                                    AdolescentEventNotificationActivity.this.retrieveMembersByAdvanceSearch(AnonymousClass1.this.val$s);
                                }
                            });
                        }
                    }, 3000L);
                    return;
                }
                CharSequence charSequence2 = this.val$s;
                if (charSequence2 == null || charSequence2.length() == 0) {
                    AdolescentEventNotificationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.4.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AdolescentEventNotificationActivity.this.showProcessDialog();
                            AdolescentEventNotificationActivity.this.addAdvancedMemberListScreen();
                            AdolescentEventNotificationActivity.this.searchBox.clearFocus();
                        }
                    });
                }
            }
        }
    }

    private void startDynamicFormActivity() {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        MemberDataBean memberDataBean;
        showProcessDialog();
        try {
            QueFormBean queFormBean = this.queFormBean;
            if (queFormBean != null && this.isSchoolFlow) {
                AdolescentDataBean adolescentDataBean = this.selectedAdolescentMember;
                if (adolescentDataBean != null) {
                    this.formMetaDataUtil.setMetaDataForAdolescentForm(adolescentDataBean.getMemberId(), this.selectedAdolescentMember, null, this.sharedPref, this.isSchoolFlow, this.isAddNewMemberFlow, this.queFormBean.getAnswer().toString(), 0, 0, Integer.valueOf(Integer.parseInt(this.standard)));
                } else if (this.isAddNewMemberFlow) {
                    this.formMetaDataUtil.setMetaDataForAdolescentForm(null, null, null, this.sharedPref, true, true, queFormBean.getAnswer().toString(), this.selectedVillageId, this.selectedAreaId, Integer.valueOf(Integer.parseInt(this.standard)));
                }
            } else if (queFormBean != null && (memberDataBean = this.selectedAdvancedSearchMember) != null && this.isAdvanceMemberSearchFlow) {
                this.formMetaDataUtil.setMetaDataForAdolescentForm(Long.valueOf(Long.parseLong(memberDataBean.getMemberId())), null, this.selectedAdvancedSearchMember, this.sharedPref, this.isSchoolFlow, this.isAddNewMemberFlow, this.queFormBean.getAnswer().toString(), 0, 0, Integer.valueOf(Integer.parseInt(this.standard)));
            } else {
                MemberBean memberBean = this.selectedNotification;
                if (memberBean != null && (memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(Long.valueOf(memberBean.getActualId()))) != null) {
                    this.formMetaDataUtil.setMetaDataForAdolescentForm(Long.valueOf(Long.parseLong(memberBeanRetrieveMemberBeanByActualId.getActualId())), null, null, this.sharedPref, this.isSchoolFlow, this.isAddNewMemberFlow, null, 0, 0, null);
                }
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", "ADOLESCENT_HEALTH_SCREENING");
            startActivityForResult(intent, REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m136xd93cda29(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    /* renamed from: lambda$startDynamicFormActivity$5$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m136xd93cda29(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    public void retrieveMemberOfParticularSchool(CharSequence charSequence) {
        this.selectedAdolescentMember = null;
        this.search = charSequence;
        boolean z = true;
        final String[] strArr = {"Something went wrong"};
        try {
            List<AdolescentDataBean> membersOfSchool = this.restClient.getMembersOfSchool(Long.valueOf(Long.parseLong(SharedStructureData.selectedSchool.getActualId().toString())), Integer.valueOf(Integer.parseInt(this.standard)));
            this.adolescentDataBeansList = membersOfSchool;
            if (membersOfSchool != null) {
                if (charSequence == null) {
                    z = false;
                }
                addMembersOfParticularSchoolSelectionScreen(z);
                hideProcessDialog();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.5
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity.this.hideProcessDialog();
                SewaUtil.generateToast(AdolescentEventNotificationActivity.this.context, strArr[0]);
            }
        });
    }

    public void retrieveInitialNotificationsFromDB(String str, CharSequence charSequence, long j, long j2) {
        this.selectedNotification = null;
        this.search = charSequence;
        try {
            this.notificationBeanList = this.notificationService.getAdolescentChildrenInArea(this.selectedVillageIds, this.selectedAreaIds, charSequence, j, 0L);
            this.offset += LIMIT;
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
        addNotificationSelectionScreen(charSequence != null);
    }

    public void retrieveMembersByAdvanceSearch(CharSequence charSequence) {
        this.selectedAdvancedSearchMember = null;
        this.search = charSequence;
        boolean z = true;
        final String[] strArr = {"Something went wrong"};
        try {
            this.advanceSearchedMemberList = this.restClient.getMembersByAdvanceSearch(Integer.valueOf(Integer.parseInt(String.valueOf(this.selectedLocationId))), String.valueOf(this.search), Integer.valueOf(Integer.parseInt(this.standard)));
            if (charSequence == null) {
                z = false;
            }
            addAdvancedSearchBasedOnRegionScreen(z);
            hideProcessDialog();
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    AdolescentEventNotificationActivity.this.hideProcessDialog();
                    SewaUtil.generateToast(AdolescentEventNotificationActivity.this.context, strArr[0]);
                }
            });
        }
    }

    public void addMembersOfParticularSchoolSelectionScreen(boolean z) {
        List<ListItemDataBean> membersOfSchoolList;
        this.screenName = ADD_MEMBERS_OF_PARTICULAR_SCHOOL;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        List<AdolescentDataBean> list = this.adolescentDataBeansList;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m127x8faf48f2(view);
                }
            });
            if (z) {
                return;
            }
            hideProcessDialog();
            return;
        }
        CharSequence charSequence = this.search;
        if (charSequence != null && charSequence.length() > 0 && getFilterList(this.search).isEmpty()) {
            hideProcessDialog();
            MaterialTextView materialTextViewGenerateInstructionView2 = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_RESULT_FOUND_ADVANCE_SEARCH);
            this.titleView = materialTextViewGenerateInstructionView2;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView2);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m128xd1c67651(view);
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
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda5
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m129x13dda3b0(adapterView, view, i, j);
            }
        };
        CharSequence charSequence2 = this.search;
        if (charSequence2 == null || charSequence2.length() == 0) {
            membersOfSchoolList = getMembersOfSchoolList(this.adolescentDataBeansList);
        } else {
            membersOfSchoolList = getMembersOfSchoolList(getFilterList(this.search));
        }
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, membersOfSchoolList, R.layout.listview_row_with_date, onItemClickListener, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        hideProcessDialog();
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addMembersOfParticularSchoolSelectionScreen$6$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m127x8faf48f2(View view) {
        addSchoolOrOthersSelectionScreen();
        dismissKeyboard();
    }

    /* renamed from: lambda$addMembersOfParticularSchoolSelectionScreen$7$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m128xd1c67651(View view) {
        dismissKeyboard();
    }

    /* renamed from: lambda$addMembersOfParticularSchoolSelectionScreen$8$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m129x13dda3b0(AdapterView adapterView, View view, int i, long j) {
        if (this.adolescentDataBeansList.size() > i) {
            this.selectedAdolescentMember = this.adolescentDataBeansList.get(i);
            this.isAddNewMemberFlow = false;
            this.isAdvanceMemberSearchFlow = false;
            this.isSchoolFlow = true;
        }
    }

    public void addNotificationSelectionScreen(boolean z) {
        this.screenName = OTHERS_SCREEN;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        List<MemberBean> list = this.notificationBeanList;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_ALERT_WITH_GRATITUDE_FOR_WORK);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AdolescentEventNotificationActivity.this.addSchoolOrOthersSelectionScreen();
                    AdolescentEventNotificationActivity.this.dismissKeyboard();
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
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda9
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m131xb8b569a9(adapterView, view, i, j);
            }
        };
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getListViewItemsForNotificationList(this.notificationBeanList), R.layout.listview_row_with_date, onItemClickListener, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addNotificationSelectionScreen$9$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m131xb8b569a9(AdapterView adapterView, View view, int i, long j) {
        if (this.notificationBeanList.size() > i) {
            this.selectedNotification = this.notificationBeanList.get(i);
            this.isAddNewMemberFlow = false;
            this.isAdvanceMemberSearchFlow = false;
            this.isSchoolFlow = false;
        }
    }

    public void addAdvancedSearchBasedOnRegionScreen(boolean z) {
        String str;
        List<ListItemDataBean> membersByAdvanceSearch;
        this.screenName = ADVANCED_SEARCH_SCREEN_BASED_ON_REGION;
        this.bodyLayoutContainer.removeView(this.notificationListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        List<MemberDataBean> list = this.advanceSearchedMemberList;
        if (list == null || list.isEmpty()) {
            CharSequence charSequence = this.search;
            if (charSequence != null && charSequence.length() > 0) {
                this.titleView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_RESULT_FOUND_ADOLESCENT);
                if (!this.isAddNewButtonShown && ((str = this.role) == null || !str.equals("RBSK"))) {
                    this.bodyLayoutContainer.addView(addNewMemberButton());
                    this.isAddNewButtonShown = true;
                }
            } else {
                this.isAddNewButtonShown = false;
                this.titleView = MyStaticComponents.generateInstructionView(this, LabelConstants.PLEASE_SEARCH_MEMBER_ADOLESCENT);
            }
            this.bodyLayoutContainer.addView(this.titleView);
            this.nextButton.setText("Okay");
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m124x290cb248(view);
                }
            });
            if (z) {
                return;
            }
            hideProcessDialog();
            return;
        }
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m125x6b23dfa7(adapterView, view, i, j);
            }
        };
        CharSequence charSequence2 = this.search;
        if (charSequence2 != null && charSequence2.length() > 0) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_BENEFICIARY);
            this.titleView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            membersByAdvanceSearch = getMembersByAdvanceSearch(this.advanceSearchedMemberList);
        } else {
            this.isAddNewButtonShown = false;
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.PLEASE_SEARCH_MEMBER_ADOLESCENT);
            this.titleView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            membersByAdvanceSearch = null;
        }
        PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, membersByAdvanceSearch, R.layout.listview_row_with_date, onItemClickListener, this);
        this.notificationListView = paginatedListViewWithItem;
        this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        hideProcessDialog();
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addAdvancedSearchBasedOnRegionScreen$10$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m124x290cb248(View view) {
        dismissKeyboard();
        SewaUtil.generateToast(this.context, "Search to find member");
    }

    /* renamed from: lambda$addAdvancedSearchBasedOnRegionScreen$11$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m125x6b23dfa7(AdapterView adapterView, View view, int i, long j) {
        if (this.advanceSearchedMemberList.size() > i) {
            this.selectedAdvancedSearchMember = this.advanceSearchedMemberList.get(i);
            this.isAddNewMemberFlow = false;
            this.isSchoolFlow = false;
            this.isAdvanceMemberSearchFlow = true;
        }
    }

    private List<ListItemDataBean> getListViewItemsForNotificationList(List<MemberBean> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<MemberBean> it = list.iterator();
        while (it.hasNext()) {
            MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(Long.valueOf(it.next().getActualId()));
            arrayList.add(new ListItemDataBean(memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId(), UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId)));
        }
        return arrayList;
    }

    private List<ListItemDataBean> getMembersOfSchoolList(List<AdolescentDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (AdolescentDataBean adolescentDataBean : list) {
            arrayList.add(new ListItemDataBean(adolescentDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(adolescentDataBean)));
        }
        return arrayList;
    }

    private List<ListItemDataBean> getMembersByAdvanceSearch(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean)));
        }
        return arrayList;
    }

    private List<AdolescentDataBean> getFilterList(CharSequence charSequence) {
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < this.adolescentDataBeansList.size(); i++) {
            if (this.adolescentDataBeansList.get(i).getConcatWs().contains(charSequence)) {
                linkedList.add(this.adolescentDataBeansList.get(i));
            }
        }
        return linkedList;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        if (this.isSchoolFlow || this.isAdvanceMemberSearchFlow || this.isAddNewMemberFlow) {
            return;
        }
        try {
            List<MemberBean> adolescentChildrenInArea = this.notificationService.getAdolescentChildrenInArea(this.selectedVillageIds, this.selectedAreaIds, this.search, LIMIT, this.offset);
            this.offset += LIMIT;
            onLoadMoreUi(adolescentChildrenInArea);
        } catch (SQLException e) {
            Log.e(getClass().getName(), null, e);
        }
    }

    public void onLoadMoreUi(List<MemberBean> list) {
        if (this.isSchoolFlow || this.isAdvanceMemberSearchFlow || this.isAddNewMemberFlow) {
            return;
        }
        if (list != null && !list.isEmpty()) {
            this.notificationBeanList.addAll(list);
            this.notificationListView.onFinishLoadingWithItem(true, getListViewItemsForNotificationList(list));
            return;
        }
        this.notificationListView.onFinishLoadingWithItem(false, null);
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
            case "otherScreen":
            case "villageSelectionScreenForFetchingLocalData":
            case "schoolSelectionScreen":
                addSchoolOrOthersSelectionScreen();
                break;
            case "regionSelectionScreen":
            case "villageSelectionScreenForStoringFamily":
            case "advancedSearchScreenBasedOnRegion":
                addListOfSchoolMembersLayout();
                break;
            case "addMemberOfParticularSchool":
                addSchoolSelectionLayout();
                break;
            case "schoolOrOtherSelectionScreen":
                finish();
                break;
        }
        dismissKeyboard();
        this.footerView.setVisibility(0);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m135xeea0c5a1(view);
            }
        };
        dismissKeyboard();
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_NOTIFICATION_ACTIVITY_CLOSE_ALERT, onClickListener, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$12$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity, reason: not valid java name */
    /* synthetic */ void m135xeea0c5a1(View view) {
        if (view.getId() == -1) {
            this.alertDialog.dismiss();
            String str = this.screenName;
            str.hashCode();
            switch (str) {
                case "otherScreen":
                case "villageSelectionScreenForFetchingLocalData":
                case "schoolSelectionScreen":
                    addSchoolOrOthersSelectionScreen();
                    break;
                case "regionSelectionScreen":
                case "villageSelectionScreenForStoringFamily":
                case "advancedSearchScreenBasedOnRegion":
                    addListOfSchoolMembersLayout();
                    break;
                case "addMemberOfParticularSchool":
                    addSchoolSelectionLayout();
                    break;
                case "schoolOrOtherSelectionScreen":
                    finish();
                    break;
                default:
                    navigateToHomeScreen(false);
                    finish();
                    break;
            }
        }
        this.alertDialog.dismiss();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY.intValue()) {
            showProcessDialog();
            this.offset = 0L;
            if (this.isSchoolFlow) {
                this.selectedAdolescentMember = null;
                addSchoolSelectionLayout();
                return;
            } else if (this.screenName.equals(ADVANCED_SEARCH_SCREEN_BASED_ON_REGION)) {
                this.selectedAdvancedSearchMember = null;
                addSchoolSelectionLayout();
                return;
            } else {
                this.selectedNotification = null;
                addOthersLayout();
                return;
            }
        }
        navigateToHomeScreen(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissKeyboard() {
        View currentFocus = getWindow().getCurrentFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) this.context.getSystemService("input_method");
        if (currentFocus != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    private LinearLayout addScreenToSelectRegion() {
        if (this.hierarchyTextView == null) {
            this.hierarchyTextView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_HIERARCHY_FOR_SCHOOL));
        }
        if (this.hierarchyLayout == null) {
            this.hierarchyLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -1));
            addRegionSpinner();
        }
        return this.hierarchyLayout;
    }

    private void addRegionSpinner() {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(1, 2L);
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByLevelAndParent.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 1);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.8
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                AdolescentEventNotificationActivity.this.selectionMap.remove(MorbiditiesConstant.TWO_PLUS);
                AdolescentEventNotificationActivity.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                AdolescentEventNotificationActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                AdolescentEventNotificationActivity.this.selectionMap.remove("5");
                AdolescentEventNotificationActivity.this.selectionMap.remove("6");
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectDistrictQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.districtSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectBlockQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.blockSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectPhcQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.phcSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectSubcenterQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.subCenterSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectVillageQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.villageSpinner);
                if (i2 == 0) {
                    AdolescentEventNotificationActivity.this.selectedLocationId = null;
                    return;
                }
                LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                AdolescentEventNotificationActivity.this.selectionMap.put(MorbiditiesConstant.ONE_PLUS, locationMasterBean.getActualID());
                AdolescentEventNotificationActivity.this.selectedLocationId = locationMasterBean.getActualID();
                AdolescentEventNotificationActivity.this.addDistrictSpinner(locationMasterBean.getActualID());
            }
        });
        this.hierarchyLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.REGION)));
        this.hierarchyLayout.addView(spinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDistrictSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(2, l);
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            Iterator<LocationMasterBean> it = listRetrieveLocationMasterBeansByLevelAndParent.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel(LabelConstants.NO_LOCATION_AVAILABLE);
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 2);
        this.districtSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                AdolescentEventNotificationActivity.this.selectionMap.remove(MorbiditiesConstant.THREE_PLUS);
                AdolescentEventNotificationActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                AdolescentEventNotificationActivity.this.selectionMap.remove("5");
                AdolescentEventNotificationActivity.this.selectionMap.remove("6");
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectBlockQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.blockSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectPhcQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.phcSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectSubcenterQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.subCenterSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectVillageQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.villageSpinner);
                if (i2 != 0) {
                    LocationMasterBean locationMasterBean = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i2 - 1);
                    AdolescentEventNotificationActivity.this.selectionMap.put(MorbiditiesConstant.TWO_PLUS, locationMasterBean.getActualID());
                    AdolescentEventNotificationActivity.this.selectedLocationId = locationMasterBean.getActualID();
                    AdolescentEventNotificationActivity.this.addBlockSpinner(locationMasterBean.getActualID());
                    return;
                }
                AdolescentEventNotificationActivity adolescentEventNotificationActivity = AdolescentEventNotificationActivity.this;
                adolescentEventNotificationActivity.selectedLocationId = (Long) adolescentEventNotificationActivity.selectionMap.get(MorbiditiesConstant.ONE_PLUS);
            }
        });
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DISTRICT_OR_CORPORATION));
        this.selectDistrictQues = materialTextViewGenerateQuestionView;
        this.hierarchyLayout.addView(materialTextViewGenerateQuestionView);
        this.hierarchyLayout.addView(this.districtSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBlockSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(3, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 3);
        this.blockSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                AdolescentEventNotificationActivity.this.selectionMap.remove(MorbiditiesConstant.FOUR_PLUS);
                AdolescentEventNotificationActivity.this.selectionMap.remove("5");
                AdolescentEventNotificationActivity.this.selectionMap.remove("6");
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectPhcQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.phcSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectSubcenterQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.subCenterSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectVillageQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    AdolescentEventNotificationActivity.this.selectionMap.put(MorbiditiesConstant.THREE_PLUS, locationMasterBean2.getActualID());
                    AdolescentEventNotificationActivity.this.selectedLocationId = locationMasterBean2.getActualID();
                    AdolescentEventNotificationActivity.this.addPhcSpinner(locationMasterBean2.getActualID());
                    return;
                }
                AdolescentEventNotificationActivity adolescentEventNotificationActivity = AdolescentEventNotificationActivity.this;
                adolescentEventNotificationActivity.selectedLocationId = (Long) adolescentEventNotificationActivity.selectionMap.get(MorbiditiesConstant.TWO_PLUS);
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LocationConstants.LocationType.TALUKA)) {
                    sb.append(LabelConstants.BLOCK);
                }
                if (str.equals(LocationConstants.LocationType.ZONE)) {
                    sb.append(LabelConstants.ZONE);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.TALUKA)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BLOCK));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.ZONE)) {
                this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ZONE));
            }
        } else {
            this.selectBlockQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.BLOCK));
        }
        this.hierarchyLayout.addView(this.selectBlockQues);
        this.hierarchyLayout.addView(this.blockSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPhcSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(4, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 3);
        this.phcSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.11
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                AdolescentEventNotificationActivity.this.selectionMap.remove("5");
                AdolescentEventNotificationActivity.this.selectionMap.remove("6");
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectSubcenterQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.subCenterSpinner);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectVillageQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    AdolescentEventNotificationActivity.this.selectionMap.put(MorbiditiesConstant.FOUR_PLUS, locationMasterBean2.getActualID());
                    AdolescentEventNotificationActivity.this.selectedLocationId = locationMasterBean2.getActualID();
                    AdolescentEventNotificationActivity.this.addSubCenterSpinner(locationMasterBean2.getActualID());
                    return;
                }
                AdolescentEventNotificationActivity adolescentEventNotificationActivity = AdolescentEventNotificationActivity.this;
                adolescentEventNotificationActivity.selectedLocationId = (Long) adolescentEventNotificationActivity.selectionMap.get(MorbiditiesConstant.THREE_PLUS);
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("U")) {
                    sb.append(LabelConstants.UHC);
                }
                if (str.equals("P")) {
                    sb.append(LabelConstants.PHC);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("U")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.UHC));
            }
            if (((String) arrayList.get(0)).equals("P")) {
                this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.PHC));
            }
        } else {
            this.selectPhcQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.PHC));
        }
        this.hierarchyLayout.addView(this.selectPhcQues);
        this.hierarchyLayout.addView(this.phcSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubCenterSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(5, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 5);
        this.subCenterSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.12
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                AdolescentEventNotificationActivity.this.selectionMap.remove("5");
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.selectVillageQues);
                AdolescentEventNotificationActivity.this.hierarchyLayout.removeView(AdolescentEventNotificationActivity.this.villageSpinner);
                if (i3 != 0) {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    AdolescentEventNotificationActivity.this.selectionMap.put("5", locationMasterBean2.getActualID());
                    AdolescentEventNotificationActivity.this.selectedLocationId = locationMasterBean2.getActualID();
                    AdolescentEventNotificationActivity.this.addVillageSpinner(locationMasterBean2.getActualID());
                    return;
                }
                AdolescentEventNotificationActivity adolescentEventNotificationActivity = AdolescentEventNotificationActivity.this;
                adolescentEventNotificationActivity.selectedLocationId = (Long) adolescentEventNotificationActivity.selectionMap.get(MorbiditiesConstant.FOUR_PLUS);
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals("ANM")) {
                    sb.append(LabelConstants.ANM_AREA);
                }
                if (str.equals("SC")) {
                    sb.append(LabelConstants.SUB_CENTER);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals("ANM")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ANM_AREA));
            }
            if (((String) arrayList.get(0)).equals("SC")) {
                this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SUB_CENTER));
            }
        } else {
            this.selectSubcenterQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SUB_CENTER));
        }
        this.hierarchyLayout.addView(this.selectSubcenterQues);
        this.hierarchyLayout.addView(this.subCenterSpinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addVillageSpinner(Long l) {
        final List<LocationMasterBean> listRetrieveLocationMasterBeansByLevelAndParent = SharedStructureData.locationMasterService.retrieveLocationMasterBeansByLevelAndParent(6, l);
        ArrayList<String> arrayList = new ArrayList();
        int i = 1;
        String[] strArr = new String[listRetrieveLocationMasterBeansByLevelAndParent.size() + 1];
        if (!listRetrieveLocationMasterBeansByLevelAndParent.isEmpty()) {
            strArr[0] = UtilBean.getMyLabel("-Select-");
            int i2 = 1;
            for (LocationMasterBean locationMasterBean : listRetrieveLocationMasterBeansByLevelAndParent) {
                strArr[i2] = locationMasterBean.getName();
                if (!arrayList.contains(locationMasterBean.getType())) {
                    arrayList.add(locationMasterBean.getType());
                }
                i2++;
            }
        } else {
            strArr[0] = UtilBean.getMyLabel("-Select-");
        }
        Spinner spinner = MyStaticComponents.getSpinner(this.context, strArr, 0, 6);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.13
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                if (i3 == 0) {
                    AdolescentEventNotificationActivity.this.selectionMap.remove("6");
                    AdolescentEventNotificationActivity adolescentEventNotificationActivity = AdolescentEventNotificationActivity.this;
                    adolescentEventNotificationActivity.selectedLocationId = (Long) adolescentEventNotificationActivity.selectionMap.get("5");
                } else {
                    LocationMasterBean locationMasterBean2 = (LocationMasterBean) listRetrieveLocationMasterBeansByLevelAndParent.get(i3 - 1);
                    AdolescentEventNotificationActivity.this.selectionMap.put("6", locationMasterBean2.getActualID());
                    AdolescentEventNotificationActivity.this.selectedLocationId = locationMasterBean2.getActualID();
                }
            }
        });
        if (arrayList.size() > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                if (str.equals(LabelConstants.UA)) {
                    sb.append(LabelConstants.URBAN_AREA);
                }
                if (str.equals(LocationConstants.LocationType.VILLAGE)) {
                    sb.append("Village");
                }
                if (str.equals("ANG")) {
                    sb.append(LabelConstants.ANGANWADI_AREA);
                }
                if (i != arrayList.size()) {
                    sb.append("/");
                }
                i++;
            }
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(sb.toString()));
        } else if (arrayList.size() == 1) {
            if (((String) arrayList.get(0)).equals(LabelConstants.UA)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.URBAN_AREA));
            }
            if (((String) arrayList.get(0)).equals(LocationConstants.LocationType.VILLAGE)) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Village"));
            }
            if (((String) arrayList.get(0)).equals("ANG")) {
                this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ANGANWADI_AREA));
            }
        } else {
            this.selectVillageQues = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Village"));
        }
        this.hierarchyLayout.addView(this.selectVillageQues);
        this.hierarchyLayout.addView(this.villageSpinner);
    }

    public void addVillageForStoringFamilySelectionSpinner() {
        this.screenName = VILLAGE_SELECTION_SCREEN_FOR_STORING_FAMILY;
        this.bodyLayoutContainer.removeAllViews();
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
        this.villageSpinnerSelection = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.14
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                AdolescentEventNotificationActivity.this.bodyLayoutContainer.removeView(AdolescentEventNotificationActivity.this.ashaAreaSpinner);
                AdolescentEventNotificationActivity adolescentEventNotificationActivity = AdolescentEventNotificationActivity.this;
                adolescentEventNotificationActivity.ashaAreaList = adolescentEventNotificationActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) AdolescentEventNotificationActivity.this.villageList.get(i2)).getActualID());
                AdolescentEventNotificationActivity.this.addAshaAreaForStoringFamilySelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinnerSelection);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        addAshaAreaForStoringFamilySelectionSpinner();
    }

    public void addAshaAreaForStoringFamilySelectionSpinner() {
        this.screenName = VILLAGE_SELECTION_SCREEN_FOR_STORING_FAMILY;
        String[] strArr = new String[this.ashaAreaList.size() + 1];
        strArr[0] = "-Select-";
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        this.ashaAreaSpinner = spinner;
        this.bodyLayoutContainer.addView(spinner);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    public void addVillageSelectionSpinnerForLocalData() {
        this.screenName = VILLAGE_SELECTION_SCREEN_FOR_FETCHING_LOCAL_DATA;
        this.bodyLayoutContainer.removeAllViews();
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity.15
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 == 0) {
                    AdolescentEventNotificationActivity.this.ashaAreaList = null;
                } else {
                    AdolescentEventNotificationActivity adolescentEventNotificationActivity = AdolescentEventNotificationActivity.this;
                    adolescentEventNotificationActivity.selectedVillageId = ((LocationBean) adolescentEventNotificationActivity.villageList.get(i2 - 1)).getActualID();
                    AdolescentEventNotificationActivity adolescentEventNotificationActivity2 = AdolescentEventNotificationActivity.this;
                    adolescentEventNotificationActivity2.ashaAreaList = adolescentEventNotificationActivity2.fhsService.retrieveAshaAreaAssignedToUser(AdolescentEventNotificationActivity.this.selectedVillageId);
                }
                AdolescentEventNotificationActivity.this.addAshaAreaSelectionSpinnerForLocalData();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    public void addAshaAreaSelectionSpinnerForLocalData() {
        this.screenName = VILLAGE_SELECTION_SCREEN_FOR_FETCHING_LOCAL_DATA;
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
}
