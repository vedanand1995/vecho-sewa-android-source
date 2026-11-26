package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.NcdServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NCDRegisterFHWActivity extends MenuActivity implements View.OnClickListener {
    private static final String MEMBER_LIST_SCREEN = "memberListScreen";
    private static final String SCREENING_BREAST = "breast";
    private static final String SCREENING_CERVICAL = "cervical";
    private static final String SCREENING_DIABETES = "diabetes";
    private static final String SCREENING_HYPERTENSION = "hypertension";
    private static final String SCREENING_ORAL = "oral";
    private static final String SCREENING_SELECTION_SCREEN = "screeningSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    private LinearLayout globalPanel;
    private List<MemberBean> memberBeans;
    private ArrayList<ListItemDataBean> memberList;
    private ListView memberListView;
    NcdServiceImpl ncdService;
    private Button nextButton;
    private String screen;
    private String selectedScreening;
    private Integer selectedVillage;
    private Spinner villageSpinner;
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAshaAreas = new ArrayList();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
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
        setTitle(UtilBean.getTitleText(LabelConstants.NCD_REGISTER_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> distinctLocationsAssignedToUser = this.fhsService.getDistinctLocationsAssignedToUser();
        this.villageList = distinctLocationsAssignedToUser;
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (distinctLocationsAssignedToUser.size() == 1) {
            this.selectedVillage = this.villageList.get(0).getActualID();
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageSelectionSpinner();
        } else if (this.villageList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
            addVillageSelectionSpinner();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            setSubTitle(null);
            String str = this.screen;
            str.hashCode();
            if (str.equals(MEMBER_LIST_SCREEN)) {
                this.bodyLayoutContainer.removeAllViews();
                setScreeningSelectionScreen();
                this.nextButton.setText("Next");
                return;
            }
            if (str.equals(VILLAGE_SELECTION_SCREEN)) {
                showProcessDialog();
                String string = this.villageSpinner.getSelectedItem().toString();
                Iterator<LocationBean> it = this.villageList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    LocationBean next = it.next();
                    if (string.equals(next.getName())) {
                        this.selectedVillage = next.getActualID();
                        break;
                    }
                }
                String string2 = this.ashaAreaSpinner.getSelectedItem().toString();
                this.selectedAshaAreas = new ArrayList();
                if (string2.equals(LabelConstants.ALL)) {
                    Iterator<LocationBean> it2 = this.ashaAreaList.iterator();
                    while (it2.hasNext()) {
                        this.selectedAshaAreas.add(it2.next().getActualID());
                    }
                } else {
                    Iterator<LocationBean> it3 = this.ashaAreaList.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        }
                        LocationBean next2 = it3.next();
                        if (string2.equals(next2.getName())) {
                            this.selectedAshaAreas.add(next2.getActualID());
                            break;
                        }
                    }
                }
                this.bodyLayoutContainer.removeAllViews();
                setScreeningSelectionScreen();
            }
        }
    }

    public void addVillageSelectionSpinner() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_VILLAGE));
        String[] strArr = new String[this.villageList.size()];
        Iterator<LocationBean> it = this.villageList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.NCDRegisterFHWActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                NCDRegisterFHWActivity.this.bodyLayoutContainer.removeView(NCDRegisterFHWActivity.this.ashaAreaSpinner);
                NCDRegisterFHWActivity nCDRegisterFHWActivity = NCDRegisterFHWActivity.this;
                nCDRegisterFHWActivity.ashaAreaList = nCDRegisterFHWActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) NCDRegisterFHWActivity.this.villageList.get(i2)).getActualID());
                NCDRegisterFHWActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_ASHA_AREA)));
        addAshaAreaSelectionSpinner();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAshaAreaSelectionSpinner() {
        String[] strArr = new String[this.ashaAreaList.size() + 1];
        strArr[0] = LabelConstants.ALL;
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        this.ashaAreaSpinner = spinner;
        this.bodyLayoutContainer.addView(spinner);
        hideProcessDialog();
    }

    private void setScreeningSelectionScreen() {
        this.screen = SCREENING_SELECTION_SCREEN;
        this.memberList = new ArrayList<>();
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_TYPE_OF_DISEASE));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.SUSPECTED_FOR_DIABETES));
        arrayList.add(new ListItemDataBean(LabelConstants.SUSPECTED_FOR_HYPERTENSION));
        arrayList.add(new ListItemDataBean(LabelConstants.SUSPECTED_FOR_ORAL_CANCER));
        arrayList.add(new ListItemDataBean(LabelConstants.SUSPECTED_FOR_CERVICAL_CANCER));
        arrayList.add(new ListItemDataBean(LabelConstants.SUSPECTED_FOR_BREAST_CANCER));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NCDRegisterFHWActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i != -1) {
                    if (i == 0) {
                        NCDRegisterFHWActivity.this.selectedScreening = NCDRegisterFHWActivity.SCREENING_DIABETES;
                    } else if (i == 1) {
                        NCDRegisterFHWActivity.this.selectedScreening = NCDRegisterFHWActivity.SCREENING_HYPERTENSION;
                    } else if (i == 2) {
                        NCDRegisterFHWActivity.this.selectedScreening = NCDRegisterFHWActivity.SCREENING_ORAL;
                    } else if (i == 3) {
                        NCDRegisterFHWActivity.this.selectedScreening = NCDRegisterFHWActivity.SCREENING_CERVICAL;
                    } else if (i == 4) {
                        NCDRegisterFHWActivity.this.selectedScreening = NCDRegisterFHWActivity.SCREENING_BREAST;
                    }
                    NCDRegisterFHWActivity.this.retrieveMemberList();
                    NCDRegisterFHWActivity.this.nextButton.setText("Okay");
                    NCDRegisterFHWActivity.this.footerView.setVisibility(0);
                }
            }
        }, null));
        this.footerView.setVisibility(8);
        hideProcessDialog();
    }

    public void retrieveMemberList() {
        showProcessDialog();
        this.memberBeans = this.ncdService.retrieveMembersForNcdRegisterFhw(this.selectedVillage, this.selectedAshaAreas, this.selectedScreening);
        setMemberListScreen();
    }

    public void setMemberListScreen() {
        this.screen = MEMBER_LIST_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        String str = this.selectedScreening;
        str.hashCode();
        switch (str) {
            case "breast":
                addBreastScreenedMemberList();
                break;
            case "hypertension":
                addHypertensionScreenedMemberList();
                break;
            case "cervical":
                addCervicalScreenedMemberList();
                break;
            case "diabetes":
                addSuspectedDiabetesScreenedMemberList();
                break;
            case "oral":
                addOralScreenedMemberList();
                break;
        }
        hideProcessDialog();
    }

    private void addSuspectedDiabetesScreenedMemberList() {
        this.bodyLayoutContainer.removeAllViews();
        List<MemberBean> list = this.memberBeans;
        if (list != null && !list.isEmpty()) {
            for (MemberBean memberBean : this.memberBeans) {
                if (memberBean.getAdditionalInfo() != null && !memberBean.getAdditionalInfo().isEmpty()) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean.getBloodSugar() != null && memberAdditionalInfoDataBean.getBloodSugar().intValue() >= 140) {
                        this.memberList.add(new ListItemDataBean(memberBean.getFamilyId(), memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), UtilBean.getMyLabel(LabelConstants.BLOOD_SUGAR), memberAdditionalInfoDataBean.getBloodSugar() == null ? UtilBean.getMyLabel("Not available") : memberAdditionalInfoDataBean.getBloodSugar() + " mg/dl"));
                    }
                }
            }
            if (this.memberList.isEmpty()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_SUSPECTED_FOR_DIABETES_IN_AREA));
                return;
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SUSPECTED_FOR_DIABETES));
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, this.memberList, R.layout.listview_row_with_two_item, null, null);
            this.memberListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_IN_YOUR_AREA));
    }

    private void addHypertensionScreenedMemberList() {
        this.bodyLayoutContainer.removeAllViews();
        List<MemberBean> list = this.memberBeans;
        if (list != null && !list.isEmpty()) {
            this.memberList.clear();
            for (MemberBean memberBean : this.memberBeans) {
                if (memberBean.getAdditionalInfo() != null && !memberBean.getAdditionalInfo().isEmpty()) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean.getSystolicBp() != null && memberAdditionalInfoDataBean.getDiastolicBp() != null && (memberAdditionalInfoDataBean.getSystolicBp().intValue() >= 140 || memberAdditionalInfoDataBean.getDiastolicBp().intValue() >= 90)) {
                        this.memberList.add(new ListItemDataBean(memberBean.getFamilyId(), memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), UtilBean.getMyLabel(LabelConstants.BLOOD_PRESSURE), (memberAdditionalInfoDataBean.getSystolicBp() != null && memberAdditionalInfoDataBean.getDiastolicBp() != null) ? memberAdditionalInfoDataBean.getSystolicBp() + "/" + memberAdditionalInfoDataBean.getDiastolicBp() + " mmHg" : UtilBean.getMyLabel("Not available")));
                    }
                }
            }
            if (this.memberList.isEmpty()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_SUSPECTED_FOR_HYPERTENSION_IN_AREA));
                return;
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SUSPECTED_FOR_HYPERTENSION));
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, this.memberList, R.layout.listview_row_with_two_item, null, null);
            this.memberListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_IN_YOUR_AREA));
    }

    private void addOralScreenedMemberList() {
        this.bodyLayoutContainer.removeAllViews();
        List<MemberBean> list = this.memberBeans;
        if (list != null && !list.isEmpty()) {
            this.memberList.clear();
            for (MemberBean memberBean : this.memberBeans) {
                if (memberBean.getAdditionalInfo() != null && !memberBean.getAdditionalInfo().isEmpty()) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean.getSuspectedForOralCancer() != null && memberAdditionalInfoDataBean.getSuspectedForOralCancer().booleanValue()) {
                        this.memberList.add(new ListItemDataBean(memberBean.getFamilyId(), memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), (String) null, (String) null));
                    }
                }
            }
            if (this.memberList.isEmpty()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_SUSPECTED_FOR_ORAL_CANCER_IN_AREA));
                return;
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SUSPECTED_FOR_ORAL_CANCER));
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, this.memberList, R.layout.listview_row_with_two_item, null, null);
            this.memberListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_IN_YOUR_AREA));
    }

    private void addCervicalScreenedMemberList() {
        this.bodyLayoutContainer.removeAllViews();
        List<MemberBean> list = this.memberBeans;
        if (list != null && !list.isEmpty()) {
            this.memberList.clear();
            for (MemberBean memberBean : this.memberBeans) {
                if (memberBean.getAdditionalInfo() != null && !memberBean.getAdditionalInfo().isEmpty()) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean.getSuspectedForCervicalCancer() != null && memberAdditionalInfoDataBean.getSuspectedForCervicalCancer().booleanValue()) {
                        this.memberList.add(new ListItemDataBean(memberBean.getFamilyId(), memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), (String) null, (String) null));
                    }
                }
            }
            if (this.memberList.isEmpty()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_SUSPECTED_FOR_CERVICAL_CANCER_IN_AREA));
                return;
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SUSPECTED_FOR_CERVICAL_CANCER));
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, this.memberList, R.layout.listview_row_with_two_item, null, null);
            this.memberListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_IN_YOUR_AREA));
    }

    private void addBreastScreenedMemberList() {
        this.bodyLayoutContainer.removeAllViews();
        List<MemberBean> list = this.memberBeans;
        if (list != null && !list.isEmpty()) {
            this.memberList.clear();
            for (MemberBean memberBean : this.memberBeans) {
                if (memberBean.getAdditionalInfo() != null && !memberBean.getAdditionalInfo().isEmpty()) {
                    MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                    if (memberAdditionalInfoDataBean.getSuspectedForBreastCancer() != null && memberAdditionalInfoDataBean.getSuspectedForBreastCancer().booleanValue()) {
                        this.memberList.add(new ListItemDataBean(memberBean.getFamilyId(), memberBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberBean), (String) null, (String) null));
                    }
                }
            }
            if (this.memberList.isEmpty()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_SUSPECTED_FOR_BREAST_CANCER_IN_AREA));
                return;
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SUSPECTED_FOR_BREAST_CANCER));
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, this.memberList, R.layout.listview_row_with_two_item, null, null);
            this.memberListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBER_IN_YOUR_AREA));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
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
        String str2 = this.screen;
        str2.hashCode();
        switch (str2) {
            case "memberListScreen":
                this.footerView.setVisibility(8);
                showProcessDialog();
                this.nextButton.setText("Next");
                this.bodyLayoutContainer.removeAllViews();
                setScreeningSelectionScreen();
                return true;
            case "screeningSelectionScreen":
                this.bodyLayoutContainer.removeAllViews();
                this.screen = VILLAGE_SELECTION_SCREEN;
                this.footerView.setVisibility(0);
                if (this.villageList.size() == 1) {
                    this.selectedVillage = this.villageList.get(0).getActualID();
                    this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
                    addVillageSelectionSpinner();
                } else if (this.villageList.isEmpty()) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.DATA_NOT_SYNCED_ALERT)));
                    this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                    this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NCDRegisterFHWActivity.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            NCDRegisterFHWActivity.this.navigateToHomeScreen(false);
                        }
                    });
                } else {
                    this.ashaAreaList = this.fhsService.retrieveAshaAreaAssignedToUser(this.villageList.get(0).getActualID());
                    addVillageSelectionSpinner();
                }
                return true;
            case "villageSelectionScreen":
                navigateToHomeScreen(false);
                return true;
            default:
                return true;
        }
    }
}
