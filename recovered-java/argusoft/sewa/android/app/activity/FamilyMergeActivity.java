package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
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
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class FamilyMergeActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FAMILY_INFO_SCREEN = "familyInfoScreen";
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String IS_MERGED = "isMerged";
    private LinearLayout bodyLayoutContainer;
    private List<FamilyDataBean> familyDataBeans;
    private FamilyDataBean familyToExpand;
    private FamilyDataBean familyToMerge;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private MaterialTextView listTitle;
    private String locationId;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableView;
    private long offset;
    private PagingListView paginatedListView;
    private String screenName;
    private String searchString;
    private Timer timer = new Timer();
    private long limit = 30;
    private int selectedFamilyIndex = -1;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.familyToExpand = (FamilyDataBean) new Gson().fromJson(extras.getString("familyToExpand", null), FamilyDataBean.class);
            this.locationId = extras.getString("locationId", null);
        }
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
            Intent intent = new Intent(this.context, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.FAMILY_MERGE_TITLE));
        setSubTitle(null);
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setBodyDetail();
    }

    public void setBodyDetail() {
        showProcessDialog();
        addSearchTextBox();
        retrieveFamilyList(null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this.context, false, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_MERGE_FAMILY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMergeActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilyMergeActivity.this.alertDialog.dismiss();
                    Intent intent = new Intent();
                    intent.putExtra(FamilyMergeActivity.IS_MERGED, false);
                    FamilyMergeActivity.this.setResult(0, intent);
                    FamilyMergeActivity.this.finish();
                    return;
                }
                FamilyMergeActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screenName;
            str.hashCode();
            if (str.equals(FAMILY_INFO_SCREEN)) {
                this.alertDialog = new MyAlertDialog(this.context, false, LabelConstants.SURE_YOU_WANT_TO_MERGE_THESE_TWO_FAMILIES, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMergeActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (view2.getId() == -1) {
                            FamilyMergeActivity.this.alertDialog.dismiss();
                            FamilyMergeActivity.this.showProcessDialog();
                            SharedStructureData.familyDataBeanToBeMerged = FamilyMergeActivity.this.familyToMerge;
                            Intent intent = new Intent();
                            intent.putExtra(FamilyMergeActivity.IS_MERGED, true);
                            intent.putExtra("familyToExpand", FamilyMergeActivity.this.familyToExpand.getFamilyId());
                            intent.putExtra("familyToMerge", FamilyMergeActivity.this.familyToMerge.getFamilyId());
                            FamilyMergeActivity.this.setResult(-1, intent);
                            FamilyMergeActivity.this.hideProcessDialog();
                            FamilyMergeActivity.this.finish();
                            return;
                        }
                        FamilyMergeActivity.this.alertDialog.dismiss();
                        SharedStructureData.familyDataBeanToBeMerged = null;
                        Intent intent2 = new Intent();
                        intent2.putExtra(FamilyMergeActivity.IS_MERGED, false);
                        FamilyMergeActivity.this.setResult(0, intent2);
                        FamilyMergeActivity.this.finish();
                    }
                }, DynamicUtils.BUTTON_YES_NO);
                this.alertDialog.show();
            } else if (str.equals(FAMILY_SELECTION_SCREEN)) {
                setSubTitle(null);
                int i = this.selectedFamilyIndex;
                if (i != -1) {
                    FamilyDataBean familyDataBean = this.familyDataBeans.get(i);
                    this.familyToMerge = familyDataBean;
                    if (familyDataBean.getFamilyId().equals(this.familyToExpand.getFamilyId())) {
                        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.SELECTED_THE_SAME_FAMILY_PLEASE_SELECT_SOME_OTHER_FAMILY));
                        return;
                    } else {
                        addFamilyInfoScreen();
                        return;
                    }
                }
                SewaUtil.generateToast(this, LabelConstants.SELECT_A_FAMILY_TO_MERGE);
            }
        }
    }

    private void addSearchTextBox() {
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SEARCH_AND_SELECT_FAMILY_TO_MERGE));
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 1);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass3(editText));
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.FamilyMergeActivity$3, reason: invalid class name */
    class AnonymousClass3 implements TextWatcher {
        final /* synthetic */ TextInputLayout val$editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass3(TextInputLayout textInputLayout) {
            this.val$editText = textInputLayout;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            FamilyMergeActivity.this.timer.cancel();
            FamilyMergeActivity.this.timer = new Timer();
            FamilyMergeActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.FamilyMergeActivity.3.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        FamilyMergeActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FamilyMergeActivity.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FamilyMergeActivity.this.retrieveFamilyList(charSequence.toString());
                                AnonymousClass3.this.val$editText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        FamilyMergeActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.FamilyMergeActivity.3.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                FamilyMergeActivity.this.showProcessDialog();
                                FamilyMergeActivity.this.retrieveFamilyList(null);
                            }
                        });
                    }
                }
            }, FamilyMergeActivity.DELAY);
        }
    }

    public void retrieveFamilyList(String str) {
        this.searchString = str;
        this.offset = 0L;
        this.familyDataBeans = this.fhsService.retrieveFamilyDataBeansForMergeFamily(this.locationId, str, this.limit, 0L);
        this.offset += this.limit;
        setFamilySelectionScreen(str != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.screenName = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableView);
        this.bodyLayoutContainer.removeView(this.listTitle);
        if (!this.familyDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FAMILY);
            this.listTitle = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getFamilyList(this.familyDataBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMergeActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    FamilyMergeActivity.this.selectedFamilyIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableView = materialTextViewGenerateQuestionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateQuestionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        if (z) {
            return;
        }
        hideProcessDialog();
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
                familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(LabelConstants.NULL, ""));
                myLabel = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            String str = myLabel;
            if (FhsConstants.CFHC_VERIFIED_FAMILY_STATES.contains(familyDataBean.getState())) {
                arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, true));
            } else {
                arrayList2.add(new ListItemDataBean(null, familyDataBean.getFamilyId(), null, null, str, false));
            }
        }
        return arrayList2;
    }

    private void addFamilyInfoScreen() {
        this.screenName = FAMILY_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        addSelectedFamilyDetails(this.familyToExpand, LabelConstants.FAMILY_DETAILS);
        addSelectedFamilyDetails(this.familyToMerge, LabelConstants.DETAILS_OF_FAMILY_TO_BE_MERGED);
    }

    private void addSelectedFamilyDetails(FamilyDataBean familyDataBean, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES);
        arrayList.addAll(FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES);
        if (arrayList.contains(familyDataBean.getState())) {
            familyDataBean.setMembers(this.fhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean.getFamilyId()));
        } else {
            familyDataBean.setMembers(this.fhsService.retrieveMemberDataBeansByFamily(familyDataBean.getFamilyId()));
        }
        MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, str);
        listTitleView.setPadding(0, 30, 0, 0);
        if (str.equals(LabelConstants.FAMILY_DETAILS)) {
            LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
            detailsLayout.addView(listTitleView);
            detailsLayout.addView(MyStaticComponents.generateLabelView(this, LabelConstants.FAMILY_ID));
            detailsLayout.addView(MyStaticComponents.generateBoldAnswerView(this, familyDataBean.getFamilyId()));
            detailsLayout.addView(MyStaticComponents.generateLabelView(this, LabelConstants.MEMBERS_INFO));
            detailsLayout.addView(UtilBean.getMembersListForDisplay(this, familyDataBean));
            detailsLayout.setPadding(40, 0, 0, 0);
            this.bodyLayoutContainer.addView(detailsLayout);
        } else {
            MaterialTextView listTitleView2 = MyStaticComponents.getListTitleView(this, "");
            ImageSpan imageSpan = new ImageSpan(this, R.drawable.ic_merge_arrow);
            SpannableString spannableString = new SpannableString(" " + UtilBean.getMyLabel(str));
            listTitleView2.setPadding(-10, 0, 0, 0);
            spannableString.setSpan(imageSpan, 0, 1, 0);
            listTitleView2.setText(spannableString);
            this.bodyLayoutContainer.addView(listTitleView2);
            this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this, LabelConstants.FAMILY_ID));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateBoldAnswerView(this, familyDataBean.getFamilyId()));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateLabelView(this, LabelConstants.MEMBERS_INFO));
            this.bodyLayoutContainer.addView(UtilBean.getMembersListForDisplay(this, familyDataBean));
        }
        this.nextButton.setText(GlobalTypes.EVENT_MERGE);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screenName;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screenName;
            str2.hashCode();
            if (str2.equals(FAMILY_INFO_SCREEN)) {
                showProcessDialog();
                this.bodyLayoutContainer.removeAllViews();
                addSearchTextBox();
                setFamilySelectionScreen(false);
            } else if (str2.equals(FAMILY_SELECTION_SCREEN)) {
                Intent intent = new Intent();
                intent.putExtra(IS_MERGED, false);
                setResult(0, intent);
                finish();
            }
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForMergeFamily = this.fhsService.retrieveFamilyDataBeansForMergeFamily(this.locationId, this.searchString, this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listRetrieveFamilyDataBeansForMergeFamily);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, getFamilyList(list));
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
