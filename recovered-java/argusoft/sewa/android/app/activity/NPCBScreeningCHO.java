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
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NPCBServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NPCBScreeningCHO extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final long LIMIT = 30;
    private static final String MEMBER_LIST_SCREEN = "memberListScreen";
    private static final int REQUEST_CODE_FOR_NPCB_CHO_ACTIVITY = 200;
    private static final int TYPE_FOURTY_PLUS = 0;
    private static final int TYPE_REFERRED_BY_FHW = 1;
    private static final String TYPE_SELECTION_SCREEN = "typeSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView listTitleView;
    LocationMasterServiceImpl locationMasterService;
    private PagingListView memberListView;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableTextView;
    NPCBServiceImpl npcbService;
    private long offset;
    private String screen;
    SewaServiceImpl sewaService;
    private MemberDataBean memberSelected = null;
    private List<MemberDataBean> fourtyPlusMembers = new ArrayList();
    private List<MemberDataBean> beneficiariesSentByAsha = new ArrayList();
    private int selectedTypeIndex = -1;
    private int selectedFourtyPlusMemberIndex = -1;
    private int selectedBeneficiariesSentByAshaIndex = -1;
    private Timer timer = new Timer();
    private String searchString = null;
    private List<Integer> ashaAreaIds = new ArrayList();

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
        setTitle(UtilBean.getTitleText(LabelConstants.NPCB_SCREENING_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        loadAshaAreasUnderCho();
    }

    void loadAshaAreasUnderCho() {
        List<Integer> listRetrieveAllAshaAreaIdsUnderAssignedLocation = this.locationMasterService.retrieveAllAshaAreaIdsUnderAssignedLocation();
        this.ashaAreaIds = listRetrieveAllAshaAreaIdsUnderAssignedLocation;
        if (listRetrieveAllAshaAreaIdsUnderAssignedLocation == null || listRetrieveAllAshaAreaIdsUnderAssignedLocation.isEmpty()) {
            showNoAshaAreaScreen();
        } else {
            setSelectionType();
        }
    }

    void showNoAshaAreaScreen() {
        this.screen = null;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_ASHA_AREA_UNDER_LOCATION)));
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m398xdb4d0417(view);
            }
        });
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$showNoAshaAreaScreen$0$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO, reason: not valid java name */
    /* synthetic */ void m398xdb4d0417(View view) {
        navigateToHomeScreen(false);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON && MEMBER_LIST_SCREEN.equals(this.screen)) {
            int i = this.selectedTypeIndex;
            if (i == 0 && this.selectedFourtyPlusMemberIndex != -1) {
                setSubTitle(null);
                MemberDataBean memberDataBean = this.fourtyPlusMembers.get(this.selectedFourtyPlusMemberIndex);
                this.memberSelected = memberDataBean;
                startDynamicFormActivity(memberDataBean);
                return;
            }
            if (i == 1 && this.selectedBeneficiariesSentByAshaIndex != -1) {
                setSubTitle(null);
                MemberDataBean memberDataBean2 = this.beneficiariesSentByAsha.get(this.selectedBeneficiariesSentByAshaIndex);
                this.memberSelected = memberDataBean2;
                startDynamicFormActivity(memberDataBean2);
                return;
            }
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_MEMBER));
        }
    }

    void setSelectionType() {
        this.screen = "typeSelectionScreen";
        this.bodyLayoutContainer.removeAllViews();
        this.selectedTypeIndex = -1;
        this.selectedFourtyPlusMemberIndex = -1;
        this.selectedBeneficiariesSentByAshaIndex = -1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.FOURTY_PLUS_MEMBERS));
        arrayList.add(new ListItemDataBean(LabelConstants.BENEFICIARIES_SENT_BY_WORKERS));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m397x319aef1a(adapterView, view, i, j);
            }
        }, null));
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    /* renamed from: lambda$setSelectionType$1$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO, reason: not valid java name */
    /* synthetic */ void m397x319aef1a(AdapterView adapterView, View view, int i, long j) {
        showProcessDialog();
        this.selectedTypeIndex = i;
        setSubTitle(null);
        this.bodyLayoutContainer.removeAllViews();
        searchTextBox();
        retrieveMembersAsPerCohort(null);
    }

    void retrieveMembersAsPerCohort(String str) {
        this.offset = 0L;
        this.searchString = str;
        int i = this.selectedTypeIndex;
        if (i == 0) {
            this.fourtyPlusMembers = this.npcbService.choRetrievingMembersForNPCBScreening(this.ashaAreaIds, str, LIMIT, 0L);
        } else if (i == 1) {
            this.beneficiariesSentByAsha = this.npcbService.retrieveMembersSentByFieldHealthWorkers(this.ashaAreaIds, str, LIMIT, 0L);
        }
        this.offset += LIMIT;
        setMemberSelectionScreen();
    }

    private void searchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    NPCBScreeningCHO.this.timer.cancel();
                    NPCBScreeningCHO.this.timer = new Timer();
                    NPCBScreeningCHO.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO.1.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence2 = charSequence;
                            if (charSequence2 != null && charSequence2.length() > 2) {
                                NPCBScreeningCHO.this.retrieveMembersAsPerCohort(charSequence.toString());
                                return;
                            }
                            CharSequence charSequence3 = charSequence;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                NPCBScreeningCHO.this.retrieveMembersAsPerCohort(null);
                            }
                        }
                    }, NPCBScreeningCHO.DELAY);
                }
            });
        }
    }

    void setMemberSelectionScreen() {
        this.screen = MEMBER_LIST_SCREEN;
        this.selectedFourtyPlusMemberIndex = -1;
        this.selectedBeneficiariesSentByAshaIndex = -1;
        MaterialTextView materialTextView = this.listTitleView;
        if (materialTextView != null) {
            this.bodyLayoutContainer.removeView(materialTextView);
        }
        PagingListView pagingListView = this.memberListView;
        if (pagingListView != null) {
            this.bodyLayoutContainer.removeView(pagingListView);
        }
        MaterialTextView materialTextView2 = this.noMemberAvailableTextView;
        if (materialTextView2 != null) {
            this.bodyLayoutContainer.removeView(materialTextView2);
        }
        int i = this.selectedTypeIndex;
        if (i == 0) {
            List<ListItemDataBean> listConvertMembersToListItems = convertMembersToListItems(this.fourtyPlusMembers);
            if (listConvertMembersToListItems.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_FOURTY_PLUS_MEMBERS_FOUND));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m393xc8b353(view);
                    }
                });
            } else {
                MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FROM_LIST);
                this.listTitleView = listTitleView;
                this.bodyLayoutContainer.addView(listTitleView);
                PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this, listConvertMembersToListItems, R.layout.listview_row_with_two_item_npcb, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO$$ExternalSyntheticLambda4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m394x265cbc54(adapterView, view, i2, j);
                    }
                }, this);
                this.memberListView = paginatedListViewWithItem;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        } else if (i == 1) {
            List<ListItemDataBean> listConvertMembersToListItems2 = convertMembersToListItems(this.beneficiariesSentByAsha);
            if (listConvertMembersToListItems2.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView2 = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_BENEFICIARIES_FOUND));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView2;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView2);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m395x4bf0c555(view);
                    }
                });
            } else {
                MaterialTextView listTitleView2 = MyStaticComponents.getListTitleView(this, LabelConstants.BENEFICIARIES_SENT_BY_WORKERS);
                this.listTitleView = listTitleView2;
                this.bodyLayoutContainer.addView(listTitleView2);
                PagingListView paginatedListViewWithItem2 = MyStaticComponents.getPaginatedListViewWithItem(this, listConvertMembersToListItems2, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO$$ExternalSyntheticLambda6
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                        this.f$0.m396x7184ce56(adapterView, view, i2, j);
                    }
                }, this);
                this.memberListView = paginatedListViewWithItem2;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem2);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        }
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setMemberSelectionScreen$2$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO, reason: not valid java name */
    /* synthetic */ void m393xc8b353(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$setMemberSelectionScreen$3$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO, reason: not valid java name */
    /* synthetic */ void m394x265cbc54(AdapterView adapterView, View view, int i, long j) {
        this.selectedFourtyPlusMemberIndex = i;
    }

    /* renamed from: lambda$setMemberSelectionScreen$4$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO, reason: not valid java name */
    /* synthetic */ void m395x4bf0c555(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$setMemberSelectionScreen$5$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO, reason: not valid java name */
    /* synthetic */ void m396x7184ce56(AdapterView adapterView, View view, int i, long j) {
        this.selectedBeneficiariesSentByAshaIndex = i;
    }

    private List<ListItemDataBean> convertMembersToListItems(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), null, null, memberDataBean.getImtMemberNpcbStatus() != null));
            }
        }
        return arrayList;
    }

    private void startDynamicFormActivity(MemberDataBean memberDataBean) {
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        this.formMetaDataUtil.setMetaDataForNPCBForms(Long.valueOf(memberDataBean.getId()));
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", "CHO_NPCB");
        startActivityForResult(intent, 200);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_NPCB_SCREENING_CLOSE_ALERT_FULL, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningCHO$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m392xf2a4f97d(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$6$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO, reason: not valid java name */
    /* synthetic */ void m392xf2a4f97d(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 200) {
            if (this.sewaService.isOnline()) {
                doUpdate(false);
            }
            showProcessDialog();
            setSelectionType();
            return;
        }
        navigateToHomeScreen(false);
    }

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
        showProcessDialog();
        if (!"typeSelectionScreen".equals(this.screen) && MEMBER_LIST_SCREEN.equals(this.screen)) {
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
            setSelectionType();
        } else {
            navigateToHomeScreen(false);
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    void onLoadMoreBackground() {
        List<MemberDataBean> arrayList = new ArrayList<>();
        int i = this.selectedTypeIndex;
        if (i == 0) {
            arrayList = this.npcbService.choRetrievingMembersForNPCBScreening(this.ashaAreaIds, this.searchString, LIMIT, this.offset);
        } else if (i == 1) {
            arrayList = this.npcbService.retrieveMembersSentByFieldHealthWorkers(this.ashaAreaIds, this.searchString, LIMIT, this.offset);
        }
        this.offset += LIMIT;
        onLoadMoreUi(arrayList);
    }

    void onLoadMoreUi(List<MemberDataBean> list) {
        if (list == null || list.isEmpty()) {
            this.memberListView.onFinishLoadingWithItem(false, null);
            return;
        }
        int i = this.selectedTypeIndex;
        if (i == 0) {
            this.fourtyPlusMembers.addAll(list);
        } else if (i == 1) {
            this.beneficiariesSentByAsha.addAll(list);
        }
        this.memberListView.onFinishLoadingWithItem(true, convertMembersToListItems(list));
    }
}
