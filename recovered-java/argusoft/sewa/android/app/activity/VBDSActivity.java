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
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LocationBeanAllAreaSelectionComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class VBDSActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final int REQUEST_CODE_FOR_VBDS_ACTIVITY = 777;
    public static final String TPT_MEMBER_SCREEN = "tptMemberScreen";
    public static final String TYPE_SELECTION_SCREEN = "typeSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    LocationMasterServiceImpl locationMasterService;
    private LocationBeanAllAreaSelectionComponent locationSelection;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableView;
    private MaterialTextView pagingHeaderView;
    private PagingListView pagingListView;
    private String screen;
    private CharSequence searchString;
    private VBDSType selectedType;
    private List<MemberDataBean> memberList = new ArrayList();
    private MemberDataBean memberSelected = null;
    private int selectedPeopleIndex = -1;
    private Integer limit = 30;
    private Integer offset = 0;
    private Timer timer = new Timer();

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initView();
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
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
        setTitle(UtilBean.getTitleText("Surveillance"));
    }

    public void setBodyDetail() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = VILLAGE_SELECTION_SCREEN;
        setSubTitle(null);
        if (this.locationSelection == null) {
            this.locationSelection = new LocationBeanAllAreaSelectionComponent(this, this.locationMasterService, null, false);
        }
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        this.footerLayout.setVisibility(0);
        this.bodyLayoutContainer.addView(this.locationSelection);
        hideProcessDialog();
    }

    private Integer getSelectedLocationId() {
        LocationBean selectedLocation = this.locationSelection.getSelectedLocation();
        if (selectedLocation == null) {
            return null;
        }
        return selectedLocation.getActualID().intValue() == -2 ? selectedLocation.getParent() : selectedLocation.getActualID();
    }

    public void setSelectionType() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = "typeSelectionScreen";
        MaterialTextView materialTextViewGenerateLabelView = MyStaticComponents.generateLabelView(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_AN_OPTION));
        materialTextViewGenerateLabelView.setPadding(0, 0, 0, 40);
        this.bodyLayoutContainer.addView(materialTextViewGenerateLabelView);
        ArrayList arrayList = new ArrayList();
        for (VBDSType vBDSType : VBDSType.values()) {
            arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(vBDSType.getLabel())));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.VBDSActivity$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m551xf2f4ef6e(adapterView, view, i, j);
            }
        }, null));
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$setSelectionType$0$com-argusoft-sewa-android-app-activity-VBDSActivity, reason: not valid java name */
    /* synthetic */ void m551xf2f4ef6e(AdapterView adapterView, View view, int i, long j) {
        onTypeSelected(VBDSType.values()[i]);
    }

    private void onTypeSelected(VBDSType vBDSType) {
        if (vBDSType.getActivityClass() != null) {
            Intent intent = new Intent(this, vBDSType.getActivityClass());
            intent.putIntegerArrayListExtra(SewaConstants.SELECTED_LOCATION_IDS, new ArrayList<>(this.locationSelection.getSelectedLocationIds()));
            startActivityForResult(intent, REQUEST_CODE_FOR_VBDS_ACTIVITY);
        } else {
            if (vBDSType.getFormType() == null) {
                SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.VBDS_FORM_NOT_AVAILABLE));
                return;
            }
            showProcessDialog();
            this.selectedType = vBDSType;
            this.footerLayout.setVisibility(0);
            setSubTitle(null);
            this.bodyLayoutContainer.removeAllViews();
            if (vBDSType.isMemberBased()) {
                addSearchTextBox();
                retrieveMemberListForTPTByArea(null);
            } else {
                startDynamicFormActivity(vBDSType, null);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            if (str.equals(TPT_MEMBER_SCREEN)) {
                if (this.selectedPeopleIndex != -1) {
                    showProcessDialog();
                    MemberDataBean memberDataBean = this.memberList.get(this.selectedPeopleIndex);
                    this.memberSelected = memberDataBean;
                    setSubTitle(UtilBean.getMemberFullName(memberDataBean));
                    startDynamicFormActivity(this.selectedType, this.memberSelected);
                    return;
                }
                SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_MEMBER));
                return;
            }
            if (str.equals(VILLAGE_SELECTION_SCREEN)) {
                if (this.locationSelection.getSelectedLocationIds().isEmpty()) {
                    SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_LOCATION));
                    return;
                }
                showProcessDialog();
                setSubTitle(null);
                this.bodyLayoutContainer.removeAllViews();
                setSelectionType();
            }
        }
    }

    public void retrieveMemberListForTPTByArea(CharSequence charSequence) {
        this.searchString = charSequence;
        this.selectedPeopleIndex = -1;
        this.offset = 0;
        this.memberList = this.fhsService.retrieveMembersByAshaArea(this.locationSelection.getSelectedLocationIds(), getSelectedLocationId(), charSequence, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        addMemberListScreenForUpdateInfo();
    }

    public void addMemberListScreenForUpdateInfo() {
        this.screen = TPT_MEMBER_SCREEN;
        this.bodyLayoutContainer.removeView(this.noMemberAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingHeaderView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        this.selectedPeopleIndex = -1;
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_TB_POSITIVE_MEMBER);
            this.pagingHeaderView = listTitleView;
            listTitleView.setPadding(0, 50, 0, 0);
            this.bodyLayoutContainer.addView(this.pagingHeaderView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMembersList(this.memberList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.VBDSActivity$$ExternalSyntheticLambda1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m550x3da10926(adapterView, view, i, j);
                }
            }, this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
        } else {
            this.bodyLayoutContainer.removeView(this.pagingHeaderView);
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$addMemberListScreenForUpdateInfo$1$com-argusoft-sewa-android-app-activity-VBDSActivity, reason: not valid java name */
    /* synthetic */ void m550x3da10926(AdapterView adapterView, View view, int i, long j) {
        this.selectedPeopleIndex = i;
    }

    private List<ListItemDataBean> getMembersList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
        }
        return arrayList;
    }

    private void startDynamicFormActivity(VBDSType vBDSType, MemberDataBean memberDataBean) {
        try {
            this.formMetaDataUtil.setMetaDataForVBDSForms(getSelectedLocationId(), memberDataBean, this.context);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CAME_FOR_INTER_DOMESTIC, getCameForInterDomestic(vBDSType));
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", vBDSType.getFormType());
            startActivityForResult(intent, REQUEST_CODE_FOR_VBDS_ACTIVITY);
            hideProcessDialog();
        } catch (Exception unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.VBDSActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VBDSActivity.this.alertDialog.dismiss();
                    VBDSActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    private String getCameForInterDomestic(VBDSType vBDSType) {
        int iOrdinal = vBDSType.ordinal();
        if (iOrdinal == 1) {
            return MorbiditiesConstant.ONE_PLUS;
        }
        if (iOrdinal == 6) {
            return MorbiditiesConstant.TWO_PLUS;
        }
        return "0";
    }

    public void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.VBDSActivity.2
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    VBDSActivity.this.timer.cancel();
                    VBDSActivity.this.timer = new Timer();
                    VBDSActivity.this.timer.schedule(new AnonymousClass1(charSequence), VBDSActivity.DELAY);
                }

                /* renamed from: com.argusoft.sewa.android.app.activity.VBDSActivity$2$1, reason: invalid class name */
                class AnonymousClass1 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    AnonymousClass1(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CharSequence charSequence = this.val$s;
                        if (charSequence != null && charSequence.length() > 2) {
                            VBDSActivity vBDSActivity = VBDSActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            vBDSActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.VBDSActivity$2$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m552xae67af16(charSequence2);
                                }
                            });
                        } else {
                            CharSequence charSequence3 = this.val$s;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                VBDSActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.VBDSActivity$2$1$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m553xd3fbb817();
                                    }
                                });
                            }
                        }
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-VBDSActivity$2$1, reason: not valid java name */
                    /* synthetic */ void m552xae67af16(CharSequence charSequence) {
                        VBDSActivity.this.retrieveMemberListForTPTByArea(charSequence);
                    }

                    /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-VBDSActivity$2$1, reason: not valid java name */
                    /* synthetic */ void m553xd3fbb817() {
                        VBDSActivity.this.showProcessDialog();
                        VBDSActivity.this.retrieveMemberListForTPTByArea(null);
                    }
                }
            });
        }
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
            case "tptMemberScreen":
                showProcessDialog();
                setSelectionType();
                return true;
            case "typeSelectionScreen":
                showProcessDialog();
                setBodyDetail();
                return true;
            case "villageSelectionScreen":
                navigateToHomeScreen(false);
                return true;
            default:
                return true;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_VBDS_ACTIVITY) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            setSelectionType();
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
        hideProcessDialog();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_CLOSE_VBDS, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.VBDSActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    VBDSActivity.this.myAlertDialog.dismiss();
                    VBDSActivity.this.navigateToHomeScreen(false);
                    VBDSActivity.this.finish();
                    return;
                }
                VBDSActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        loadMoreMembers();
    }

    public void loadMoreMembers() {
        List<MemberDataBean> listRetrieveMembersByAshaArea = this.fhsService.retrieveMembersByAshaArea(this.locationSelection.getSelectedLocationIds(), getSelectedLocationId(), this.searchString, this.limit.intValue(), this.offset.intValue());
        this.offset = Integer.valueOf(this.offset.intValue() + this.limit.intValue());
        onLoadMoreUiMember(listRetrieveMembersByAshaArea);
    }

    private enum VBDSType {
        WATER_QUALITY_MONITORING(LabelConstants.WATER_QUALITY_MONITORING, FormConstants.VBDS_WATER_QUALITY_MONITORING, false),
        ANTILARVAL_ACTIVITIES(LabelConstants.ANTILARVAL_ACTIVITIES, FormConstants.VBDS_ANTILARVAL_ACTIVITIES, false),
        SLIDE_COLLECTION(LabelConstants.SLIDE_COLLECTION, LabTestScreeningActivity_.class),
        PARADOMESTIC_ANTILARVAL_ACTIVITIES(LabelConstants.PARADOMESTIC_ANTILARVAL_ACTIVITIES, FormConstants.VBDS_ANTILARVAL_ACTIVITIES, false),
        ANTI_VECTOR_INTERVENTIONS(LabelConstants.ANTI_VECTOR_INTERVENTIONS, FormConstants.VBDS_ANTI_VECTOR_INTERVENTIONS, false),
        TPT_EVALUATION(LabelConstants.TPT_EVALUATION, FormConstants.VBDS_TPT_EVALUATION, true),
        OTHER_ACTIVITY(LabelConstants.OTHER_ACTIVITY, FormConstants.VBDS_ANTILARVAL_ACTIVITIES, false);

        private final Class<?> activityClass;
        private final String formType;
        private final String label;
        private final boolean memberBased;

        VBDSType(String str, String str2, boolean z) {
            this(str, str2, z, null);
        }

        VBDSType(String str, Class cls) {
            this(str, null, false, cls);
        }

        VBDSType(String str, String str2, boolean z, Class cls) {
            this.label = str;
            this.formType = str2;
            this.memberBased = z;
            this.activityClass = cls;
        }

        public String getLabel() {
            return this.label;
        }

        public String getFormType() {
            return this.formType;
        }

        public boolean isMemberBased() {
            return this.memberBased;
        }

        public Class<?> getActivityClass() {
            return this.activityClass;
        }
    }

    public void onLoadMoreUiMember(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> membersList = getMembersList(list);
            this.memberList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, membersList);
            return;
        }
        this.pagingListView.onFinishLoadingWithItem(false, null);
    }
}
