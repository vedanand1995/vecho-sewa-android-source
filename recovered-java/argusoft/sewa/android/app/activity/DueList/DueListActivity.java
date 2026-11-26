package com.argusoft.sewa.android.app.activity.DueList;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment;
import com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment_;
import com.argusoft.sewa.android.app.activity.DueList.CS.DueListCSFragment;
import com.argusoft.sewa.android.app.activity.DueList.CS.DueListCSFragment_;
import com.argusoft.sewa.android.app.activity.DueList.PNC.DueListPNCFragment;
import com.argusoft.sewa.android.app.activity.DueList.PNC.DueListPNCFragment_;
import com.argusoft.sewa.android.app.activity.LoginActivity_;
import com.argusoft.sewa.android.app.activity.MenuActivity;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textview.MaterialTextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class DueListActivity extends MenuActivity implements View.OnClickListener {
    private static final String DUE_LIST_SCREEN = "dueListScreen";
    private static final String LOCATION_SELECTION_SCREEN = "locationSelectionScreen";
    private DueListANCFragment ancFragment;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    private DueListCSFragment csFragment;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    private String fromDate;
    private LinearLayout globalPanel;
    private AutoCompleteTextView monthDropdown;
    private ArrayList<String> months;
    private Button nextButton;
    private DueListPNCFragment pncFragment;
    private String screenName;
    private MaterialTextView selectAshaAreaTextView;
    private Integer selectedVillageId;
    private String toDate;
    private Spinner villageSpinner;
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedVillageIds = new ArrayList();
    private List<Integer> selectedAreaIds = new ArrayList();
    private String selectedMonthText = null;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        initView();
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        setBodyDetail();
    }

    public void setBodyDetail() {
        this.villageList = this.fhsService.getDistinctLocationsAssignedToUser();
        setSubTitle(null);
        if (this.villageList.isEmpty()) {
            this.screenName = LOCATION_SELECTION_SCREEN;
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.DATA_NOT_SYNCED_ALERT)));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.DueList.DueListActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m155x42e0fc4b(view);
                }
            };
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(onClickListener);
            hideProcessDialog();
            return;
        }
        if (this.villageList.size() == 1) {
            this.selectedVillageId = this.villageList.get(0).getActualID();
            this.selectedVillageIds.add(this.villageList.get(0).getActualID());
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.selectedVillageId);
            this.screenName = LOCATION_SELECTION_SCREEN;
            addAshaAreaSelectionSpinner();
            return;
        }
        this.screenName = LOCATION_SELECTION_SCREEN;
        addVillageSelectionSpinner();
    }

    /* renamed from: lambda$setBodyDetail$0$com-argusoft-sewa-android-app-activity-DueList-DueListActivity, reason: not valid java name */
    /* synthetic */ void m155x42e0fc4b(View view) {
        navigateToHomeScreen(false);
    }

    public void addAshaAreaSelectionSpinner() {
        this.screenName = LOCATION_SELECTION_SCREEN;
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
        hideProcessDialog();
    }

    public void addVillageSelectionSpinner() {
        this.screenName = LOCATION_SELECTION_SCREEN;
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.DueList.DueListActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 == 0) {
                    DueListActivity.this.ashaAreaList = null;
                } else {
                    DueListActivity dueListActivity = DueListActivity.this;
                    dueListActivity.selectedVillageId = ((LocationBean) dueListActivity.villageList.get(i2 - 1)).getActualID();
                    DueListActivity dueListActivity2 = DueListActivity.this;
                    dueListActivity2.ashaAreaList = dueListActivity2.fhsService.retrieveAshaAreaAssignedToUser(DueListActivity.this.selectedVillageId);
                }
                DueListActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        hideProcessDialog();
    }

    private void setTabsData() throws Resources.NotFoundException {
        this.screenName = DUE_LIST_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, IdConstants.DATE_PICKER_TEXT_DATE_ID, 16, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.removeAllViews();
        View viewInflate = LayoutInflater.from(linearLayout.getContext()).inflate(R.layout.activity_due_list, (ViewGroup) linearLayout, false);
        linearLayout.addView(viewInflate);
        this.bodyLayoutContainer.addView(linearLayout);
        this.bodyLayoutContainer.setPadding(0, 0, 0, 0);
        this.footerView.setVisibility(8);
        this.monthDropdown = (AutoCompleteTextView) viewInflate.findViewById(R.id.month_dropdown);
        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.cohort_tabs);
        ViewPager viewPager = (ViewPager) viewInflate.findViewById(R.id.cohort_view_pager);
        setupMonthDropdown();
        setupViewPager(viewPager);
        tabLayout.setupWithViewPager(viewPager);
        setTitle(LabelConstants.DUE_LIST);
        setSubTitle(null);
        notifyFragmentsWithDates(this.monthDropdown.getText().toString());
        hideProcessDialog();
    }

    private void setupMonthDropdown() {
        this.months = new ArrayList<>();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM yyyy", Locale.getDefault());
        Calendar calendar = Calendar.getInstance();
        String str = simpleDateFormat.format(calendar.getTime());
        this.selectedMonthText = str;
        for (int i = 0; i < 5; i++) {
            this.months.add(simpleDateFormat.format(calendar.getTime()));
            calendar.add(2, 1);
        }
        this.monthDropdown.setAdapter(new ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, this.months));
        this.monthDropdown.setText((CharSequence) str, false);
        this.monthDropdown.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.DueList.DueListActivity$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                this.f$0.m156x91948491(adapterView, view, i2, j);
            }
        });
    }

    /* renamed from: lambda$setupMonthDropdown$1$com-argusoft-sewa-android-app-activity-DueList-DueListActivity, reason: not valid java name */
    /* synthetic */ void m156x91948491(AdapterView adapterView, View view, int i, long j) {
        String str = this.months.get(i);
        this.selectedMonthText = str;
        notifyFragmentsWithDates(str);
    }

    private void notifyFragmentsWithDates(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new SimpleDateFormat("MMMM yyyy", Locale.getDefault()).parse(str));
            calendar.set(5, 1);
            this.fromDate = simpleDateFormat.format(calendar.getTime());
            calendar.set(5, calendar.getActualMaximum(5));
            String str2 = simpleDateFormat.format(calendar.getTime());
            this.toDate = str2;
            DueListANCFragment dueListANCFragment = this.ancFragment;
            if (dueListANCFragment != null) {
                dueListANCFragment.onDateRangeSelected(this.fromDate, str2, this.selectedVillageIds);
            }
            DueListPNCFragment dueListPNCFragment = this.pncFragment;
            if (dueListPNCFragment != null) {
                dueListPNCFragment.onDateRangeSelected(this.fromDate, this.toDate, this.selectedVillageIds);
            }
            DueListCSFragment dueListCSFragment = this.csFragment;
            if (dueListCSFragment != null) {
                dueListCSFragment.onDateRangeSelected(this.fromDate, this.toDate, this.selectedVillageIds);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setupViewPager(ViewPager viewPager) throws Resources.NotFoundException {
        DueListPagerAdapter dueListPagerAdapter = new DueListPagerAdapter(getSupportFragmentManager());
        this.ancFragment = DueListANCFragment_.builder().argText("ANC list").build();
        this.pncFragment = DueListPNCFragment_.builder().argText("PNC list").build();
        this.csFragment = DueListCSFragment_.builder().argText("Under 5 list").build();
        dueListPagerAdapter.addFragment(this.ancFragment, UtilBean.getMyLabel("ANC"));
        dueListPagerAdapter.addFragment(this.pncFragment, UtilBean.getMyLabel(SewaConstants.PNC_MOTHER));
        dueListPagerAdapter.addFragment(this.csFragment, UtilBean.getMyLabel("VACCINES"));
        viewPager.setAdapter(dueListPagerAdapter);
        viewPager.setOffscreenPageLimit(3);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        String string;
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON && LOCATION_SELECTION_SCREEN.equals(this.screenName)) {
            showProcessDialog();
            if (this.villageList.size() == 1) {
                string = this.villageList.get(0).getName();
            } else {
                string = this.villageSpinner.getSelectedItem().toString();
            }
            if (!string.equals(LabelConstants.ALL) && !string.equals(UtilBean.getMyLabel(LabelConstants.ALL))) {
                Iterator<LocationBean> it = this.villageList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    LocationBean next = it.next();
                    if (string.equals(next.getName())) {
                        this.selectedVillageId = next.getActualID();
                        if (!this.selectedVillageIds.contains(next.getActualID())) {
                            this.selectedVillageIds.add(next.getActualID());
                        }
                    }
                }
                Spinner spinner = this.ashaAreaSpinner;
                if (spinner != null) {
                    String string2 = spinner.getSelectedItem().toString();
                    if (!string2.equals(LabelConstants.ALL) && !string2.equals(UtilBean.getMyLabel(LabelConstants.ALL))) {
                        Iterator<LocationBean> it2 = this.ashaAreaList.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            LocationBean next2 = it2.next();
                            if (string2.equals(next2.getName())) {
                                this.selectedAreaIds.add(next2.getActualID());
                                break;
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
            setTabsData();
        }
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
        setTitle(UtilBean.getMyLabel(LabelConstants.DUE_LIST));
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            String str = this.screenName;
            if (str == null || str.isEmpty()) {
                navigateToHomeScreen(false);
                return true;
            }
            String str2 = this.screenName;
            str2.hashCode();
            if (str2.equals(DUE_LIST_SCREEN) || str2.equals(LOCATION_SELECTION_SCREEN)) {
                finish();
                return true;
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
