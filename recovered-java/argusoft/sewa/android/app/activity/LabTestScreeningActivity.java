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
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LocationBeanAllAreaSelectionComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.ActivityConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class LabTestScreeningActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final long DELAY = 500;
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private static final String SERVICE_MEMBERS_TO_BE_SCREENED = "membersToBeScreened";
    private static final String SERVICE_SCREENING_STATUS = "screeningStatus";
    private static final String SERVICE_SELECTION_SCREEN = "serviceSelectionScreen";
    private static final String VILLAGE_SELECTION_SCREEN = "villageSelectionScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout footerLayout;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private MaterialTextView headerTitle;
    LocationMasterServiceImpl locationMasterService;
    private LocationBeanAllAreaSelectionComponent locationSelection;
    private MyAlertDialog myAlertDialog;
    private Intent myIntent;
    private Button nextButton;
    private MaterialTextView noMemberAvailableTextView;
    private long offset;
    private PagingListView paginatedListView;
    private List<Integer> preSelectedLocationIds;
    private String screen;
    private CharSequence searchString;
    private String selectedService;
    SewaServiceImpl sewaService;
    private SharedPreferences sharedPref;
    private List<MemberDataBean> members = new ArrayList();
    private MemberDataBean memberSelected = null;
    private final long limit = 30;
    private Timer timer = new Timer();
    private int selectedServiceIndex = -1;
    private int selectedPeopleIndex = -1;

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public /* synthetic */ void performActionOnClick(int i, List list) {
        PagingListView.PagingListener.CC.$default$performActionOnClick(this, i, list);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.preSelectedLocationIds = getIntent().getIntegerArrayListExtra(SewaConstants.SELECTED_LOCATION_IDS);
        initView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasPreSelectedLocation() {
        List<Integer> list = this.preSelectedLocationIds;
        return (list == null || list.isEmpty()) ? false : true;
    }

    private List<Integer> getLocationIds() {
        return hasPreSelectedLocation() ? this.preSelectedLocationIds : this.locationSelection.getSelectedLocationIds();
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
        if (hasPreSelectedLocation()) {
            setServiceSelectionScreen();
        } else {
            setVillageSelectionScreen();
        }
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
        hideProcessDialog();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r10) {
        /*
            r9 = this;
            int r10 = r10.getId()
            int r0 = com.argusoft.sewa.android.app.util.DynamicUtils.ID_NEXT_BUTTON
            if (r10 != r0) goto Lc5
            java.lang.String r10 = r9.screen
            r10.hashCode()
            int r0 = r10.hashCode()
            r1 = 1
            r2 = 0
            r3 = -1
            switch(r0) {
                case -329684276: goto L2f;
                case 754789150: goto L24;
                case 2126435747: goto L19;
                default: goto L17;
            }
        L17:
            r10 = -1
            goto L39
        L19:
            java.lang.String r0 = "serviceSelectionScreen"
            boolean r10 = r10.equals(r0)
            if (r10 != 0) goto L22
            goto L17
        L22:
            r10 = 2
            goto L39
        L24:
            java.lang.String r0 = "memberSelectionScreen"
            boolean r10 = r10.equals(r0)
            if (r10 != 0) goto L2d
            goto L17
        L2d:
            r10 = 1
            goto L39
        L2f:
            java.lang.String r0 = "villageSelectionScreen"
            boolean r10 = r10.equals(r0)
            if (r10 != 0) goto L38
            goto L17
        L38:
            r10 = 0
        L39:
            switch(r10) {
                case 0: goto L9c;
                case 1: goto L80;
                case 2: goto L3e;
                default: goto L3c;
            }
        L3c:
            goto Lc5
        L3e:
            int r10 = r9.selectedServiceIndex
            if (r10 == r3) goto L71
            if (r10 == 0) goto L4c
            if (r10 == r1) goto L47
            goto L50
        L47:
            java.lang.String r10 = "screeningStatus"
            r9.selectedService = r10
            goto L50
        L4c:
            java.lang.String r10 = "membersToBeScreened"
            r9.selectedService = r10
        L50:
            r9.showProcessDialog()
            android.widget.LinearLayout r10 = r9.bodyLayoutContainer
            r10.removeAllViews()
            android.widget.LinearLayout r10 = r9.bodyLayoutContainer
            com.argusoft.sewa.android.app.core.impl.SewaServiceImpl r0 = r9.sewaService
            com.google.android.material.textview.MaterialTextView r0 = r9.lastUpdateLabelView(r0, r10)
            r10.addView(r0)
            r9.searchTextBox()
            java.lang.String r4 = r9.selectedService
            r7 = 0
            r8 = 0
            r5 = 0
            r6 = 0
            r3 = r9
            r3.retrieveMemberListByServiceType(r4, r5, r6, r7, r8)
            goto L7a
        L71:
            java.lang.String r10 = "Please select a type of service"
            java.lang.String r10 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r10)
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r9, r10)
        L7a:
            android.widget.LinearLayout r10 = r9.footerLayout
            r10.setVisibility(r2)
            goto Lc5
        L80:
            int r10 = r9.selectedPeopleIndex
            if (r10 == r3) goto L92
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r0 = r9.members
            java.lang.Object r10 = r0.get(r10)
            com.argusoft.sewa.android.app.databean.MemberDataBean r10 = (com.argusoft.sewa.android.app.databean.MemberDataBean) r10
            r9.memberSelected = r10
            r9.startDynamicFormActivity()
            goto Lc5
        L92:
            java.lang.String r10 = "Please Select a Member"
            java.lang.String r10 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r10)
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r9, r10)
            goto Lc5
        L9c:
            com.argusoft.sewa.android.app.component.LocationBeanAllAreaSelectionComponent r10 = r9.locationSelection
            java.util.List r10 = r10.getSelectedLocationIds()
            if (r10 == 0) goto Lc0
            com.argusoft.sewa.android.app.component.LocationBeanAllAreaSelectionComponent r10 = r9.locationSelection
            java.util.List r10 = r10.getSelectedLocationIds()
            boolean r10 = r10.isEmpty()
            if (r10 != 0) goto Lc0
            android.widget.LinearLayout r10 = r9.bodyLayoutContainer
            r10.removeAllViews()
            r9.setServiceSelectionScreen()
            r10 = 0
            r9.setSubTitle(r10)
            r9.showProcessDialog()
            goto Lc5
        Lc0:
            java.lang.String r10 = "Please select location"
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r9, r10)
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity.onClick(android.view.View):void");
    }

    private void setVillageSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = VILLAGE_SELECTION_SCREEN;
        if (this.locationSelection == null) {
            this.locationSelection = new LocationBeanAllAreaSelectionComponent(this.context, this.locationMasterService, null);
        }
        this.bodyLayoutContainer.addView(this.locationSelection);
        this.footerLayout.setVisibility(0);
        this.nextButton.setText("Next");
        this.nextButton.setOnClickListener(this);
    }

    public void setServiceSelectionScreen() {
        this.screen = SERVICE_SELECTION_SCREEN;
        this.footerLayout.setVisibility(8);
        this.bodyLayoutContainer.addView(MyStaticComponents.getListTitleView(this, LabelConstants.SERVICE_TYPE_SELECTION));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_MALARIA_SLIDES_COLLECTION)));
        arrayList.add(new ListItemDataBean(UtilBean.getMyLabel(LabelConstants.SERVICE_RESULT)));
        this.bodyLayoutContainer.addView(MyStaticComponents.getPaginatedListViewWithItem(this, arrayList, R.layout.listview_row_type, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m248xa251f3b1(adapterView, view, i, j);
            }
        }, null));
        hideProcessDialog();
    }

    /* renamed from: lambda$setServiceSelectionScreen$0$com-argusoft-sewa-android-app-activity-LabTestScreeningActivity, reason: not valid java name */
    /* synthetic */ void m248xa251f3b1(AdapterView adapterView, View view, int i, long j) {
        this.selectedServiceIndex = i;
        onClick(this.nextButton);
    }

    public void retrieveMemberListByServiceType(String str, String str2, boolean z, String str3, Date date) {
        this.searchString = str2;
        this.offset = 0L;
        this.selectedPeopleIndex = -1;
        str.hashCode();
        if (str.equals(SERVICE_SCREENING_STATUS)) {
            this.members = this.fhsService.retrieveMalariaScreenedMembers(getLocationIds(), str2, 30L, this.offset, true, false);
        } else if (str.equals(SERVICE_MEMBERS_TO_BE_SCREENED)) {
            this.members = this.fhsService.retrieveEligibleMembersForMalariaSlidesCollection(getLocationIds(), str2, 30L, this.offset);
        }
        this.offset += 30;
        setMemberSelectionScreen();
    }

    public void searchTextBox() {
        TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.MEMBER_ID_OR_NAME_TO_SEARCH, 1, 15, 1);
        this.bodyLayoutContainer.addView(editText);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
                    LabTestScreeningActivity.this.timer.cancel();
                    LabTestScreeningActivity.this.timer = new Timer();
                    LabTestScreeningActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity.1.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            CharSequence charSequence2 = charSequence;
                            if (charSequence2 != null && charSequence2.length() > 2) {
                                LabTestScreeningActivity.this.retrieveMemberListByServiceType(LabTestScreeningActivity.this.selectedService, charSequence.toString(), true, null, null);
                                return;
                            }
                            CharSequence charSequence3 = charSequence;
                            if (charSequence3 == null || charSequence3.length() == 0) {
                                LabTestScreeningActivity.this.retrieveMemberListByServiceType(LabTestScreeningActivity.this.selectedService, null, true, null, null);
                            }
                        }
                    }, LabTestScreeningActivity.DELAY);
                }
            });
        }
    }

    public void setMemberSelectionScreen() {
        this.screen = MEMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeView(this.headerTitle);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.noMemberAvailableTextView);
        ArrayList arrayList = new ArrayList();
        if (!this.members.isEmpty()) {
            int i = this.selectedServiceIndex;
            if (i == 0) {
                MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
                this.headerTitle = listTitleView;
                this.bodyLayoutContainer.addView(listTitleView);
                for (MemberDataBean memberDataBean : this.members) {
                    arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
                }
            } else if (i == 1) {
                MaterialTextView listTitleView2 = MyStaticComponents.getListTitleView(this, LabelConstants.MEMBER_LIST);
                this.headerTitle = listTitleView2;
                this.bodyLayoutContainer.addView(listTitleView2);
                for (MemberDataBean memberDataBean2 : this.members) {
                    arrayList.add(new ListItemDataBean(memberDataBean2.getFamilyId(), memberDataBean2.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean2), "Referral Status: " + memberDataBean2.getLabTestMalariaRefStatus(), (String) null));
                }
            }
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    LabTestScreeningActivity.this.selectedPeopleIndex = i2;
                }
            };
            int i2 = this.selectedServiceIndex;
            if (i2 == 0) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, onItemClickListener, this);
                this.nextButton.setText(UtilBean.getMyLabel("Next"));
                this.nextButton.setOnClickListener(this);
            } else if (i2 == 1) {
                this.paginatedListView = MyStaticComponents.getPaginatedListViewWithItem(this.context, arrayList, R.layout.listview_row_with_two_item, null, this);
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        LabTestScreeningActivity.this.navigateToHomeScreen(false);
                    }
                });
            }
            this.bodyLayoutContainer.addView(this.paginatedListView);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberAvailableTextView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m247x4ec79f83(view);
                }
            });
        }
        hideProcessDialog();
    }

    /* renamed from: lambda$setMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-LabTestScreeningActivity, reason: not valid java name */
    /* synthetic */ void m247x4ec79f83(View view) {
        navigateToHomeScreen(false);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_LAB_TEST_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    LabTestScreeningActivity.this.myAlertDialog.dismiss();
                    if (!LabTestScreeningActivity.this.hasPreSelectedLocation()) {
                        LabTestScreeningActivity.this.navigateToHomeScreen(false);
                    }
                    LabTestScreeningActivity.this.finish();
                    return;
                }
                LabTestScreeningActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1026) {
            showProcessDialog();
            retrieveMemberListByServiceType(this.selectedService, null, false, null, null);
            hideProcessDialog();
            return;
        }
        navigateToHomeScreen(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r5) {
        /*
            r4 = this;
            super.onOptionsItemSelected(r5)
            java.lang.String r0 = r4.screen
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L91
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto L91
        L11:
            int r5 = r5.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r5 != r0) goto L90
            java.lang.String r5 = r4.screen
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case -329684276: goto L3f;
                case 754789150: goto L34;
                case 2126435747: goto L29;
                default: goto L27;
            }
        L27:
            r5 = -1
            goto L49
        L29:
            java.lang.String r0 = "serviceSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L32
            goto L27
        L32:
            r5 = 2
            goto L49
        L34:
            java.lang.String r0 = "memberSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3d
            goto L27
        L3d:
            r5 = 1
            goto L49
        L3f:
            java.lang.String r0 = "villageSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L48
            goto L27
        L48:
            r5 = 0
        L49:
            java.lang.String r0 = "Next"
            switch(r5) {
                case 0: goto L8c;
                case 1: goto L6b;
                case 2: goto L4f;
                default: goto L4e;
            }
        L4e:
            goto L8f
        L4f:
            boolean r5 = r4.hasPreSelectedLocation()
            if (r5 == 0) goto L59
            r4.finish()
            goto L8f
        L59:
            r4.setVillageSelectionScreen()
            android.widget.Button r5 = r4.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r5.setText(r0)
            android.widget.Button r5 = r4.nextButton
            r5.setOnClickListener(r4)
            goto L8f
        L6b:
            r4.selectedServiceIndex = r3
            r4.showProcessDialog()
            android.widget.LinearLayout r5 = r4.bodyLayoutContainer
            r5.removeAllViews()
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r5 = r4.members
            r5.clear()
            r4.setServiceSelectionScreen()
            android.widget.Button r5 = r4.nextButton
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            r5.setText(r0)
            android.widget.Button r5 = r4.nextButton
            r5.setOnClickListener(r4)
            goto L8f
        L8c:
            r4.navigateToHomeScreen(r2)
        L8f:
            return r1
        L90:
            return r2
        L91:
            r4.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    private void startDynamicFormActivity() {
        showProcessDialog();
        this.sharedPref = PreferenceManager.getDefaultSharedPreferences(this);
        try {
            this.formMetaDataUtil.setMetaDataForRchFormByFormType(FormConstants.LAB_TEST_MALARIA, this.memberSelected.getId(), this.memberSelected.getFamilyId(), null, this.sharedPref);
            Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
            this.myIntent = intent;
            intent.putExtra("entity", FormConstants.LAB_TEST_MALARIA);
            this.myIntent.putExtra("isOnlineSearchPropagated", SharedStructureData.isOnlineSearch);
            startActivityForResult(this.myIntent, ActivityConstants.REQUEST_CODE_FOR_LAB_TEST_SCREENING_ACTIVITY);
            hideProcessDialog();
        } catch (DataException unused) {
            showProcessDialog();
            this.alertDialog = new MyAlertDialog(this, false, UtilBean.getMyLabel(LabelConstants.ERROR_TO_REFRESH_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.LabTestScreeningActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m249x37f94cb8(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
        }
    }

    /* renamed from: lambda$startDynamicFormActivity$2$com-argusoft-sewa-android-app-activity-LabTestScreeningActivity, reason: not valid java name */
    /* synthetic */ void m249x37f94cb8(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> listRetrieveMalariaScreenedMembers;
        String str = this.selectedService;
        str.hashCode();
        if (!str.equals(SERVICE_SCREENING_STATUS)) {
            listRetrieveMalariaScreenedMembers = !str.equals(SERVICE_MEMBERS_TO_BE_SCREENED) ? null : this.fhsService.retrieveEligibleMembersForMalariaSlidesCollection(getLocationIds(), null, 30L, this.offset);
        } else {
            listRetrieveMalariaScreenedMembers = this.fhsService.retrieveMalariaScreenedMembers(getLocationIds(), null, 30L, this.offset, true, false);
        }
        this.offset += 30;
        onLoadMoreUi(listRetrieveMalariaScreenedMembers);
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (MemberDataBean memberDataBean : list) {
                arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
            }
            this.members.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, arrayList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
