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
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.NPCBServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NPCBScreeningFhw extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final long LIMIT = 30;
    private static final String MEMBER_DETAILS_SCREEN = "memberDetailsScreen";
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final int REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY = 300;
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    LocationMasterServiceImpl locationMasterService;
    private LocationBeanAllAreaSelectionComponent locationSelection;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberTextView;
    NPCBServiceImpl npcbService;
    private long offset;
    private PagingListView paginatedListView;
    private MaterialTextView questionTextView;
    private String screen;
    private String searchString;
    private TextInputLayout searchText;
    private MemberDataBean selectedMember;
    SewaServiceImpl sewaService;
    TechoAshaServiceImpl techoAshaService;
    private List<MemberDataBean> memberDataBeans = new ArrayList();
    private Timer timer = new Timer();
    private int selectedMemberIndex = -1;

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
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    private void setBodyDetail() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (this.locationSelection == null) {
            this.locationSelection = new LocationBeanAllAreaSelectionComponent(this, this.locationMasterService, null);
        }
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        this.bodyLayoutContainer.addView(this.locationSelection);
        hideProcessDialog();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_NPCB_SCREENING_CLOSE_ALERT_FULL, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningFhw$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m399x112cd2c2(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-NPCBScreeningFhw, reason: not valid java name */
    /* synthetic */ void m399x112cd2c2(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            navigateToHomeScreen(false);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            setSubTitle(null);
            if (VILLAGE_SELECTION_SCREEN.equals(this.screen)) {
                handleVillageSelection();
            } else if (MEMBER_SELECTION_SCREEN.equals(this.screen)) {
                handleMemberSelection();
            }
        }
    }

    private void handleVillageSelection() {
        if (this.locationSelection.getSelectedLocationIds() != null && !this.locationSelection.getSelectedLocationIds().isEmpty()) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBoxForMember();
            TextInputLayout textInputLayout = this.searchText;
            String str = null;
            String strTrim = (textInputLayout == null || textInputLayout.getEditText() == null) ? null : this.searchText.getEditText().getText().toString().trim();
            if (strTrim != null && !strTrim.isEmpty()) {
                str = strTrim;
            }
            retrieveMemberListFromDB(str);
            return;
        }
        SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_LOCATION);
    }

    private void handleMemberSelection() {
        int i = this.selectedMemberIndex;
        if (i != -1) {
            MemberDataBean memberDataBean = this.memberDataBeans.get(i);
            this.selectedMember = memberDataBean;
            if (memberDataBean.getImtMemberNpcbStatus() == null) {
                startDynamicFormActivity();
            } else {
                SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.NPCB_SCREENING_ALREADY_DONE));
            }
        } else {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_MEMBER));
        }
        this.selectedMemberIndex = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addSearchTextBoxForMember() {
        if (this.searchText == null) {
            TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_MEMBER, 1, 10, 1);
            this.searchText = editText;
            if (editText.getEditText() != null) {
                this.searchText.getEditText().addTextChangedListener(createSearchTextWatcher());
            }
        }
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this));
    }

    private TextWatcher createSearchTextWatcher() {
        return new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningFhw.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                NPCBScreeningFhw.this.timer.cancel();
                NPCBScreeningFhw.this.timer = new Timer();
                NPCBScreeningFhw.this.timer.schedule(new C00471(charSequence), NPCBScreeningFhw.DELAY);
            }

            /* renamed from: com.argusoft.sewa.android.app.activity.NPCBScreeningFhw$1$1, reason: invalid class name and collision with other inner class name */
            class C00471 extends TimerTask {
                final /* synthetic */ CharSequence val$s;

                C00471(CharSequence charSequence) {
                    this.val$s = charSequence;
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence = this.val$s;
                    if (charSequence != null && charSequence.length() > 2) {
                        NPCBScreeningFhw nPCBScreeningFhw = NPCBScreeningFhw.this;
                        final CharSequence charSequence2 = this.val$s;
                        nPCBScreeningFhw.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningFhw$1$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m402x588477cb(charSequence2);
                            }
                        });
                    } else {
                        CharSequence charSequence3 = this.val$s;
                        if (charSequence3 == null || charSequence3.length() == 0) {
                            NPCBScreeningFhw.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningFhw$1$1$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m403x12fa184c();
                                }
                            });
                        }
                    }
                }

                /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-NPCBScreeningFhw$1$1, reason: not valid java name */
                /* synthetic */ void m402x588477cb(CharSequence charSequence) {
                    NPCBScreeningFhw.this.retrieveMemberListFromDB(charSequence.toString());
                    if (NPCBScreeningFhw.this.searchText != null) {
                        NPCBScreeningFhw.this.searchText.setFocusable(true);
                    }
                }

                /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-NPCBScreeningFhw$1$1, reason: not valid java name */
                /* synthetic */ void m403x12fa184c() {
                    NPCBScreeningFhw.this.showProcessDialog();
                    NPCBScreeningFhw.this.retrieveMemberListFromDB(null);
                    if (NPCBScreeningFhw.this.searchText != null) {
                        NPCBScreeningFhw.this.searchText.clearFocus();
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void retrieveMemberListFromDB(String str) {
        this.offset = 0L;
        this.searchString = str;
        this.selectedMemberIndex = -1;
        this.memberDataBeans = this.npcbService.fhwRetrieveMembersForNPCBScreening(this.locationSelection.getSelectedLocationIds(), str, LIMIT, this.offset);
        this.offset += LIMIT;
        setMemberSelectionScreen(Boolean.valueOf(str != null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMemberSelectionScreen(Boolean bool) {
        MaterialTextView materialTextView = this.questionTextView;
        if (materialTextView != null) {
            this.bodyLayoutContainer.removeView(materialTextView);
        }
        PagingListView pagingListView = this.paginatedListView;
        if (pagingListView != null) {
            this.bodyLayoutContainer.removeView(pagingListView);
        }
        MaterialTextView materialTextView2 = this.noMemberTextView;
        if (materialTextView2 != null) {
            this.bodyLayoutContainer.removeView(materialTextView2);
        }
        this.screen = MEMBER_SELECTION_SCREEN;
        if (!this.memberDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
            this.questionTextView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this, convertToListItemData(this.memberDataBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningFhw$$ExternalSyntheticLambda0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m400xdb34b99d(adapterView, view, i, j);
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText("Next");
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningFhw$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m401xc8c29e(view);
                }
            });
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-NPCBScreeningFhw, reason: not valid java name */
    /* synthetic */ void m400xdb34b99d(AdapterView adapterView, View view, int i, long j) {
        this.selectedMemberIndex = i;
    }

    /* renamed from: lambda$setMemberSelectionScreen$2$com-argusoft-sewa-android-app-activity-NPCBScreeningFhw, reason: not valid java name */
    /* synthetic */ void m401xc8c29e(View view) {
        navigateToHomeScreen(false);
    }

    private List<ListItemDataBean> convertToListItemData(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            if (memberDataBean.getAdditionalInfo() != null) {
                MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberDataBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                if (memberAdditionalInfoDataBean.getNcdConfFor() != null && memberAdditionalInfoDataBean.getNcdConfFor().contains(LocationConstants.LocationType.DISTRICT)) {
                    arrayList2.add(memberDataBean);
                }
            }
            arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), null, null, memberDataBean.getImtMemberNpcbStatus() != null));
        }
        this.memberDataBeans.removeAll(arrayList2);
        return arrayList;
    }

    private void startDynamicFormActivity() {
        this.screen = MEMBER_DETAILS_SCREEN;
        this.formMetaDataUtil.setMetaDataForNPCBForms(Long.valueOf(this.selectedMember.getId()));
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", "ASHA_NPCB");
        startActivityForResult(intent, REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.bodyLayoutContainer.removeAllViews();
        if (i == REQUEST_CODE_FOR_NPCB_SCREENING_ACTIVITY) {
            showProcessDialog();
            addSearchTextBoxForMember();
            setMemberSelectionScreen(null);
            hideProcessDialog();
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
        if (VILLAGE_SELECTION_SCREEN.equals(this.screen)) {
            navigateToHomeScreen(false);
        } else if (MEMBER_SELECTION_SCREEN.equals(this.screen)) {
            setBodyDetail();
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoadMoreBackground() {
        List<MemberDataBean> listFhwRetrieveMembersForNPCBScreening = this.npcbService.fhwRetrieveMembersForNPCBScreening(this.locationSelection.getSelectedLocationIds(), this.searchString, LIMIT, this.offset);
        this.offset += LIMIT;
        onLoadMoreUi(listFhwRetrieveMembersForNPCBScreening);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoadMoreUi(List<MemberDataBean> list) {
        if (list != null && !list.isEmpty()) {
            List<ListItemDataBean> listConvertToListItemData = convertToListItemData(list);
            this.memberDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, listConvertToListItemData);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
