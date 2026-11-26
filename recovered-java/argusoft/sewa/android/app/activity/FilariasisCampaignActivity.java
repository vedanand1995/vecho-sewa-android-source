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
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class FilariasisCampaignActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FAMILY_SCREEN = "familyScreen";
    private static final String FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN = "filSideEffectMemberSelectionScreen";
    private static final String FILARIASIS_TYPE_SELECTION_SCREEN = "filariasisTypeSelectionScreen";
    private static final String LOCATION_SCREEN = "locationScreen";
    private static final int REQUEST_CODE = 200;
    private LinearLayout bodyLayoutContainer;
    private FamilyDataBean familySelected;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView headerTitle;
    LocationMasterServiceImpl locationMasterService;
    private LocationBeanAllAreaSelectionComponent locationSelection;
    private MemberDataBean memberSelected;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableView;
    private PagingListView pagingListView;
    private String screen;
    private TextInputLayout searchText;
    private int selectedFilariasisType = -1;
    private List<FamilyDataBean> familyList = new ArrayList();
    private List<MemberDataBean> memberList = new ArrayList();
    private int selectedFamilyIndex = -1;
    private int selectedMemberToUpdateIndex = -1;
    private int limit = 30;
    private int offset = 0;
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!SharedStructureData.isLogin) {
            startActivity(new Intent(this, (Class<?>) LoginActivity_.class).setFlags(335544320));
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.FILARIASIS_CAMPAIGN));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setLocationSelectionScreen();
        hideProcessDialog();
    }

    private void setLocationSelectionScreen() {
        this.screen = LOCATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.locationSelection == null) {
            this.locationSelection = new LocationBeanAllAreaSelectionComponent(this, this.locationMasterService, null);
        }
        this.bodyLayoutContainer.addView(this.locationSelection);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != DynamicUtils.ID_NEXT_BUTTON) {
            return;
        }
        if (LOCATION_SCREEN.equals(this.screen)) {
            if (this.locationSelection.getSelectedLocationIds() == null || this.locationSelection.getSelectedLocationIds().isEmpty()) {
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_LOCATION);
                return;
            } else {
                showMDAorSideEffectsScreen();
                return;
            }
        }
        if (FAMILY_SCREEN.equals(this.screen)) {
            int i = this.selectedFamilyIndex;
            if (i == -1) {
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_A_FAMILY);
                return;
            } else {
                this.familySelected = this.familyList.get(i);
                startDynamicFormActivityForFilaria();
            }
        }
        if (FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN.equals(this.screen)) {
            int i2 = this.selectedMemberToUpdateIndex;
            if (i2 == -1) {
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_A_MEMBER);
            } else {
                this.memberSelected = this.memberList.get(i2);
                startDynamicFormActivityForFilaria();
            }
        }
    }

    public void showMDAorSideEffectsScreen() {
        this.selectedFilariasisType = -1;
        this.selectedFamilyIndex = -1;
        this.selectedMemberToUpdateIndex = -1;
        this.screen = FILARIASIS_TYPE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_FILARIASIS_MDA)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_FILARIASIS_SIDE_EFFECTS)));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$$ExternalSyntheticLambda2
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m170x4f6e53f1(adapterView, view, i, j);
            }
        }, null));
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$showMDAorSideEffectsScreen$0$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity, reason: not valid java name */
    /* synthetic */ void m170x4f6e53f1(AdapterView adapterView, View view, int i, long j) {
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
            addSearchTextBox();
            retrieveSideEffectsMemberList(null);
        }
    }

    public void addSearchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    FilariasisCampaignActivity.this.timer.cancel();
                    FilariasisCampaignActivity.this.timer = new Timer();
                    FilariasisCampaignActivity.this.timer.schedule(new C00241(charSequence), FilariasisCampaignActivity.DELAY);
                }

                /* renamed from: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$1$1, reason: invalid class name and collision with other inner class name */
                class C00241 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    C00241(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CharSequence charSequence = this.val$s;
                        if (charSequence != null && charSequence.length() > 2) {
                            FilariasisCampaignActivity filariasisCampaignActivity = FilariasisCampaignActivity.this;
                            final CharSequence charSequence2 = this.val$s;
                            filariasisCampaignActivity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$1$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m172x1eb842b5(charSequence2);
                                }
                            });
                        } else {
                            CharSequence charSequence3 = this.val$s;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                FilariasisCampaignActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$1$1$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m173x1e3f5f6();
                                    }
                                });
                            }
                        }
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity$1$1, reason: not valid java name */
                    /* synthetic */ void m172x1eb842b5(CharSequence charSequence) {
                        FilariasisCampaignActivity.this.retrieveSideEffectsMemberList(charSequence);
                    }

                    /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity$1$1, reason: not valid java name */
                    /* synthetic */ void m173x1e3f5f6() {
                        FilariasisCampaignActivity.this.retrieveSideEffectsMemberList(null);
                    }
                }
            });
        }
    }

    public void addSearchTextBoxForFamily() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 15, 1);
        this.searchText = editText;
        editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                FilariasisCampaignActivity.this.timer.cancel();
                FilariasisCampaignActivity.this.timer = new Timer();
                FilariasisCampaignActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity.2.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        FilariasisCampaignActivity filariasisCampaignActivity = FilariasisCampaignActivity.this;
                        CharSequence charSequence2 = charSequence;
                        filariasisCampaignActivity.retrieveFilariaFamilyListFromDB((charSequence2 == null || charSequence2.length() <= 2) ? null : charSequence);
                    }
                }, FilariasisCampaignActivity.DELAY);
            }
        });
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    public void retrieveFilariaFamilyListFromDB(CharSequence charSequence) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (charSequence == null) {
            this.familyList = this.fhsService.retrieveFamilyDataBeansForFilariaByArea(this.locationSelection.getSelectedLocationIds(), this.limit, this.offset);
            this.offset += this.limit;
        } else {
            this.familyList = this.fhsService.searchFamilyDataBeansForFilariaByArea(this.locationSelection.getSelectedLocationIds(), charSequence.toString());
        }
        setFamilySelectionScreen(charSequence != null);
    }

    public void retrieveSideEffectsMemberList(CharSequence charSequence) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (charSequence == null) {
            this.memberList = this.fhsService.retrieveMembersForSideEffectsOfFilaria(this.locationSelection.getSelectedLocationIds(), null, null, this.limit, this.offset);
            this.offset += this.limit;
        } else {
            this.memberList = this.fhsService.retrieveMembersForSideEffectsOfFilaria(this.locationSelection.getSelectedLocationIds(), null, charSequence.toString(), this.limit, this.offset);
        }
        setFilariasisSideEffectsMemberSelectionScreen(charSequence != null);
    }

    public void setFilariasisSideEffectsMemberSelectionScreen(boolean z) {
        this.screen = FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        List<MemberDataBean> list = this.memberList;
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> membersList = getMembersList(this.memberList);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$$ExternalSyntheticLambda5
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m169xb3cecab1(adapterView, view, i, j);
                }
            };
            if (z) {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, membersList, R.layout.listview_row_with_two_item, onItemClickListener, null);
            } else {
                this.pagingListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, membersList, R.layout.listview_row_with_two_item, onItemClickListener, this);
            }
            this.bodyLayoutContainer.addView(this.pagingListView);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        }
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setFilariasisSideEffectsMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity, reason: not valid java name */
    /* synthetic */ void m169xb3cecab1(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberToUpdateIndex = i;
    }

    private List<ListItemDataBean> getMembersList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
        }
        return arrayList;
    }

    public void setFamilySelectionScreen(boolean z) {
        this.screen = FAMILY_SCREEN;
        this.bodyLayoutContainer.removeView(this.headerTitle);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        this.bodyLayoutContainer.removeView(this.pagingListView);
        List<FamilyDataBean> list = this.familyList;
        if (list != null && !list.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
            this.headerTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getFamilyList(this.familyList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$$ExternalSyntheticLambda0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m167xcb61a53e(adapterView, view, i, j);
                }
            }, z ? null : this);
            this.pagingListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m168xa72320ff(view);
                }
            });
        }
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setFamilySelectionScreen$2$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity, reason: not valid java name */
    /* synthetic */ void m167xcb61a53e(AdapterView adapterView, View view, int i, long j) {
        this.selectedFamilyIndex = i;
    }

    /* renamed from: lambda$setFamilySelectionScreen$3$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity, reason: not valid java name */
    /* synthetic */ void m168xa72320ff(View view) {
        navigateToHomeScreen(false);
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
        String myLabel;
        ArrayList arrayList = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFamilyId());
        }
        Map<String, MemberDataBean> mapRetrieveHeadMemberDataBeansByFamilyId = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (FamilyDataBean familyDataBean : list) {
            MemberDataBean memberDataBean = mapRetrieveHeadMemberDataBeansByFamilyId.get(familyDataBean.getFamilyId());
            if (memberDataBean != null) {
                myLabel = UtilBean.getMemberFullName(memberDataBean);
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, myLabel, false));
        }
        return arrayList2;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        int i = this.selectedFilariasisType;
        if (i == 0) {
            loadMoreFamiliesFilaria();
        } else if (i == 1) {
            loadMoreMembersFilaria();
        }
    }

    public void loadMoreFamiliesFilaria() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForFilariaByArea = this.fhsService.retrieveFamilyDataBeansForFilariaByArea(this.locationSelection.getSelectedLocationIds(), this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUiFamilies(listRetrieveFamilyDataBeansForFilariaByArea);
    }

    public void loadMoreMembersFilaria() {
        List<MemberDataBean> listRetrieveMembersForSideEffectsOfFilaria = this.fhsService.retrieveMembersForSideEffectsOfFilaria(this.locationSelection.getSelectedLocationIds(), null, null, this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUiMembers(listRetrieveMembersForSideEffectsOfFilaria);
    }

    public void onLoadMoreUiFamilies(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.familyList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, getFamilyList(list));
        } else {
            this.pagingListView.onFinishLoadingWithItem(false, null);
        }
    }

    public void onLoadMoreUiMembers(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.memberList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, getMembersList(list));
        } else {
            this.pagingListView.onFinishLoadingWithItem(false, null);
        }
    }

    private void startDynamicFormActivityForFilaria() {
        try {
            int i = this.selectedFilariasisType;
            if (i == 0) {
                this.formMetaDataUtil.setMetaDataForFilariaCampaign(this.familySelected, this, i, null);
            } else if (i == 1) {
                this.formMetaDataUtil.setMetaDataForFilariaCampaign(null, this, i, this.memberSelected);
            }
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", FormConstants.FILARIA_CAMPAIGN);
            startActivityForResult(intent, 200);
        } catch (DataException unused) {
            MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, LabelConstants.ERROR_TO_REFRESH_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m171x56dfa0e7(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.myAlertDialog = myAlertDialog;
            myAlertDialog.show();
        }
    }

    /* renamed from: lambda$startDynamicFormActivityForFilaria$4$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity, reason: not valid java name */
    /* synthetic */ void m171x56dfa0e7(View view) {
        navigateToHomeScreen(false);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_FILARIASIS_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FilariasisCampaignActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m166x36a99c31(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$5$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity, reason: not valid java name */
    /* synthetic */ void m166x36a99c31(View view) {
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (FAMILY_SCREEN.equals(this.screen)) {
                showProcessDialog();
                setLocationSelectionScreen();
                hideProcessDialog();
                return true;
            }
            if (LOCATION_SCREEN.equals(this.screen)) {
                navigateToHomeScreen(false);
                return true;
            }
            if (FILARIASIS_TYPE_SELECTION_SCREEN.equals(this.screen)) {
                navigateToHomeScreen(false);
                return true;
            }
            if (FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN.equals(this.screen)) {
                showMDAorSideEffectsScreen();
                return true;
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 200) {
            showProcessDialog();
            this.selectedFamilyIndex = -1;
            this.familySelected = null;
            this.offset = 0;
            showMDAorSideEffectsScreen();
            hideProcessDialog();
        }
    }
}
