package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
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
import com.argusoft.sewa.android.app.core.impl.NcdServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NCDScreeningAshaActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final long LIMIT = 30;
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final Integer REQUEST_CODE_FOR_NCD_SCREENING_ACTIVITY = 200;
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    public SewaFhsServiceImpl fhsService;
    private LinearLayout footerView;
    public FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    public NcdServiceImpl ncdService;
    private Button nextButton;
    private MaterialTextView noFamilyAvailableTextView;
    private long offset;
    private PagingListView paginatedListView;
    private String rbText;
    private String screen;
    private String searchString;
    private Integer selectedAshaArea;
    private FamilyDataBean selectedFamily;
    public SewaServiceImpl sewaService;
    private Spinner spinner;
    public TechoAshaServiceImpl techoAshaService;
    private MaterialTextView titleView;
    private Timer timer = new Timer();
    private List<LocationBean> ashaAreaList = new ArrayList();
    private List<FamilyDataBean> familyDataBeans = new ArrayList();
    private List<MemberDataBean> memberDataBeans = new ArrayList();
    private int selectedMemberIndex = -1;
    private int selectedFamilyIndex = -1;

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
        setTitle(UtilBean.getTitleText(LabelConstants.CBAC_SCREENING_ACTIVITY_TITLE));
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerView = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setBodyDetail();
    }

    public void setBodyDetail() {
        List<LocationBean> listRetrieveAshaAreasAssignedToUser = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        this.ashaAreaList = listRetrieveAshaAreasAssignedToUser;
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        if (listRetrieveAshaAreasAssignedToUser.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            showProcessDialog();
            addSearchTextBox();
            retrieveFamilyListFromDB(null);
            return;
        }
        if (this.ashaAreaList.isEmpty()) {
            addDataNotSyncedMsg(this.bodyLayoutContainer, this.nextButton);
        } else {
            addAshaAreaSelectionSpinner();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.onClick(android.view.View):void");
    }

    private void addLastUpdateLabel() {
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
    }

    public void addAshaAreaSelectionSpinner() {
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        String[] strArr = new String[this.ashaAreaList.size()];
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.spinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        if (this.selectedAshaArea != null) {
            for (LocationBean locationBean : this.ashaAreaList) {
                if (locationBean.getActualID().intValue() == this.selectedAshaArea.intValue()) {
                    this.spinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.spinner);
        hideProcessDialog();
    }

    public void addSearchTextBox() {
        this.bodyLayoutContainer.removeAllViews();
        addLastUpdateLabel();
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, 20, 1);
        this.bodyLayoutContainer.addView(editText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new AnonymousClass1(editText));
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity$1, reason: invalid class name */
    class AnonymousClass1 implements TextWatcher {
        final /* synthetic */ TextInputLayout val$editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass1(TextInputLayout textInputLayout) {
            this.val$editText = textInputLayout;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            NCDScreeningAshaActivity.this.timer.cancel();
            NCDScreeningAshaActivity.this.timer = new Timer();
            NCDScreeningAshaActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.1.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        NCDScreeningAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NCDScreeningAshaActivity.this.retrieveFamilyListFromDB(charSequence.toString());
                                AnonymousClass1.this.val$editText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        NCDScreeningAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.1.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NCDScreeningAshaActivity.this.showProcessDialog();
                                NCDScreeningAshaActivity.this.retrieveFamilyListFromDB(null);
                                AnonymousClass1.this.val$editText.clearFocus();
                            }
                        });
                    }
                }
            }, NCDScreeningAshaActivity.DELAY);
        }
    }

    public void retrieveFamilyListFromDB(String str) {
        this.offset = 0L;
        this.searchString = str;
        this.selectedFamilyIndex = -1;
        this.familyDataBeans = this.ncdService.retrieveFamiliesForCbacEntry(str, this.selectedAshaArea, LIMIT, 0L);
        this.offset += LIMIT;
        setFamilySelectionScreen(str != null);
    }

    public void setFamilySelectionScreen(boolean z) {
        this.screen = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        this.bodyLayoutContainer.removeView(this.noFamilyAvailableTextView);
        this.rbText = "";
        if (!this.familyDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_FAMILY);
            this.titleView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getFamilyList(this.familyDataBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    NCDScreeningAshaActivity.this.selectedFamilyIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_FAMILIES_FOUND);
            this.noFamilyAvailableTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        }
        if (z) {
            return;
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getFamilyList(List<FamilyDataBean> list) {
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
                String str = memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName();
                this.rbText = str;
                this.rbText = str.replace(" null", "");
            } else {
                this.rbText = UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            arrayList2.add(new ListItemDataBean((String) null, familyDataBean.getFamilyId(), (String) null, (String) null, this.rbText));
        }
        return arrayList2;
    }

    public void retrieveMemberListFromDB(String str) {
        this.selectedMemberIndex = -1;
        if (str != null) {
            this.memberDataBeans = this.ncdService.retrieveMembersListForCbacEntry(str);
            setMemberSelectionScreen();
        }
    }

    public void setMemberSelectionScreen() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        ArrayList arrayList = new ArrayList();
        if (!this.memberDataBeans.isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_A_MEMBER_FROM_LIST));
            for (MemberDataBean memberDataBean : this.memberDataBeans) {
                StringBuilder sb = new StringBuilder(UtilBean.getMemberFullName(memberDataBean));
                if (memberDataBean.getCbacDate() != null && new Date(memberDataBean.getCbacDate().longValue()).after(UtilBean.getStartOfFinancialYear(null))) {
                    sb.append(" ✔️️");
                }
                arrayList.add(new ListItemDataBean(memberDataBean.getUniqueHealthId(), sb.toString()));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    NCDScreeningAshaActivity.this.selectedMemberIndex = i;
                }
            }, null));
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.NO_MEMBERS_HAVING_AGE_MORE_THAN_30_YEARS_IN_FAMILY)));
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NCDScreeningAshaActivity.this.navigateToHomeScreen(false);
            }
        });
    }

    private void setMetadataForFormByFormType(MemberDataBean memberDataBean) {
        FamilyDataBean familyDataBeanRetrieveFamilyDataBeanByFamilyId = memberDataBean != null ? this.fhsService.retrieveFamilyDataBeanByFamilyId(memberDataBean.getFamilyId()) : null;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (memberDataBean != null) {
            this.formMetaDataUtil.setMetaDataForNCDForms(memberDataBean, familyDataBeanRetrieveFamilyDataBeanByFamilyId, defaultSharedPreferences);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_NCD_SCREENING_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    NCDScreeningAshaActivity.this.alertDialog.dismiss();
                    NCDScreeningAshaActivity.this.navigateToHomeScreen(false);
                    NCDScreeningAshaActivity.this.finish();
                    return;
                }
                NCDScreeningAshaActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.selectedMemberIndex = -1;
        setSubTitle(null);
        int i3 = 0;
        if (i == REQUEST_CODE_FOR_NCD_SCREENING_ACTIVITY.intValue()) {
            List<MemberDataBean> listRetrieveMembersListForCbacEntry = this.ncdService.retrieveMembersListForCbacEntry(this.selectedFamily.getFamilyId());
            this.memberDataBeans = listRetrieveMembersListForCbacEntry;
            for (MemberDataBean memberDataBean : listRetrieveMembersListForCbacEntry) {
                if (memberDataBean.getCbacDate() != null && new Date(memberDataBean.getCbacDate().longValue()).after(UtilBean.getStartOfFinancialYear(null))) {
                    i3++;
                }
            }
            if (i3 == this.memberDataBeans.size()) {
                showProcessDialog();
                addSearchTextBox();
                retrieveFamilyListFromDB(null);
                return;
            }
            retrieveMemberListFromDB(this.selectedFamily.getFamilyId());
            return;
        }
        navigateToHomeScreen(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r7) {
        /*
            r6 = this;
            super.onOptionsItemSelected(r7)
            java.lang.String r0 = r6.screen
            r1 = 0
            if (r0 == 0) goto Le
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
        Le:
            r6.navigateToHomeScreen(r1)
        L11:
            android.widget.LinearLayout r0 = r6.footerView
            r0.setVisibility(r1)
            int r7 = r7.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            r2 = 1
            if (r7 != r0) goto L96
            r7 = 0
            r6.setSubTitle(r7)
            java.lang.String r0 = r6.screen
            r0.hashCode()
            int r3 = r0.hashCode()
            java.lang.String r4 = "ashaAreaSelectionScreen"
            r5 = -1
            switch(r3) {
                case -813922784: goto L56;
                case -169448172: goto L4b;
                case 754789150: goto L40;
                case 2126435747: goto L35;
                default: goto L33;
            }
        L33:
            r0 = -1
            goto L5e
        L35:
            java.lang.String r3 = "serviceSelectionScreen"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L3e
            goto L33
        L3e:
            r0 = 3
            goto L5e
        L40:
            java.lang.String r3 = "memberSelectionScreen"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L49
            goto L33
        L49:
            r0 = 2
            goto L5e
        L4b:
            java.lang.String r3 = "familySelectionScreen"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L54
            goto L33
        L54:
            r0 = 1
            goto L5e
        L56:
            boolean r0 = r0.equals(r4)
            if (r0 != 0) goto L5d
            goto L33
        L5d:
            r0 = 0
        L5e:
            switch(r0) {
                case 0: goto L93;
                case 1: goto L81;
                case 2: goto L70;
                case 3: goto L65;
                default: goto L61;
            }
        L61:
            r6.finish()
            goto L96
        L65:
            r6.selectedMemberIndex = r5
            android.widget.Button r7 = r6.nextButton
            r7.setOnClickListener(r6)
            r6.setMemberSelectionScreen()
            goto L96
        L70:
            r6.showProcessDialog()
            r6.selectedFamilyIndex = r5
            r6.addSearchTextBox()
            android.widget.Button r0 = r6.nextButton
            r0.setOnClickListener(r6)
            r6.retrieveFamilyListFromDB(r7)
            goto L96
        L81:
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r7 = r6.ashaAreaList
            int r7 = r7.size()
            if (r7 <= r2) goto L8d
            r6.addAshaAreaSelectionSpinner()
            goto L90
        L8d:
            r6.navigateToHomeScreen(r1)
        L90:
            r6.screen = r4
            goto L96
        L93:
            r6.navigateToHomeScreen(r1)
        L96:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NCDScreeningAshaActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listRetrieveFamiliesForCbacEntry = this.ncdService.retrieveFamiliesForCbacEntry(this.searchString, this.selectedAshaArea, LIMIT, this.offset);
        this.offset += LIMIT;
        onLoadMoreUi(listRetrieveFamiliesForCbacEntry);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (list != null && !list.isEmpty()) {
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, getFamilyList(list));
        } else {
            this.paginatedListView.onFinishLoadingWithItem(false, null);
        }
    }
}
