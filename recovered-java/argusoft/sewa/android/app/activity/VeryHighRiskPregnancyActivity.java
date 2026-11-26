package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class VeryHighRiskPregnancyActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String DETAILS_SCREEN = "detailsScreen";
    public static final String DISPLAY_MEMBERS = "displayMembers";
    public static final int REQUEST_CODE_FOR_VHRPW = 200;
    public static final String TYPE_SELECTION_SCREEN = "typeSelectionScreen";
    private static final String VERY_HIGH_RISK_WOMEN_SELECTION_SCREEN = "veryHighRiskWomenSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView listTitleView;
    private PagingListView memberListView;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private MaterialTextView noMemberAvailableTextView;
    private long offset;
    private String screen;
    private Integer selectedVillage;
    SewaServiceImpl sewaService;
    private Spinner villageSpinner;
    private List<Integer> selectedVillages = new LinkedList();
    private MemberDataBean memberSelected = null;
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<MemberDataBean> highRiskPregnantWomen = new ArrayList();
    private int selectedWomanIndex = -1;
    private long limit = 30;
    private Timer timer = new Timer();
    private String searchString = null;
    private int selectedTypeIndex = -1;
    List<MemberDataBean> membersWithCorrectBankDetail = new ArrayList();
    List<MemberDataBean> membersWithIncorrectBankDetail = new ArrayList();

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
        setTitle(UtilBean.getTitleText(LabelConstants.VERY_HIGH_RISK_WOMEN));
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0015  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.onClick(android.view.View):void");
    }

    private void startDynamicFormActivity(String str, MemberDataBean memberDataBean) {
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        try {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(FormConstants.VHRPW, memberDataBean.getId(), memberDataBean.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", str);
            intent.putExtra(RelatedPropertyNameConstants.IS_VERY_HIGH_RISK, true);
            startActivityForResult(intent, 200);
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VeryHighRiskPregnancyActivity.this.alertDialog.dismiss();
                    VeryHighRiskPregnancyActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    public void addVillageSelectionSpinner() {
        setSubTitle(null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_VILLAGE)));
        String[] strArr = new String[this.villageList.size()];
        Iterator<LocationBean> it = this.villageList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        this.villageSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                VeryHighRiskPregnancyActivity.this.bodyLayoutContainer.removeView(VeryHighRiskPregnancyActivity.this.ashaAreaSpinner);
                VeryHighRiskPregnancyActivity veryHighRiskPregnancyActivity = VeryHighRiskPregnancyActivity.this;
                veryHighRiskPregnancyActivity.ashaAreaList = veryHighRiskPregnancyActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) VeryHighRiskPregnancyActivity.this.villageList.get(i2)).getActualID());
                VeryHighRiskPregnancyActivity.this.addAshaAreaSelectionSpinner();
            }
        });
        this.bodyLayoutContainer.addView(this.villageSpinner);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.SELECT_ASHA_AREA)));
        addAshaAreaSelectionSpinner();
    }

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

    public void setSelectionType() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = "typeSelectionScreen";
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.VERY_HIGH_RISK_WOMEN));
        arrayList.add(new ListItemDataBean(LabelConstants.REJECTED_MEMBERS_BY_MO));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                VeryHighRiskPregnancyActivity.this.showProcessDialog();
                VeryHighRiskPregnancyActivity.this.selectedTypeIndex = i;
                VeryHighRiskPregnancyActivity.this.footerLayout.setVisibility(0);
                VeryHighRiskPregnancyActivity.this.setSubTitle(null);
                VeryHighRiskPregnancyActivity.this.bodyLayoutContainer.removeAllViews();
                VeryHighRiskPregnancyActivity.this.searchTextBox();
                VeryHighRiskPregnancyActivity.this.retrieveHighRiskWomenAndChildList(null);
            }
        }, null));
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    public void displayMembers(List<ListItemDataBean> list) {
        this.screen = DISPLAY_MEMBERS;
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.memberListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableTextView);
        this.selectedWomanIndex = -1;
        if (list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_VERY_HIGH_RISK_PREGNANT_WOMEN_IN_AREA));
            this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m554x8b85a39e(view);
                }
            });
        } else {
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    if (VeryHighRiskPregnancyActivity.this.selectedTypeIndex == 0) {
                        VeryHighRiskPregnancyActivity veryHighRiskPregnancyActivity = VeryHighRiskPregnancyActivity.this;
                        veryHighRiskPregnancyActivity.selectedWomanIndex = veryHighRiskPregnancyActivity.highRiskPregnantWomen.indexOf(VeryHighRiskPregnancyActivity.this.membersWithCorrectBankDetail.get(i));
                    } else {
                        VeryHighRiskPregnancyActivity veryHighRiskPregnancyActivity2 = VeryHighRiskPregnancyActivity.this;
                        veryHighRiskPregnancyActivity2.selectedWomanIndex = veryHighRiskPregnancyActivity2.highRiskPregnantWomen.indexOf(VeryHighRiskPregnancyActivity.this.membersWithIncorrectBankDetail.get(i));
                    }
                }
            };
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
            this.listTitleView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, list, R.layout.listview_row_with_item, onItemClickListener, this);
            this.memberListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$displayMembers$0$com-argusoft-sewa-android-app-activity-VeryHighRiskPregnancyActivity, reason: not valid java name */
    /* synthetic */ void m554x8b85a39e(View view) {
        navigateToHomeScreen(false);
    }

    private List<ListItemDataBean> addMemberList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                if (memberDataBean.getId() != null) {
                    arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean)));
                }
            }
        }
        return arrayList;
    }

    public void retrieveHighRiskWomenAndChildList(String str) {
        this.membersWithCorrectBankDetail.clear();
        this.membersWithIncorrectBankDetail.clear();
        this.selectedVillages.add(this.selectedVillage);
        this.offset = 0L;
        this.searchString = str;
        this.highRiskPregnantWomen = this.fhsService.retrieveVeryHighRiskPregnantWomenByAshaArea(this.selectedAshaAreas, this.selectedVillages, str, this.limit, 0L);
        List<ListItemDataBean> arrayList = new ArrayList<>();
        for (MemberDataBean memberDataBean : this.highRiskPregnantWomen) {
            MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberDataBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
            if (memberAdditionalInfoDataBean == null) {
                memberAdditionalInfoDataBean = new MemberAdditionalInfoDataBean();
            }
            this.membersWithCorrectBankDetail.add(memberDataBean);
            if (memberAdditionalInfoDataBean.getVhrpwRejected() != null && Boolean.TRUE.equals(memberAdditionalInfoDataBean.getVhrpwRejected())) {
                this.membersWithIncorrectBankDetail.add(memberDataBean);
            }
            if (this.selectedTypeIndex == 0) {
                arrayList = addMemberList(this.membersWithCorrectBankDetail);
            } else {
                arrayList = addMemberList(this.membersWithIncorrectBankDetail);
            }
        }
        this.offset += this.limit;
        displayMembers(arrayList);
    }

    public void searchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.5
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    VeryHighRiskPregnancyActivity.this.timer.cancel();
                    VeryHighRiskPregnancyActivity.this.timer = new Timer();
                    VeryHighRiskPregnancyActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.5.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence2 = charSequence;
                            if (charSequence2 != null && charSequence2.length() > 2) {
                                VeryHighRiskPregnancyActivity.this.showProcessDialog();
                                VeryHighRiskPregnancyActivity.this.retrieveHighRiskWomenAndChildList(charSequence.toString());
                                return;
                            }
                            CharSequence charSequence3 = charSequence;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                VeryHighRiskPregnancyActivity.this.showProcessDialog();
                                VeryHighRiskPregnancyActivity.this.retrieveHighRiskWomenAndChildList(null);
                            }
                        }
                    }, VeryHighRiskPregnancyActivity.DELAY);
                }
            });
        }
    }

    public void setHighRiskWomenAndChildSelectionScreen() {
        this.screen = VERY_HIGH_RISK_WOMEN_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.memberListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableTextView);
        List<ListItemDataBean> listAddHighRiskMemberList = addHighRiskMemberList(this.highRiskPregnantWomen);
        if (listAddHighRiskMemberList.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_VERY_HIGH_RISK_PREGNANT_WOMEN_IN_AREA));
            this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VeryHighRiskPregnancyActivity.this.navigateToHomeScreen(false);
                }
            });
        } else {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
            this.listTitleView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddHighRiskMemberList, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.7
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    VeryHighRiskPregnancyActivity.this.selectedWomanIndex = i;
                }
            }, this);
            this.memberListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            this.nextButton.setOnClickListener(this);
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> addHighRiskMemberList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean)));
            }
        }
        return arrayList;
    }

    private void setDetailsScreen() {
        showProcessDialog();
        this.screen = DETAILS_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MEMBER_NAME));
        detailsLayout.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.memberSelected)));
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.VERY_HIGH_RISK_REASON));
        MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(this.memberSelected.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
        if (memberAdditionalInfoDataBean != null && memberAdditionalInfoDataBean.getVeryHighRiskReasons() != null && !memberAdditionalInfoDataBean.getVeryHighRiskReasons().isEmpty()) {
            int i = 1;
            for (String str : memberAdditionalInfoDataBean.getVeryHighRiskReasons().split(GlobalTypes.COMMA)) {
                detailsLayout.addView(MyStaticComponents.generateAnswerView(this, i + ". " + UtilBean.getMyLabel(str.trim())));
                i++;
            }
        } else {
            detailsLayout.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(detailsLayout);
        hideProcessDialog();
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m555x6dadafc8(view);
            }
        });
    }

    /* renamed from: lambda$setDetailsScreen$1$com-argusoft-sewa-android-app-activity-VeryHighRiskPregnancyActivity, reason: not valid java name */
    /* synthetic */ void m555x6dadafc8(View view) {
        setSelectionType();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_CLOSE_VERY_HIGH_RISK_PREGNANCY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    VeryHighRiskPregnancyActivity.this.myAlertDialog.dismiss();
                    VeryHighRiskPregnancyActivity.this.navigateToHomeScreen(false);
                    VeryHighRiskPregnancyActivity.this.finish();
                    return;
                }
                VeryHighRiskPregnancyActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r7) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.VeryHighRiskPregnancyActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 200) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            searchTextBox();
            retrieveHighRiskWomenAndChildList(null);
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
        hideProcessDialog();
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> listRetrieveVeryHighRiskPregnantWomenByAshaArea = this.fhsService.retrieveVeryHighRiskPregnantWomenByAshaArea(this.selectedAshaAreas, this.selectedVillages, this.searchString, this.limit, this.offset);
        this.offset += this.limit;
        if (this.selectedTypeIndex == 0) {
            onLoadMoreUi(listRetrieveVeryHighRiskPregnantWomenByAshaArea);
            this.membersWithCorrectBankDetail.addAll(listRetrieveVeryHighRiskPregnantWomenByAshaArea);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : listRetrieveVeryHighRiskPregnantWomenByAshaArea) {
            MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(memberDataBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
            if (memberAdditionalInfoDataBean == null) {
                memberAdditionalInfoDataBean = new MemberAdditionalInfoDataBean();
            }
            if (memberAdditionalInfoDataBean.getVhrpwRejected() != null && Boolean.TRUE.equals(memberAdditionalInfoDataBean.getVhrpwRejected())) {
                arrayList.add(memberDataBean);
            }
        }
        onLoadMoreUi(arrayList);
        this.membersWithIncorrectBankDetail.addAll(arrayList);
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        if (!list.isEmpty()) {
            this.highRiskPregnantWomen.addAll(list);
            this.memberListView.onFinishLoadingWithItem(true, addHighRiskMemberList(list));
            return;
        }
        this.memberListView.onFinishLoadingWithItem(false, null);
    }
}
