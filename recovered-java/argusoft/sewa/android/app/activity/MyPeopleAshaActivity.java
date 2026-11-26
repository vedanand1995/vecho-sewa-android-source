package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TableLayout;
import android.widget.TableRow;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.ChildGrowthChartComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.MalariaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class MyPeopleAshaActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final String CHART_SELECTION_SCREEN = "chartSelectionScreen";
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String FILARIASIS_TYPE_SELECTION_SCREEN = "filariasisTypeSelectionScreen";
    private static final String MALARIA_SCREEN = "malariaScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String MOTHER_DETAILS_SCREEN = "motherDetailsScreen";
    private static final String RCH_REGISTER_TABLE_SCREEN = "rchRegisterTableScreen";
    private static final Integer REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY = 300;
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private static final String VISIT_SELECTION_SCREEN = "visitSelectionScreen";
    private ArrayList<Integer> ashaArea;
    private LinearLayout bodyLayoutContainer;
    public SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    public FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView headerTitle;
    private TableRow.LayoutParams layoutParams;
    public MalariaServiceImpl malariaService;
    private List<String> mapOfVisitFormWithRadioButtonId;
    private MemberAdditionalInfoDataBean memberAdditionalInfoDataBean;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableView;
    private MaterialTextView noMemberAvailableView;
    private PagingListView paginatedListView;
    public SewaServiceRestClientImpl restClient;
    private String screen;
    private String searchString;
    private TextInputLayout searchText;
    private Integer selectedAshaArea;
    private FamilyDataBean selectedFamily;
    private MemberDataBean selectedMember;
    private Integer selectedService;
    public SewaServiceImpl sewaService;
    private Spinner spinner;
    public TechoAshaServiceImpl techoAshaService;
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<MemberDataBean> memberDataBeans = new ArrayList();
    private Timer timer = new Timer();
    private List<String> formTypes = new ArrayList();
    private long limit = 30;
    private long offset = 0;
    private int selectedServiceIndex = -1;
    private int selectedPeopleIndex = -1;
    private int selectedFilariasisType = -1;
    private int selectedVisitIndex = -1;
    private Boolean isReAppear = false;
    private Boolean isMalaria = false;
    private List<FamilyDataBean> familyDataBeans = null;
    private int selectedFamilyIndex = -1;

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
        this.context = this;
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
        setTitle(UtilBean.getTitleText(LabelConstants.MY_PEOPLE_ASHA_TITLE));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() {
        showProcessDialog();
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_MY_PEOPLE_ASHA_ACTIVITY_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MyPeopleAshaActivity.this.alertDialog.dismiss();
                    MyPeopleAshaActivity.this.navigateToHomeScreen(false);
                    MyPeopleAshaActivity.this.finish();
                    return;
                }
                MyPeopleAshaActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002e  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r14) {
        /*
            Method dump skipped, instructions count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.onClick(android.view.View):void");
    }

    public void showMDAorSideEffectsScreen() {
        this.selectedFilariasisType = -1;
        this.selectedPeopleIndex = -1;
        this.selectedFamilyIndex = -1;
        this.screen = FILARIASIS_TYPE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_FILARIASIS_MDA)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_FILARIASIS_SIDE_EFFECTS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m308x2d84339c(adapterView, view, i, j);
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$showMDAorSideEffectsScreen$0$com-argusoft-sewa-android-app-activity-MyPeopleAshaActivity, reason: not valid java name */
    /* synthetic */ void m308x2d84339c(AdapterView adapterView, View view, int i, long j) {
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
            addSearchTextBoxForMember();
            retrieveMemberListFromDB(null);
        }
    }

    public void setVisits() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = VISIT_SELECTION_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(FormConstants.TECHO_AWW_WEIGHT_GROWTH_GRAPH);
        ArrayList arrayList2 = new ArrayList();
        this.mapOfVisitFormWithRadioButtonId = new ArrayList();
        for (String str : arrayList) {
            arrayList2.add(new ListItemDataBean(UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(str))));
            this.mapOfVisitFormWithRadioButtonId.add(str);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList2, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MyPeopleAshaActivity.this.selectedVisitIndex = i;
                MyPeopleAshaActivity myPeopleAshaActivity = MyPeopleAshaActivity.this;
                myPeopleAshaActivity.onClick(myPeopleAshaActivity.nextButton);
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    public void addGraph() {
        this.screen = CHART_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        this.bodyLayoutContainer.addView(new ChildGrowthChartComponent(this.context, new MemberBean(this.selectedMember)));
        hideProcessDialog();
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
        this.spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        if (this.selectedAshaArea != null) {
            for (LocationBean locationBean : this.ashaAreaList) {
                if (locationBean.getActualID().intValue() == this.selectedAshaArea.intValue()) {
                    this.spinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.spinner);
        hideProcessDialog();
    }

    public void setServiceSelectionScreen() {
        this.isReAppear = false;
        this.screen = SERVICE_SELECTION_SCREEN;
        this.nextButton.setText("Next");
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_TYPE_SELECTION));
        this.formTypes.add(FormConstants.ASHA_LMPFU);
        this.formTypes.add(FormConstants.ASHA_ANC);
        this.formTypes.add(FormConstants.ASHA_WPD);
        this.formTypes.add(FormConstants.MALARIA_EXAMINE);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.SERVICE_ELIGIBLE_COUPLES));
        arrayList.add(new ListItemDataBean("Pregnant Women"));
        arrayList.add(new ListItemDataBean(LabelConstants.SERVICE_WPD_WOMEN));
        arrayList.add(new ListItemDataBean(LabelConstants.SERVICE_RCH_REGISTER));
        arrayList.add(new ListItemDataBean(LabelConstants.SERVICE_NPCB_REFERRED_PATIENTS));
        arrayList.add(new ListItemDataBean(LabelConstants.MALARIA_INCENTIVE));
        arrayList.add(new ListItemDataBean(LabelConstants.LCDC_CAMPAIGN));
        arrayList.add(new ListItemDataBean(LabelConstants.FILARIASIS_CAMPAIGN));
        arrayList.add(new ListItemDataBean(LabelConstants.LCDC_CAMPAIGN_02));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MyPeopleAshaActivity.this.selectedServiceIndex = i;
                MyPeopleAshaActivity myPeopleAshaActivity = MyPeopleAshaActivity.this;
                myPeopleAshaActivity.onClick(myPeopleAshaActivity.nextButton);
                MyPeopleAshaActivity.this.footerView.setVisibility(0);
            }
        }, null));
        this.footerView.setVisibility(8);
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    public void addSearchTextBoxForMember() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_MEMBER, 1, 15, 1);
        this.searchText = editText;
        if (editText.getEditText() != null) {
            this.searchText.getEditText().addTextChangedListener(new AnonymousClass4());
        }
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity$4, reason: invalid class name */
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
            MyPeopleAshaActivity.this.timer.cancel();
            MyPeopleAshaActivity.this.timer = new Timer();
            MyPeopleAshaActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.4.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MyPeopleAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MyPeopleAshaActivity.this.retrieveMemberListFromDB(charSequence.toString());
                                MyPeopleAshaActivity.this.searchText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        MyPeopleAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.4.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MyPeopleAshaActivity.this.showProcessDialog();
                                MyPeopleAshaActivity.this.retrieveMemberListFromDB(null);
                            }
                        });
                    }
                }
            }, MyPeopleAshaActivity.DELAY);
        }
    }

    public void addSearchTextBoxForFamily() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 15, 1);
        this.searchText = editText;
        if (editText.getEditText() != null) {
            this.searchText.getEditText().addTextChangedListener(new AnonymousClass5());
        }
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity$5, reason: invalid class name */
    class AnonymousClass5 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass5() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            MyPeopleAshaActivity.this.timer.cancel();
            MyPeopleAshaActivity.this.timer = new Timer();
            MyPeopleAshaActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.5.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MyPeopleAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.5.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MyPeopleAshaActivity.this.selectedServiceIndex != 6) {
                                    if (MyPeopleAshaActivity.this.selectedServiceIndex != 7) {
                                        if (MyPeopleAshaActivity.this.selectedServiceIndex == 8) {
                                            MyPeopleAshaActivity.this.retrieveLCDC02FamilyListFromDB(charSequence.toString());
                                        }
                                    } else {
                                        MyPeopleAshaActivity.this.retrieveFilariaFamilyListFromDB(charSequence.toString());
                                    }
                                } else {
                                    MyPeopleAshaActivity.this.retrieveLCDCFamilyListFromDB(charSequence.toString());
                                }
                                MyPeopleAshaActivity.this.searchText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        MyPeopleAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.5.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MyPeopleAshaActivity.this.showProcessDialog();
                                if (MyPeopleAshaActivity.this.selectedServiceIndex != 6) {
                                    if (MyPeopleAshaActivity.this.selectedServiceIndex != 7) {
                                        if (MyPeopleAshaActivity.this.selectedServiceIndex == 8) {
                                            MyPeopleAshaActivity.this.retrieveLCDC02FamilyListFromDB(null);
                                            return;
                                        }
                                        return;
                                    }
                                    MyPeopleAshaActivity.this.retrieveFilariaFamilyListFromDB(null);
                                    return;
                                }
                                MyPeopleAshaActivity.this.retrieveLCDCFamilyListFromDB(null);
                            }
                        });
                    }
                }
            }, MyPeopleAshaActivity.DELAY);
        }
    }

    public void retrieveLCDCFamilyListFromDB(String str) {
        this.offset = 0L;
        this.selectedFamilyIndex = -1;
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.ashaArea = arrayList;
        arrayList.add(this.selectedAshaArea);
        if (str == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForLCDCByArea(Collections.singletonList(this.selectedAshaArea), this.limit, this.offset);
            this.offset += this.limit;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForLCDCByArea(Collections.singletonList(this.selectedAshaArea), str);
        }
        setFamilySelectionScreen(str != null);
    }

    public void retrieveLCDC02FamilyListFromDB(String str) {
        this.offset = 0L;
        this.selectedFamilyIndex = -1;
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.ashaArea = arrayList;
        arrayList.add(this.selectedAshaArea);
        if (str == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForLCDC02ByArea(Collections.singletonList(this.selectedAshaArea), this.limit, this.offset);
            this.offset += this.limit;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForLCDC02ByArea(Collections.singletonList(this.selectedAshaArea), str);
        }
        setFamilySelectionScreen(str != null);
    }

    public void retrieveFilariaFamilyListFromDB(CharSequence charSequence) {
        this.offset = 0L;
        this.selectedFamilyIndex = -1;
        if (charSequence == null) {
            this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForFilariaByArea(Collections.singletonList(this.selectedAshaArea), this.limit, this.offset);
            this.offset += this.limit;
        } else {
            this.familyDataBeans = this.fhsService.searchFamilyDataBeansForFilariaByArea(Collections.singletonList(this.selectedAshaArea), charSequence.toString());
        }
        setFamilySelectionScreen(charSequence != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.screen = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.headerTitle);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        List<FamilyDataBean> list = this.familyDataBeans;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
            this.headerTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            List<ListItemDataBean> familyList = getFamilyList(this.familyDataBeans);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity$$ExternalSyntheticLambda1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m306xf6f82228(adapterView, view, i, j);
                }
            };
            if (z) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, null);
            } else {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, familyList, R.layout.listview_row_with_two_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.paginatedListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m307xb16dc2a9(view);
                }
            });
        }
        this.footerView.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setFamilySelectionScreen$1$com-argusoft-sewa-android-app-activity-MyPeopleAshaActivity, reason: not valid java name */
    /* synthetic */ void m306xf6f82228(AdapterView adapterView, View view, int i, long j) {
        this.selectedFamilyIndex = i;
    }

    /* renamed from: lambda$setFamilySelectionScreen$2$com-argusoft-sewa-android-app-activity-MyPeopleAshaActivity, reason: not valid java name */
    /* synthetic */ void m307xb16dc2a9(View view) {
        navigateToHomeScreen(false);
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

    public void retrieveMemberListFromDB(String str) {
        this.searchString = str;
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.ashaArea = arrayList;
        arrayList.add(this.selectedAshaArea);
        this.offset = 0L;
        this.selectedPeopleIndex = -1;
        int i = this.selectedServiceIndex;
        if (i == 0) {
            this.memberDataBeans = this.fhsService.retrieveEligibleCouplesByAshaArea(this.ashaArea, null, str, this.limit, 0L);
        } else if (i == 1) {
            this.memberDataBeans = this.fhsService.retrievePregnantWomenByAshaArea(this.ashaArea, false, null, str, this.limit, 0L);
        } else if (i == 2) {
            this.memberDataBeans = this.fhsService.retrieveWPDWomenByAshaArea(this.ashaArea, null, str, this.limit, 0L);
        } else if (i == 3) {
            this.memberDataBeans = this.fhsService.retrieveMemberListForRchRegister(this.ashaArea, null, str, this.limit, 0L);
        } else if (i == 4) {
            this.memberDataBeans = this.fhsService.retrieveMemberListForNPCB(this.ashaArea, str);
            setNpcbMemberListScreen();
            return;
        } else if (i == 5) {
            setMalariaScreen(str);
            return;
        } else if (i == 7) {
            this.memberDataBeans = this.fhsService.retrieveMembersForSideEffectsOfFilaria(this.ashaArea, null, str, this.limit, 0L);
        }
        this.offset += this.limit;
        setMemberSelectionScreen(str != null);
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        int i = this.selectedServiceIndex;
        if (i != 7) {
            if (i == 6 || i == 8) {
                onLoadMoreFamilyBackground();
                return;
            } else {
                onLoadMoreBackground();
                return;
            }
        }
        int i2 = this.selectedFilariasisType;
        if (i2 == 0) {
            onLoadMoreFamilyBackground();
        } else if (i2 == 1) {
            onLoadMoreBackground();
        }
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> arrayList = new ArrayList<>();
        if (this.isReAppear.booleanValue()) {
            return;
        }
        int i = this.selectedServiceIndex;
        if (i == 0) {
            arrayList = this.fhsService.retrieveEligibleCouplesByAshaArea(this.ashaArea, null, this.searchString, this.limit, this.offset);
        } else if (i == 1) {
            arrayList = this.fhsService.retrievePregnantWomenByAshaArea(this.ashaArea, false, null, this.searchString, this.limit, this.offset);
        } else if (i == 2) {
            arrayList = this.fhsService.retrieveWPDWomenByAshaArea(this.ashaArea, null, this.searchString, this.limit, this.offset);
        } else if (i == 5) {
            arrayList = this.fhsService.retrieveMemberListForRchRegister(this.ashaArea, null, this.searchString, this.limit, this.offset);
        } else if (i == 6) {
            arrayList = this.malariaService.retrieveMembersForMalariaByAshaArea(this.ashaArea, null, this.searchString, this.limit, this.offset);
        } else if (i == 7) {
            arrayList = this.fhsService.retrieveMembersForSideEffectsOfFilaria(this.ashaArea, null, this.searchString, this.limit, this.offset);
        }
        this.offset += this.limit;
        onLoadMoreUi(arrayList);
    }

    public void onLoadMoreFamilyBackground() {
        List<FamilyDataBean> arrayList = new ArrayList<>();
        int i = this.selectedServiceIndex;
        if (i == 6) {
            arrayList = this.fhsService.retrieveFamilyDataBeansForLCDCByArea(Collections.singletonList(this.selectedAshaArea), this.limit, this.offset);
        } else if (i == 7) {
            arrayList = this.fhsService.retrieveFamilyDataBeansForFilariaByArea(Collections.singletonList(this.selectedAshaArea), this.limit, this.offset);
        } else if (i == 8) {
            arrayList = this.fhsService.retrieveFamilyDataBeansForLCDC02ByArea(Collections.singletonList(this.selectedAshaArea), this.limit, this.offset);
        }
        this.offset += this.limit;
        onLoadMoreUiFamilies(arrayList);
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
            }
            this.memberDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, arrayList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }

    public void onLoadMoreUiFamilies(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> familyList = getFamilyList(list);
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, familyList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }

    public void setMalariaScreen(String str) {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = MALARIA_SCREEN;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.MALARIA_EXAMINE));
        arrayList.add(new ListItemDataBean(LabelConstants.MALARIA_RE_EXAMINE));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MyPeopleAshaActivity.this.selectedServiceIndex = i;
                MyPeopleAshaActivity.this.setMemberSelectionScreen(false);
                MyPeopleAshaActivity myPeopleAshaActivity = MyPeopleAshaActivity.this;
                myPeopleAshaActivity.onClick(myPeopleAshaActivity.nextButton);
                MyPeopleAshaActivity.this.footerView.setVisibility(0);
            }
        }, null));
        this.footerView.setVisibility(8);
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    public void setNpcbMemberListScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = MEMBER_SELECTION_SCREEN;
        ArrayList arrayList = new ArrayList();
        List<MemberDataBean> list = this.memberDataBeans;
        if (list != null && !list.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this.context, LabelConstants.SERVICE_NPCB_REFERRED_PATIENTS));
            for (MemberDataBean memberDataBean : this.memberDataBeans) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), UtilBean.getMyLabel(LabelConstants.STATUS), true));
            }
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, null, null);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBERS_REFFERD_FOR_NPCB)));
        }
        this.nextButton.setText(UtilBean.getMyLabel(GlobalTypes.MAIN_MENU));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyPeopleAshaActivity.this.navigateToHomeScreen(false);
            }
        });
        hideProcessDialog();
    }

    public void setMemberSelectionScreen(boolean z) {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.headerTitle);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.nextButton.setText("Next");
        ArrayList arrayList = new ArrayList();
        if (!this.memberDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
            this.headerTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            for (MemberDataBean memberDataBean : this.memberDataBeans) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
            }
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.8
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MyPeopleAshaActivity.this.selectedPeopleIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        this.footerView.setVisibility(0);
        hideProcessDialog();
    }

    private void startDynamicFormActivity() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        try {
            if (this.isReAppear.booleanValue()) {
                this.formMetaDataUtil.setMetaDataForRchFormByFormType(this.formTypes.get(3), this.selectedMember.getId(), this.selectedMember.getFamilyId(), null, defaultSharedPreferences);
            } else {
                this.formMetaDataUtil.setMetaDataForRchFormByFormType(this.formTypes.get(this.selectedServiceIndex), this.selectedMember.getId(), this.selectedMember.getFamilyId(), null, defaultSharedPreferences);
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            if (this.isReAppear.booleanValue()) {
                intent.putExtra("entity", this.formTypes.get(3));
            } else {
                intent.putExtra("entity", this.formTypes.get(this.selectedServiceIndex));
            }
            startActivityForResult(intent, REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyPeopleAshaActivity.this.alertDialog.dismiss();
                    MyPeopleAshaActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    private void startDynamicFormActivityForLCDC(String str) {
        try {
            this.formMetaDataUtil.setMetaDataForLcdcCampaign(this.selectedFamily, this, str);
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", str);
            startActivityForResult(intent, REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyPeopleAshaActivity.this.alertDialog.dismiss();
                    MyPeopleAshaActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    private void startDynamicFormActivityForFilaria() {
        try {
            int i = this.selectedFilariasisType;
            if (i == 0) {
                this.formMetaDataUtil.setMetaDataForFilariaCampaign(this.selectedFamily, this, i, null);
            } else if (i == 1) {
                this.formMetaDataUtil.setMetaDataForFilariaCampaign(null, this, i, this.selectedMember);
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", FormConstants.FILARIA_CAMPAIGN);
            startActivityForResult(intent, REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY.intValue());
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyPeopleAshaActivity.this.alertDialog.dismiss();
                    MyPeopleAshaActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.footerView.setVisibility(0);
        if (i == REQUEST_CODE_FOR_MY_PEOPLE_ASHA_ACTIVITY.intValue()) {
            this.selectedPeopleIndex = -1;
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            LinearLayout linearLayout = this.bodyLayoutContainer;
            linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
            if (this.selectedServiceIndex == 4) {
                setVisits();
            } else if (this.isMalaria.booleanValue()) {
                this.isMalaria = false;
                this.isReAppear = false;
                setMalariaScreen(null);
            } else {
                int i3 = this.selectedServiceIndex;
                if (i3 == 6) {
                    addSearchTextBoxForFamily();
                    retrieveLCDCFamilyListFromDB(null);
                } else if (i3 == 7) {
                    showMDAorSideEffectsScreen();
                } else if (i3 == 8) {
                    addSearchTextBoxForFamily();
                    retrieveLCDC02FamilyListFromDB(null);
                } else {
                    LinearLayout linearLayout2 = this.bodyLayoutContainer;
                    linearLayout2.addView(lastUpdateLabelView(this.sewaService, linearLayout2));
                    addSearchTextBoxForMember();
                    retrieveMemberListFromDB(null);
                }
            }
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
    }

    public void setMotherDetailsScreen() {
        this.screen = MOTHER_DETAILS_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.nextButton.setText("Okay");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this, UtilBean.getMyLabel(LabelConstants.MEMBERS_DETAILS)));
        MemberDataBean memberDataBean = this.selectedMember;
        if (memberDataBean != null) {
            FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId());
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.selectedMember)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.HEALTH_ID)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.selectedMember.getUniqueHealthId()));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.selectedMember.getFamilyId()));
            if (this.selectedMember.getMobileNumber() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.selectedMember.getMobileNumber()));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, simpleDateFormat.format(this.selectedMember.getDob())));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.AGE)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getAgeDisplayOnGivenDate(new Date(this.selectedMember.getDob().longValue()), new Date())));
            if (this.selectedMember.getYearOfWedding() != null) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(this.selectedMember.getDob().longValue());
                int i = calendar.get(1);
                Integer numValueOf = Integer.valueOf(i);
                int iIntValue = this.selectedMember.getYearOfWedding().intValue();
                numValueOf.getClass();
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.AGE_AT_WEDDING)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, Integer.toString(iIntValue - i)));
            }
            if (this.selectedMember.getLmpDate() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LMP_DATE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, simpleDateFormat.format(this.selectedMember.getLmpDate())));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.RELIGION)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getReligion())));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CASTE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.fhsService.getValueOfListValuesById(familyDataBeanRetrieveFamilyDataBeanByFamilyId.getCaste())));
            }
            if (familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag() != null && familyDataBeanRetrieveFamilyDataBeanByFamilyId.getBplFlag().booleanValue()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BPL)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.FAMILY_IS_BPL));
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.BPL)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.FAMILY_IS_NOT_BPL));
            }
            String childrenCount = this.fhsService.getChildrenCount(Long.valueOf(this.selectedMember.getId()), true, false, false);
            if (childrenCount != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TOTAL_LIVING_CHILDREN)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, childrenCount));
            }
            String childrenCount2 = this.fhsService.getChildrenCount(Long.valueOf(this.selectedMember.getId()), false, true, false);
            if (childrenCount2 != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TOTAL_MALE_CHILDREN)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, childrenCount2));
            }
            String childrenCount3 = this.fhsService.getChildrenCount(Long.valueOf(this.selectedMember.getId()), false, false, true);
            if (childrenCount3 != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.TOTAL_FEMALE_CHILDREN)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, childrenCount3));
            }
            MemberDataBean latestChildByMotherId = this.fhsService.getLatestChildByMotherId(Long.valueOf(this.selectedMember.getId()));
            if (latestChildByMotherId != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LATEST_CHILD_NAME)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(latestChildByMotherId)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LATEST_CHILD_GENDER)));
                if (latestChildByMotherId.getGender().equals("M")) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.MALE));
                } else {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, LabelConstants.FEMALE));
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.LATEST_CHILD_AGE)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getAgeDisplayOnGivenDate(new Date(latestChildByMotherId.getDob().longValue()), new Date())));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.ADDRESS)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getFamilyFullAddress(familyDataBeanRetrieveFamilyDataBeanByFamilyId)));
        }
    }

    public void showNotOnlineMessage() {
        if (this.sewaService.isOnline()) {
            return;
        }
        hideProcessDialog();
        this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyPeopleAshaActivity.this.alertDialog.dismiss();
                MyPeopleAshaActivity.this.hideProcessDialog();
                MyPeopleAshaActivity.this.bodyLayoutContainer.removeAllViews();
                MyPeopleAshaActivity.this.memberDataBeans.clear();
                MyPeopleAshaActivity.this.setServiceSelectionScreen();
                MyPeopleAshaActivity.this.nextButton.setText(UtilBean.getMyLabel("Next"));
                MyPeopleAshaActivity.this.nextButton.setOnClickListener(MyPeopleAshaActivity.this);
            }
        }, DynamicUtils.BUTTON_OK);
        this.alertDialog.show();
    }

    public void retrieveRCHServicesProvidedToMember() {
        List<LinkedHashMap<String, Object>> result;
        this.screen = RCH_REGISTER_TABLE_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, -5);
            Date time = calendar.getTime();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, -15);
            Date time2 = calendar2.getTime();
            Calendar calendar3 = Calendar.getInstance();
            calendar3.add(1, -49);
            Date time3 = calendar3.getTime();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put("memberId", this.selectedMember.getId());
            if (new Date(this.selectedMember.getDob().longValue()).after(time)) {
                linkedHashMap2.put("Child Services Provided", new QueryMobDataBean("mob_asha_child_services_provided", null, linkedHashMap3, 0));
            } else if (new Date(this.selectedMember.getDob().longValue()).before(time) && new Date(this.selectedMember.getDob().longValue()).after(time2)) {
                setServicesProvidedScreenForRchRegister(null);
            } else if (new Date(this.selectedMember.getDob().longValue()).before(time2) && new Date(this.selectedMember.getDob().longValue()).after(time3) && this.selectedMember.getGender().equalsIgnoreCase("F") && this.selectedMember.getMaritalStatus().equalsIgnoreCase("629")) {
                linkedHashMap2.put("LMP Follow Up Services Provided", new QueryMobDataBean("mob_asha_lmp_services_provided", null, linkedHashMap3, 0));
                linkedHashMap2.put("ANC Services Provided", new QueryMobDataBean("mob_asha_anc_services_provided", null, linkedHashMap3, 0));
                linkedHashMap2.put("WPD Services Provided", new QueryMobDataBean("mob_asha_wpd_services_provided", null, linkedHashMap3, 0));
                linkedHashMap2.put("PNC Services Provided", new QueryMobDataBean("mob_asha_pnc_services_provided", null, linkedHashMap3, 0));
            }
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                QueryMobDataBean queryMobDataBeanExecuteQuery = this.restClient.executeQuery((QueryMobDataBean) entry.getValue());
                if (queryMobDataBeanExecuteQuery != null && (result = queryMobDataBeanExecuteQuery.getResult()) != null && !result.isEmpty()) {
                    linkedHashMap.put((String) entry.getKey(), result);
                }
            }
        } catch (RestHttpException e) {
            Log.e(getClass().getName(), null, e);
        }
        setServicesProvidedScreenForRchRegister(linkedHashMap);
    }

    public void setServicesProvidedScreenForRchRegister(Map<String, List<LinkedHashMap<String, Object>>> map) {
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MEMBER_NAME));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.selectedMember)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.HEALTH_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.selectedMember.getUniqueHealthId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FAMILY_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.selectedMember.getFamilyId()));
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
        }
        hideProcessDialog();
    }

    private void createTableLayout(List<String> list, List<LinkedHashMap<String, Object>> list2) {
        TableLayout tableLayout = new TableLayout(this);
        tableLayout.setPadding(10, 10, 10, 10);
        tableLayout.setLayoutParams(new TableLayout.LayoutParams(-1, -1));
        this.layoutParams = new TableRow.LayoutParams(0, -1, 1.0f);
        TableRow tableRow = new TableRow(this);
        tableRow.setPadding(10, 15, 10, 15);
        tableRow.setLayoutParams(new TableRow.LayoutParams(-1));
        for (String str : list) {
            MaterialTextView materialTextView = new MaterialTextView(this);
            materialTextView.setGravity(17);
            materialTextView.setPadding(10, 10, 10, 10);
            materialTextView.setText(UtilBean.getMyLabel(str));
            materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
            tableRow.addView(materialTextView, this.layoutParams);
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
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-1);
        this.layoutParams = new TableRow.LayoutParams(0, -1, 1.0f);
        TableRow tableRow = new TableRow(this);
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setLayoutParams(layoutParams);
        for (String str : list) {
            MaterialTextView materialTextView = new MaterialTextView(this);
            materialTextView.setGravity(17);
            materialTextView.setPadding(10, 10, 10, 10);
            Object obj = linkedHashMap.get(str);
            if (obj != null) {
                materialTextView.setText(obj.toString());
            } else {
                materialTextView.setText(LabelConstants.N_A);
            }
            tableRow.addView(materialTextView, this.layoutParams);
        }
        TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(0, -1, 0.5f);
        ImageView imageView = MyStaticComponents.getImageView(this.context, -1, R.drawable.ic_arrow_right, new LinearLayout.LayoutParams(-2, -2));
        imageView.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.black));
        imageView.setMaxWidth(30);
        imageView.setMaxHeight(30);
        imageView.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.listview_text_color_selector));
        tableRow.addView(imageView, layoutParams2);
        tableRow.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Object obj2 = linkedHashMap.get("hiddenVisitId");
                Object obj3 = linkedHashMap.get("hiddenServiceType");
                if (obj2 == null || obj3 == null) {
                    return;
                }
                Intent intent = new Intent(MyPeopleAshaActivity.this.context, (Class<?>) WorkRegisterLineListActivity_.class);
                intent.putExtra("visitId", obj2.toString());
                intent.putExtra("serviceType", obj3.toString());
                MyPeopleAshaActivity.this.startActivity(intent);
            }
        });
        tableLayout.addView(tableRow, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r6) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }
}
