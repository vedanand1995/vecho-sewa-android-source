package com.argusoft.sewa.android.app.activity;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.HeaderViewListAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LocationBeanAllAreaSelectionComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class LabTestActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String MEMBER_LIST_SCREEN = "memberListScreen";
    private static final Integer REQUEST_CODE_FOR_LAB_TEST_ACTIVITY = 200;
    private static final String TAG = "LabTestActivity";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    private MaterialTextView listTitleView;
    LocationMasterServiceImpl locationMasterService;
    private LocationBeanAllAreaSelectionComponent locationSelection;
    private PagingListView memberListView;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableTextView;
    private long offset;
    private String screen;
    private List<MemberDataBean> members = new ArrayList();
    private Set<String> selectedMemberIds = new HashSet();
    private List<MemberDataBean> selectedMembers = new ArrayList();
    private final long limit = 30;
    private Timer timer = new Timer();
    private String searchString = null;

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
        setTitle(UtilBean.getTitleText(LabelConstants.LAB_TEST));
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

    private void setBodyDetail() {
        setVillageSelectionScreen();
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            if (str.equals(MEMBER_LIST_SCREEN)) {
                setSubTitle(null);
                return;
            }
            if (str.equals(VILLAGE_SELECTION_SCREEN)) {
                if (this.locationSelection.getSelectedLocationIds() != null && !this.locationSelection.getSelectedLocationIds().isEmpty()) {
                    this.bodyLayoutContainer.removeAllViews();
                    searchTextBox();
                    retrieveMembers(null);
                    setSubTitle(null);
                    showProcessDialog();
                    return;
                }
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_LOCATION);
            }
        }
    }

    private void setVillageSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (this.locationSelection == null) {
            this.locationSelection = new LocationBeanAllAreaSelectionComponent(this.context, this.locationMasterService, null);
        }
        this.bodyLayoutContainer.addView(this.locationSelection);
    }

    public void retrieveMembers(String str) {
        this.offset = 0L;
        this.searchString = str;
        this.members = this.fhsService.retrieveMalariaScreenedMembers(this.locationSelection.getSelectedLocationIds(), str, 30L, this.offset, false, true);
        this.offset += 30;
        setMemberSelectionScreen();
    }

    public void searchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    LabTestActivity.this.timer.cancel();
                    LabTestActivity.this.timer = new Timer();
                    LabTestActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity.1.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence2 = charSequence;
                            if (charSequence2 != null && charSequence2.length() > 2) {
                                LabTestActivity.this.retrieveMembers(charSequence.toString());
                                return;
                            }
                            CharSequence charSequence3 = charSequence;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                LabTestActivity.this.retrieveMembers(null);
                            }
                        }
                    }, LabTestActivity.DELAY);
                }
            });
        }
    }

    public void setMemberSelectionScreen() {
        this.screen = MEMBER_LIST_SCREEN;
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.memberListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableTextView);
        List<ListItemDataBean> listAddMembersToTheList = addMembersToTheList(this.members);
        if (listAddMembersToTheList.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBERS_FOUND));
            this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m242xd183b012(view);
                }
            });
        } else {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
            this.listTitleView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView multiSelectPaginatedListViewWithItem = MyStaticComponents.getMultiSelectPaginatedListViewWithItem(this.context, listAddMembersToTheList, R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity$$ExternalSyntheticLambda4
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m243xd2ba02f1(adapterView, view, i, j);
                }
            }, this);
            this.memberListView = multiSelectPaginatedListViewWithItem;
            ListAdapter adapter = multiSelectPaginatedListViewWithItem.getAdapter();
            if (adapter != null) {
                for (int i = 0; i < adapter.getCount(); i++) {
                    Object item = adapter.getItem(i);
                    if ((item instanceof ListItemDataBean) && this.selectedMemberIds.contains(((ListItemDataBean) item).getMemberId())) {
                        this.memberListView.setItemChecked(i, true);
                    }
                }
            }
            this.bodyLayoutContainer.addView(this.memberListView);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m244xd3f055d0(view);
                }
            });
        }
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setMemberSelectionScreen$0$com-argusoft-sewa-android-app-activity-LabTestActivity, reason: not valid java name */
    /* synthetic */ void m242xd183b012(View view) {
        navigateToHomeScreen(false);
    }

    /* renamed from: lambda$setMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-LabTestActivity, reason: not valid java name */
    /* synthetic */ void m243xd2ba02f1(AdapterView adapterView, View view, int i, long j) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof ListItemDataBean) {
            String memberId = ((ListItemDataBean) itemAtPosition).getMemberId();
            if (this.selectedMemberIds.contains(memberId)) {
                this.selectedMemberIds.remove(memberId);
                removeMemberFromSelection(memberId);
            } else {
                this.selectedMemberIds.add(memberId);
                addMemberToSelection(memberId);
            }
            Object adapter = adapterView.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            if (adapter instanceof BaseAdapter) {
                ((BaseAdapter) adapter).notifyDataSetChanged();
            }
        }
    }

    /* renamed from: lambda$setMemberSelectionScreen$2$com-argusoft-sewa-android-app-activity-LabTestActivity, reason: not valid java name */
    /* synthetic */ void m244xd3f055d0(View view) {
        if (this.selectedMembers.isEmpty()) {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_A_MEMBER));
        } else {
            showSelectedMembersDialog();
        }
    }

    private List<ListItemDataBean> addMembersToTheList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
            }
        }
        return arrayList;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_NPCB_SCREENING_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    LabTestActivity.this.myAlertDialog.dismiss();
                    LabTestActivity.this.navigateToHomeScreen(false);
                    LabTestActivity.this.finish();
                    return;
                }
                LabTestActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_LAB_TEST_ACTIVITY.intValue()) {
            showProcessDialog();
            searchTextBox();
            retrieveMembers(null);
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
        String str2 = this.screen;
        str2.hashCode();
        if (str2.equals(MEMBER_LIST_SCREEN)) {
            this.selectedMemberIds.clear();
            this.selectedMembers.clear();
            setVillageSelectionScreen();
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        } else if (str2.equals(VILLAGE_SELECTION_SCREEN)) {
            navigateToHomeScreen(false);
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> listRetrieveMalariaScreenedMembers = this.fhsService.retrieveMalariaScreenedMembers(this.locationSelection.getSelectedLocationIds(), this.searchString, 30L, this.offset, false, true);
        this.offset += 30;
        onLoadMoreUi(listRetrieveMalariaScreenedMembers);
    }

    private void addMemberToSelection(String str) {
        for (MemberDataBean memberDataBean : this.members) {
            if (memberDataBean.getUniqueHealthId().equals(str)) {
                this.selectedMembers.add(memberDataBean);
                return;
            }
        }
    }

    private void showSelectedMembersDialog() {
        double d;
        double d2;
        int i;
        Dialog dialog = new Dialog(this);
        dialog.setCancelable(false);
        dialog.setContentView(createScrollableDialogLayout(dialog));
        int i2 = getResources().getDisplayMetrics().heightPixels;
        if (this.selectedMembers.size() <= 2) {
            i = -2;
        } else {
            if (this.selectedMembers.size() <= 4) {
                d = i2;
                d2 = 0.5d;
            } else {
                d = i2;
                d2 = 0.7d;
            }
            i = (int) (d * d2);
        }
        Window window = dialog.getWindow();
        if (window != null) {
            window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.9d), i);
            window.setBackgroundDrawableResource(android.R.drawable.dialog_frame);
        }
        dialog.show();
    }

    private View createScrollableDialogLayout(final Dialog dialog) {
        ViewGroup.LayoutParams layoutParams;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(30, 30, 30, 30);
        int i = -1;
        linearLayout.setBackgroundColor(-1);
        TextView textView = new TextView(this);
        textView.setText(LabelConstants.SELECTED_MEMBERS);
        textView.setTextSize(14.0f);
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setTypeface(null, 1);
        textView.setPadding(0, 0, 0, 15);
        linearLayout.addView(textView);
        ScrollView scrollView = new ScrollView(this);
        int i2 = -2;
        if (this.selectedMembers.size() <= 2) {
            layoutParams = new LinearLayout.LayoutParams(-1, -2);
            scrollView.setPadding(10, 5, 10, 5);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
            scrollView.setPadding(10, 10, 10, 10);
        }
        scrollView.setLayoutParams(layoutParams);
        scrollView.setBackgroundColor(Color.parseColor("#f5f5f5"));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(15, 15, 15, 15);
        int i3 = 0;
        while (i3 < this.selectedMembers.size()) {
            MemberDataBean memberDataBean = this.selectedMembers.get(i3);
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(1);
            linearLayout3.setPadding(10, 12, 10, 12);
            linearLayout3.setBackgroundColor(i);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i, i2);
            if (i3 > 0) {
                layoutParams2.topMargin = 8;
            }
            linearLayout3.setLayoutParams(layoutParams2);
            TextView textView2 = new TextView(this);
            StringBuilder sb = new StringBuilder();
            i3++;
            sb.append(i3);
            sb.append(". ");
            sb.append(memberDataBean.getUniqueHealthId());
            textView2.setText(sb.toString());
            textView2.setTextSize(14.0f);
            textView2.setTextColor(Color.parseColor("#333333"));
            textView2.setTypeface(null, 1);
            linearLayout3.addView(textView2);
            TextView textView3 = new TextView(this);
            textView3.setText(UtilBean.getMemberFullName(memberDataBean));
            textView3.setTextSize(13.0f);
            textView3.setTextColor(Color.parseColor("#666666"));
            textView3.setPadding(0, 4, 0, 0);
            linearLayout3.addView(textView3);
            linearLayout2.addView(linearLayout3);
            i = -1;
            i2 = -2;
        }
        scrollView.addView(linearLayout2);
        linearLayout.addView(scrollView);
        TextView textView4 = new TextView(this);
        textView4.setText(LabelConstants.SELECT_DATE_OF_SUBMISSION);
        textView4.setTextSize(14.0f);
        textView4.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView4.setTypeface(null, 1);
        textView4.setPadding(0, 20, 0, 10);
        linearLayout.addView(textView4);
        final QueFormBean queFormBean = new QueFormBean();
        linearLayout.addView(MyDynamicComponents.getCustomDatePicker(queFormBean, this));
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(0, 20, 0, 0);
        linearLayout4.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        Button button = new Button(this);
        button.setText("Cancel");
        button.setTextColor(-1);
        button.setBackgroundColor(Color.parseColor("#757575"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams3.rightMargin = 10;
        button.setLayoutParams(layoutParams3);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        Button button2 = new Button(this);
        button2.setText(GlobalTypes.EVENT_SUBMIT);
        button2.setTextColor(-1);
        button2.setBackgroundColor(Color.parseColor("#2196F3"));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams4.leftMargin = 10;
        button2.setLayoutParams(layoutParams4);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m241x6f8b6e15(queFormBean, dialog, view);
            }
        });
        linearLayout4.addView(button);
        linearLayout4.addView(button2);
        linearLayout.addView(linearLayout4);
        return linearLayout;
    }

    /* renamed from: lambda$createScrollableDialogLayout$4$com-argusoft-sewa-android-app-activity-LabTestActivity, reason: not valid java name */
    /* synthetic */ void m241x6f8b6e15(QueFormBean queFormBean, Dialog dialog, View view) {
        if (queFormBean.getAnswer() != null) {
            dialog.dismiss();
            JsonObject jsonObject = new JsonObject();
            JsonArray jsonArray = new JsonArray();
            Iterator<MemberDataBean> it = this.selectedMembers.iterator();
            while (it.hasNext()) {
                jsonArray.add(it.next().getId());
            }
            jsonObject.add("memberIds", jsonArray);
            jsonObject.addProperty("submissionDate", queFormBean.getAnswer().toString());
            storeReferredLabTestEntries(jsonObject.toString());
            return;
        }
        SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_A_DATE);
    }

    private void removeMemberFromSelection(String str) {
        Iterator it = new ArrayList(this.selectedMembers).iterator();
        while (it.hasNext()) {
            MemberDataBean memberDataBean = (MemberDataBean) it.next();
            if (memberDataBean.getUniqueHealthId().equals(str)) {
                this.selectedMembers.remove(memberDataBean);
                return;
            }
        }
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        if (!list.isEmpty()) {
            this.members.addAll(list);
            this.memberListView.onFinishLoadingWithItem(true, addMembersToTheList(list));
            return;
        }
        this.memberListView.onFinishLoadingWithItem(false, null);
    }

    public void storeReferredLabTestEntries(String str) {
        try {
            if (this.serviceRestClient.storeReferredLabTestDetails(str) != null) {
                showCustomDialog();
            }
        } catch (RestHttpException e) {
            hideProcessDialog();
            Log.e(TAG, LabelConstants.ERROR_WHILE_REFERRING_THE_MEMBERS, e);
            showRetryDialog(str);
        }
    }

    public void showRetryDialog(final String str) {
        this.alertDialog = new MyAlertDialog(this.context, false, LabelConstants.ERROR_OCCURRED_DURING_FORM_SUBMISSION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m246x1fe18f30(str, view);
            }
        }, DynamicUtils.BUTTON_RETRY_CANCEL);
        this.alertDialog.show();
    }

    /* renamed from: lambda$showRetryDialog$5$com-argusoft-sewa-android-app-activity-LabTestActivity, reason: not valid java name */
    /* synthetic */ void m246x1fe18f30(String str, View view) {
        if (view.getId() == -1) {
            storeReferredLabTestEntries(str);
        } else {
            navigateToHomeScreen(false);
        }
    }

    public void showCustomDialog() {
        this.alertDialog = new MyAlertDialog(this.context, false, LabelConstants.MEMBERS_REFERRED_TO_LAB_TECHNICIAN, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m245x925bfdb2(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.alertDialog.show();
    }

    /* renamed from: lambda$showCustomDialog$6$com-argusoft-sewa-android-app-activity-LabTestActivity, reason: not valid java name */
    /* synthetic */ void m245x925bfdb2(View view) {
        this.alertDialog.dismiss();
        doUpdate(false);
        navigateToHomeScreen(false);
    }
}
