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
public class LeprosySurveyActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String FAMILY_SCREEN = "familyScreen";
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
    private List<FamilyDataBean> familyList = new ArrayList();
    private int selectedFamilyIndex = -1;
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
        setTitle(UtilBean.getTitleText(LabelConstants.LEPROSY_SURVEY));
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
        String str = this.screen;
        str.hashCode();
        if (str.equals(FAMILY_SCREEN)) {
            int i = this.selectedFamilyIndex;
            if (i == -1) {
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_A_FAMILY);
                return;
            } else {
                this.familySelected = this.familyList.get(i);
                startDynamicFormActivityForLCDC();
                return;
            }
        }
        if (str.equals(LOCATION_SCREEN)) {
            if (this.locationSelection.getSelectedLocationIds() == null || this.locationSelection.getSelectedLocationIds().isEmpty()) {
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SELECT_LOCATION);
                return;
            }
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            addSearchTextBoxForFamily();
            retrieveLCDCFamilyListFromDB(null);
        }
    }

    public void addSearchTextBoxForFamily() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 15, 1);
        this.searchText = editText;
        editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.LeprosySurveyActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                LeprosySurveyActivity.this.timer.cancel();
                LeprosySurveyActivity.this.timer = new Timer();
                LeprosySurveyActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.LeprosySurveyActivity.1.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        LeprosySurveyActivity leprosySurveyActivity = LeprosySurveyActivity.this;
                        CharSequence charSequence2 = charSequence;
                        leprosySurveyActivity.retrieveLCDCFamilyListFromDB((charSequence2 == null || charSequence2.length() <= 2) ? null : charSequence.toString());
                    }
                }, LeprosySurveyActivity.DELAY);
            }
        });
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    public void retrieveLCDCFamilyListFromDB(String str) {
        this.offset = 0;
        this.selectedFamilyIndex = -1;
        if (str == null) {
            this.familyList = this.fhsService.retrieveFamilyDataBeansForLCDCByArea(this.locationSelection.getSelectedLocationIds(), this.limit, this.offset);
            this.offset += this.limit;
        } else {
            this.familyList = this.fhsService.searchFamilyDataBeansForLCDCByArea(this.locationSelection.getSelectedLocationIds(), str);
        }
        setFamilySelectionScreen(str != null);
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
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getFamilyList(this.familyList), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.LeprosySurveyActivity$$ExternalSyntheticLambda1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.f$0.m251xc4f3fb91(adapterView, view, i, j);
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
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LeprosySurveyActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m252x59326b30(view);
                }
            });
        }
        this.footerLayout.setVisibility(0);
        hideProcessDialog();
    }

    /* renamed from: lambda$setFamilySelectionScreen$0$com-argusoft-sewa-android-app-activity-LeprosySurveyActivity, reason: not valid java name */
    /* synthetic */ void m251xc4f3fb91(AdapterView adapterView, View view, int i, long j) {
        this.selectedFamilyIndex = i;
    }

    /* renamed from: lambda$setFamilySelectionScreen$1$com-argusoft-sewa-android-app-activity-LeprosySurveyActivity, reason: not valid java name */
    /* synthetic */ void m252x59326b30(View view) {
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
        loadMoreFamiliesLeprosy();
    }

    public void loadMoreFamiliesLeprosy() {
        List<FamilyDataBean> listRetrieveFamilyDataBeansForLCDCByArea = this.fhsService.retrieveFamilyDataBeansForLCDCByArea(this.locationSelection.getSelectedLocationIds(), this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUiFamilies(listRetrieveFamilyDataBeansForLCDCByArea);
    }

    public void onLoadMoreUiFamilies(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.familyList.addAll(list);
            this.pagingListView.onFinishLoadingWithItem(true, getFamilyList(list));
        } else {
            this.pagingListView.onFinishLoadingWithItem(false, null);
        }
    }

    private void startDynamicFormActivityForLCDC() {
        try {
            this.formMetaDataUtil.setMetaDataForLcdcCampaign(this.familySelected, this, FormConstants.LCDC_CAMPAIGN);
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", FormConstants.LCDC_CAMPAIGN);
            startActivityForResult(intent, 200);
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LeprosySurveyActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LeprosySurveyActivity.this.alertDialog.dismiss();
                    LeprosySurveyActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_LCDC_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LeprosySurveyActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m250x5dd5c91f(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$2$com-argusoft-sewa-android-app-activity-LeprosySurveyActivity, reason: not valid java name */
    /* synthetic */ void m250x5dd5c91f(View view) {
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            String str = this.screen;
            str.hashCode();
            if (str.equals(FAMILY_SCREEN)) {
                showProcessDialog();
                setLocationSelectionScreen();
                hideProcessDialog();
            } else if (str.equals(LOCATION_SCREEN)) {
                navigateToHomeScreen(false);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 200) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            this.selectedFamilyIndex = -1;
            this.familySelected = null;
            this.offset = 0;
            addSearchTextBoxForFamily();
            retrieveLCDCFamilyListFromDB(null);
            hideProcessDialog();
        }
    }
}
