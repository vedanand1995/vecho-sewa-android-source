package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LocationBeanAllAreaSelectionComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AmrutpanSupervisionMOActivity extends MenuActivity implements View.OnClickListener {
    private static final String LOCATION_SELECTION_SCREEN = "locationSelectionScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String MO_AREA_SELECTION_SCREEN = "moAreaSelectionScreen";
    private static final int REQUEST_CODE_FOR_AMRUTPAN_SUPERVISION_ACTIVITY = 600;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private LocationBeanAllAreaSelectionComponent locationComponent;
    LocationMasterServiceImpl locationMasterService;
    private Button nextButton;
    private MaterialTextView noMemberAvailableView;
    private MaterialTextView pagingHeaderView;
    private PagingListView pagingListView;
    private String screen;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private MemberDataBean memberSelected = null;
    private List<MemberDataBean> memberList = new ArrayList();
    private int selectedPeopleIndex = -1;
    private List<LocationBean> moAreaList = new ArrayList();

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
        setTitle(UtilBean.getTitleText(LabelConstants.WORK_STATUS_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        showProcessDialog();
        addMoLocationSelectionSpinner();
    }

    public void addMoLocationSelectionSpinner() {
        this.screen = MO_AREA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.locationComponent == null) {
            this.locationComponent = new LocationBeanAllAreaSelectionComponent(this.context, this.locationMasterService);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_LOCATION));
        this.bodyLayoutContainer.addView(this.locationComponent);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateMemberSelectionScreen(List<MemberDataBean> list) {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (!list.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_A_MEMBER_FROM_LIST));
            ArrayList arrayList = new ArrayList();
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
            }
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this, arrayList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AmrutpanSupervisionMOActivity$$ExternalSyntheticLambda0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m137x9b12961(adapterView, view, i, j);
                }
            }, null);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_MEMBER_FOUND_IN_YOUR_AREA);
            this.noMemberAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$updateMemberSelectionScreen$0$com-argusoft-sewa-android-app-activity-AmrutpanSupervisionMOActivity, reason: not valid java name */
    /* synthetic */ void m137x9b12961(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMemberSelectionScreen(List<Integer> list) {
        showProcessDialog();
        try {
            this.memberList = this.sewaServiceRestClient.getRbskMoScreeningMembers(list);
        } catch (RestHttpException e) {
            Log.e(getClass().getName(), null, e);
        }
        updateMemberSelectionScreen(this.memberList);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = this.screen;
        str.hashCode();
        if (str.equals(MEMBER_SELECTION_SCREEN)) {
            int i = this.selectedPeopleIndex;
            if (i != -1) {
                this.memberSelected = this.memberList.get(i);
                showProcessDialog();
                startDynamicFormActivity(FormConstants.AMRUTPAN_SUPERVISION, this.memberSelected);
                return;
            }
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_MEMBER));
            return;
        }
        if (str.equals(MO_AREA_SELECTION_SCREEN)) {
            showProcessDialog();
            if (this.locationComponent.getSelectedLocationIds().isEmpty()) {
                SewaUtil.generateToast(this.context, LabelConstants.PLEASE_SELECT_LOCATION);
                hideProcessDialog();
            } else {
                this.bodyLayoutContainer.removeAllViews();
                setMemberSelectionScreen(this.locationComponent.getSelectedLocationIds());
            }
        }
    }

    private void startDynamicFormActivity(String str, MemberDataBean memberDataBean) {
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        try {
            this.formMetaDataUtil.setMetaDataForAmrutpanSupervisionForm(memberDataBean, PreferenceManager.getDefaultSharedPreferences(this));
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", str);
            startActivityForResult(intent, REQUEST_CODE_FOR_AMRUTPAN_SUPERVISION_ACTIVITY);
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AmrutpanSupervisionMOActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AmrutpanSupervisionMOActivity.this.alertDialog.dismiss();
                    AmrutpanSupervisionMOActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        navigateToHomeScreen(false);
        return true;
    }
}
