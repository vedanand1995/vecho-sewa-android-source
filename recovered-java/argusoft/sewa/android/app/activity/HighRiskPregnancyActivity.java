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
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
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
public class HighRiskPregnancyActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String HIGH_RISK_WOMEN_AND_CHILD_SELECTION_SCREEN = "highRiskWomenAndChildSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY = 200;
    private static final String TYPE_SELECTION_SCREEN = "typeSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private static final String VISIT_SELECTION_SCREEN = "visitSelectionScreen";
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
    private List<String> visitForms;
    private List<String> visits;
    private List<Integer> selectedVillages = new LinkedList();
    private MemberDataBean memberSelected = null;
    private List<LocationBean> villageList = new ArrayList();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<Integer> selectedAshaAreas = new ArrayList();
    private List<MemberDataBean> highRiskPregnantWomen = new ArrayList();
    private List<MemberDataBean> highRiskChildren = new ArrayList();
    private int selectedWomanIndex = -1;
    private int selectedChildIndex = -1;
    private int selectedTypeIndex = -1;
    private int selectedVisitIndex = -1;
    private long limit = 30;
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
        setTitle(UtilBean.getTitleText(LabelConstants.HIGH_RISK_WOMEN_AND_CHILD_TITLE));
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
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.onClick(android.view.View):void");
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
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                HighRiskPregnancyActivity.this.bodyLayoutContainer.removeView(HighRiskPregnancyActivity.this.ashaAreaSpinner);
                HighRiskPregnancyActivity highRiskPregnancyActivity = HighRiskPregnancyActivity.this;
                highRiskPregnancyActivity.ashaAreaList = highRiskPregnancyActivity.fhsService.retrieveAshaAreaAssignedToUser(((LocationBean) HighRiskPregnancyActivity.this.villageList.get(i2)).getActualID());
                HighRiskPregnancyActivity.this.addAshaAreaSelectionSpinner();
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

    public void retrieveHighRiskWomenAndChildList(String str) {
        this.selectedVillages.add(this.selectedVillage);
        this.offset = 0L;
        this.searchString = str;
        if (this.selectedTypeIndex == 0) {
            this.highRiskPregnantWomen = this.fhsService.retrievePregnantWomenByAshaArea(this.selectedAshaAreas, true, this.selectedVillages, str, this.limit, 0L);
        } else {
            this.highRiskChildren = this.fhsService.retrieveChildsBelow5YearsByAshaArea(this.selectedAshaAreas, true, this.selectedVillages, str, null, null, null, this.limit, this.offset);
        }
        this.offset += this.limit;
        setHighRiskWomenAndChildSelectionScreen();
    }

    public void setSelectionType() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = "typeSelectionScreen";
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(LabelConstants.HIGH_RISK_WOMEN));
        arrayList.add(new ListItemDataBean(LabelConstants.HIGH_RISK_CHILDREN));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                HighRiskPregnancyActivity.this.showProcessDialog();
                HighRiskPregnancyActivity.this.selectedTypeIndex = i;
                HighRiskPregnancyActivity.this.footerLayout.setVisibility(0);
                HighRiskPregnancyActivity.this.setSubTitle(null);
                HighRiskPregnancyActivity.this.bodyLayoutContainer.removeAllViews();
                HighRiskPregnancyActivity.this.searchTextBox();
                HighRiskPregnancyActivity.this.retrieveHighRiskWomenAndChildList(null);
            }
        }, null));
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    public void searchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    HighRiskPregnancyActivity.this.timer.cancel();
                    HighRiskPregnancyActivity.this.timer = new Timer();
                    HighRiskPregnancyActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.3.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence2 = charSequence;
                            if (charSequence2 != null && charSequence2.length() > 2) {
                                HighRiskPregnancyActivity.this.retrieveHighRiskWomenAndChildList(charSequence.toString());
                                return;
                            }
                            CharSequence charSequence3 = charSequence;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                HighRiskPregnancyActivity.this.retrieveHighRiskWomenAndChildList(null);
                            }
                        }
                    }, HighRiskPregnancyActivity.DELAY);
                }
            });
        }
    }

    public void setHighRiskWomenAndChildSelectionScreen() {
        this.screen = HIGH_RISK_WOMEN_AND_CHILD_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.listTitleView);
        this.bodyLayoutContainer.removeView(this.memberListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableTextView);
        int i = this.selectedTypeIndex;
        if (i == 0) {
            List<ListItemDataBean> listAddHighRiskMemberList = addHighRiskMemberList(this.highRiskPregnantWomen);
            if (listAddHighRiskMemberList.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_HIGH_RISK_PREGNANT_WOMEN_IN_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HighRiskPregnancyActivity.this.navigateToHomeScreen(false);
                    }
                });
            } else {
                MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
                this.listTitleView = listTitleView;
                this.bodyLayoutContainer.addView(listTitleView);
                PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddHighRiskMemberList, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.5
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        HighRiskPregnancyActivity.this.selectedWomanIndex = i2;
                    }
                }, this);
                this.memberListView = paginatedListViewWithItem;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
        } else if (i == 1) {
            List<ListItemDataBean> listAddHighRiskMemberList2 = addHighRiskMemberList(this.highRiskChildren);
            if (listAddHighRiskMemberList2.isEmpty()) {
                MaterialTextView materialTextViewGenerateInstructionView2 = MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_HIGH_RISK_CHILDREN_IN_AREA));
                this.noMemberAvailableTextView = materialTextViewGenerateInstructionView2;
                this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView2);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HighRiskPregnancyActivity.this.navigateToHomeScreen(false);
                    }
                });
            } else {
                MaterialTextView listTitleView2 = MyStaticComponents.getListTitleView(this.context, LabelConstants.SELECT_FROM_LIST);
                this.listTitleView = listTitleView2;
                this.bodyLayoutContainer.addView(listTitleView2);
                PagingListView paginatedListViewWithItem2 = MyStaticComponents.getPaginatedListViewWithItem(this.context, listAddHighRiskMemberList2, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.7
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        HighRiskPregnancyActivity.this.selectedChildIndex = i2;
                    }
                }, this);
                this.memberListView = paginatedListViewWithItem2;
                this.bodyLayoutContainer.addView(paginatedListViewWithItem2);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            }
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

    private void setVisitSelectionScreen(List<String> list) {
        showProcessDialog();
        this.screen = VISIT_SELECTION_SCREEN;
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        ArrayList arrayList = new ArrayList();
        this.visitForms = new ArrayList();
        LinearLayout detailsLayout = MyStaticComponents.getDetailsLayout(this.context, -1, 1, this.bodyLayoutContainer.getPaddingTop());
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MEMBER_NAME));
        detailsLayout.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMemberFullName(this.memberSelected)));
        detailsLayout.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.HIGH_RISK_REASON));
        MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new Gson().fromJson(this.memberSelected.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
        if (memberAdditionalInfoDataBean != null && memberAdditionalInfoDataBean.getHighRiskReasons() != null && !memberAdditionalInfoDataBean.getHighRiskReasons().isEmpty()) {
            int i = 1;
            for (String str : memberAdditionalInfoDataBean.getHighRiskReasons().replaceAll("[\\[\\]]", "").trim().split(GlobalTypes.COMMA)) {
                String strTrim = str.trim();
                if (RchConstants.getHighRiskDiseaseFromConstant(strTrim) != null) {
                    strTrim = RchConstants.getHighRiskDiseaseFromConstant(strTrim);
                }
                detailsLayout.addView(MyStaticComponents.generateAnswerView(this, i + ". " + strTrim));
                i++;
            }
        } else {
            detailsLayout.addView(MyStaticComponents.generateAnswerView(this, UtilBean.getMyLabel("Not available")));
        }
        this.bodyLayoutContainer.addView(detailsLayout);
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_VISIT));
        for (String str2 : list) {
            arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(UtilBean.getFullFormOfEntity().get(str2)), null));
            this.visitForms.add(str2);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                HighRiskPregnancyActivity.this.selectedVisitIndex = i2;
            }
        }, null));
        hideProcessDialog();
    }

    private void startDynamicFormActivity(String str, MemberDataBean memberDataBean) {
        setSubTitle(UtilBean.getMemberFullName(this.memberSelected));
        try {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(str, memberDataBean.getId(), memberDataBean.getFamilyId(), null, PreferenceManager.getDefaultSharedPreferences(this));
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            intent.putExtra("entity", this.visitForms.get(this.selectedVisitIndex));
            startActivityForResult(intent, REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY.intValue());
            this.selectedVisitIndex = -1;
            hideProcessDialog();
        } catch (DataException unused) {
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HighRiskPregnancyActivity.this.alertDialog.dismiss();
                    HighRiskPregnancyActivity.this.navigateToHomeScreen(false);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_CLOSE_HIGH_RISK_PREGNANCY, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    HighRiskPregnancyActivity.this.myAlertDialog.dismiss();
                    HighRiskPregnancyActivity.this.navigateToHomeScreen(false);
                    HighRiskPregnancyActivity.this.finish();
                    return;
                }
                HighRiskPregnancyActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY.intValue()) {
            showProcessDialog();
            this.bodyLayoutContainer.removeAllViews();
            setVisitSelectionScreen(this.visits);
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r6) {
        /*
            r5 = this;
            super.onOptionsItemSelected(r6)
            java.lang.String r0 = r5.screen
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Ld1
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Ld1
        L11:
            int r6 = r6.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r6 != r0) goto Ld0
            java.lang.String r6 = r5.screen
            r6.hashCode()
            int r0 = r6.hashCode()
            java.lang.String r3 = "villageSelectionScreen"
            r4 = -1
            switch(r0) {
                case -1512548570: goto L4a;
                case -1196731778: goto L3f;
                case -329684276: goto L36;
                case 242061389: goto L2b;
                default: goto L29;
            }
        L29:
            r6 = -1
            goto L54
        L2b:
            java.lang.String r0 = "visitSelectionScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L34
            goto L29
        L34:
            r6 = 3
            goto L54
        L36:
            boolean r6 = r6.equals(r3)
            if (r6 != 0) goto L3d
            goto L29
        L3d:
            r6 = 2
            goto L54
        L3f:
            java.lang.String r0 = "typeSelectionScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L48
            goto L29
        L48:
            r6 = 1
            goto L54
        L4a:
            java.lang.String r0 = "highRiskWomenAndChildSelectionScreen"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L53
            goto L29
        L53:
            r6 = 0
        L54:
            java.lang.String r0 = "Next"
            switch(r6) {
                case 0: goto Lb9;
                case 1: goto L76;
                case 2: goto L72;
                case 3: goto L5b;
                default: goto L59;
            }
        L59:
            goto Lcf
        L5b:
            r5.showProcessDialog()
            r5.selectedWomanIndex = r4
            r5.selectedChildIndex = r4
            r6 = 0
            r5.setSubTitle(r6)
            android.widget.LinearLayout r0 = r5.bodyLayoutContainer
            r0.removeAllViews()
            r5.searchTextBox()
            r5.retrieveHighRiskWomenAndChildList(r6)
            goto Lcf
        L72:
            r5.navigateToHomeScreen(r2)
            goto Lcf
        L76:
            r5.showProcessDialog()
            android.widget.Button r6 = r5.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r6.setText(r0)
            android.widget.Button r6 = r5.nextButton
            r6.setOnClickListener(r5)
            android.widget.LinearLayout r6 = r5.footerLayout
            r6.setVisibility(r2)
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r6 = r5.villageList
            int r6 = r6.size()
            if (r6 != r1) goto L9d
            android.widget.LinearLayout r6 = r5.bodyLayoutContainer
            r6.removeAllViews()
            r5.addVillageSelectionSpinner()
            goto Lb6
        L9d:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r6 = r5.villageList
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto La9
            r5.navigateToHomeScreen(r2)
            goto Lb6
        La9:
            android.widget.LinearLayout r6 = r5.bodyLayoutContainer
            r6.removeAllViews()
            java.util.List<java.lang.Integer> r6 = r5.selectedAshaAreas
            r6.clear()
            r5.addVillageSelectionSpinner()
        Lb6:
            r5.screen = r3
            goto Lcf
        Lb9:
            r5.showProcessDialog()
            r5.setSelectionType()
            r5.selectedTypeIndex = r4
            android.widget.Button r6 = r5.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r6.setText(r0)
            android.widget.Button r6 = r5.nextButton
            r6.setOnClickListener(r5)
        Lcf:
            return r1
        Ld0:
            return r2
        Ld1:
            r5.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.HighRiskPregnancyActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        int i = this.selectedTypeIndex;
        if (i == 0) {
            List<MemberDataBean> listRetrievePregnantWomenByAshaArea = this.fhsService.retrievePregnantWomenByAshaArea(this.selectedAshaAreas, true, this.selectedVillages, this.searchString, this.limit, this.offset);
            this.offset += this.limit;
            onLoadMoreUi(listRetrievePregnantWomenByAshaArea);
        } else {
            if (i != 1) {
                return;
            }
            List<MemberDataBean> listRetrieveChildsBelow5YearsByAshaArea = this.fhsService.retrieveChildsBelow5YearsByAshaArea(this.selectedAshaAreas, true, this.selectedVillages, this.searchString, null, null, null, this.limit, this.offset);
            this.offset += this.limit;
            onLoadMoreUi(listRetrieveChildsBelow5YearsByAshaArea);
        }
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        int i = this.selectedTypeIndex;
        if (i == 0) {
            if (!list.isEmpty()) {
                this.highRiskPregnantWomen.addAll(list);
                this.memberListView.onFinishLoadingWithItem(true, addHighRiskMemberList(list));
                return;
            }
            this.memberListView.onFinishLoadingWithItem(false, null);
            return;
        }
        if (i != 1) {
            return;
        }
        if (!list.isEmpty()) {
            this.highRiskChildren.addAll(list);
            this.memberListView.onFinishLoadingWithItem(true, addHighRiskMemberList(list));
            return;
        }
        this.memberListView.onFinishLoadingWithItem(false, null);
    }
}
