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
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.NcdServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class NcdRegisterAshaActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String ASHA_AREA_SELECTION_SCREEN = "ashaAreaSelectionScreen";
    private static final String CBAC_SUMMARY_SCREEN = "cbacSummaryScreen";
    private static final long DELAY = 500;
    private static final long LIMIT = 30;
    private static final String MEMBER_SELECTION_SCREEN = "memberSelectionScreen";
    private ArrayList<Integer> ashaArea;
    private Spinner ashaAreaSpinner;
    private LinearLayout bodyLayoutContainer;
    private LinearLayout globalPanel;
    private List<MemberDataBean> memberDataBeans;
    NcdServiceImpl ncdService;
    private Button nextButton;
    private MaterialTextView noMemberAvilableView;
    private long offset;
    private PagingListView paginatedListView;
    private String screen;
    private String searchString;
    private TextInputLayout searchText;
    private Integer selectedAshaArea;
    private MemberDataBean selectedMember;
    SewaServiceImpl sewaService;
    TechoAshaServiceImpl techoAshaService;
    private MaterialTextView titleView;
    private Timer timer = new Timer();
    private List<LocationBean> ashaAreaList = new ArrayList();
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
        setTitle(UtilBean.getTitleText(LabelConstants.NCD_REGISTER_TITLE));
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

    public void setBodyDetail() {
        List<LocationBean> listRetrieveAshaAreasAssignedToUser = this.techoAshaService.retrieveAshaAreasAssignedToUser();
        this.ashaAreaList = listRetrieveAshaAreasAssignedToUser;
        if (listRetrieveAshaAreasAssignedToUser.size() == 1) {
            this.selectedAshaArea = this.ashaAreaList.get(0).getActualID();
            addSearchTextBoxForMember();
            retrieveMemberListFromDB(null);
        } else {
            if (this.ashaAreaList.isEmpty()) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.DATA_NOT_SYNCED_ALERT));
                this.nextButton.setText(UtilBean.getMyLabel("Okay"));
                this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        NcdRegisterAshaActivity.this.navigateToHomeScreen(false);
                    }
                });
                hideProcessDialog();
                return;
            }
            addAshaAreaSelectionSpinner();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.ON_NCD_REGISTER_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    NcdRegisterAshaActivity.this.alertDialog.dismiss();
                    NcdRegisterAshaActivity.this.navigateToHomeScreen(false);
                    NcdRegisterAshaActivity.this.finish();
                    return;
                }
                NcdRegisterAshaActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0019  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            r4 = this;
            int r5 = r5.getId()
            int r0 = com.argusoft.sewa.android.app.util.DynamicUtils.ID_NEXT_BUTTON
            if (r5 != r0) goto La1
            r5 = 0
            r4.setSubTitle(r5)
            java.lang.String r0 = r4.screen
            r0.hashCode()
            int r1 = r0.hashCode()
            r2 = -1
            switch(r1) {
                case -813922784: goto L31;
                case 754789150: goto L26;
                case 907129969: goto L1b;
                default: goto L19;
            }
        L19:
            r0 = -1
            goto L3b
        L1b:
            java.lang.String r1 = "cbacSummaryScreen"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L24
            goto L19
        L24:
            r0 = 2
            goto L3b
        L26:
            java.lang.String r1 = "memberSelectionScreen"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2f
            goto L19
        L2f:
            r0 = 1
            goto L3b
        L31:
            java.lang.String r1 = "ashaAreaSelectionScreen"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L3a
            goto L19
        L3a:
            r0 = 0
        L3b:
            switch(r0) {
                case 0: goto L67;
                case 1: goto L4b;
                case 2: goto L3f;
                default: goto L3e;
            }
        L3e:
            goto La1
        L3f:
            android.widget.LinearLayout r0 = r4.bodyLayoutContainer
            r0.removeAllViews()
            r4.addSearchTextBoxForMember()
            r4.retrieveMemberListFromDB(r5)
            goto La1
        L4b:
            int r5 = r4.selectedMemberIndex
            if (r5 == r2) goto L5d
            java.util.List<com.argusoft.sewa.android.app.databean.MemberDataBean> r0 = r4.memberDataBeans
            java.lang.Object r5 = r0.get(r5)
            com.argusoft.sewa.android.app.databean.MemberDataBean r5 = (com.argusoft.sewa.android.app.databean.MemberDataBean) r5
            r4.selectedMember = r5
            r4.setCBACSummaryScreen()
            goto La1
        L5d:
            java.lang.String r5 = "Select a member of the family"
            java.lang.String r5 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r5)
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r4, r5)
            goto La1
        L67:
            r4.showProcessDialog()
            android.widget.Spinner r0 = r4.ashaAreaSpinner
            java.lang.Object r0 = r0.getSelectedItem()
            java.lang.String r0 = r0.toString()
            java.util.List<com.argusoft.sewa.android.app.model.LocationBean> r1 = r4.ashaAreaList
            java.util.Iterator r1 = r1.iterator()
        L7a:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L96
            java.lang.Object r2 = r1.next()
            com.argusoft.sewa.android.app.model.LocationBean r2 = (com.argusoft.sewa.android.app.model.LocationBean) r2
            java.lang.String r3 = r2.getName()
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L7a
            java.lang.Integer r0 = r2.getActualID()
            r4.selectedAshaArea = r0
        L96:
            android.widget.LinearLayout r0 = r4.bodyLayoutContainer
            r0.removeAllViews()
            r4.addSearchTextBoxForMember()
            r4.retrieveMemberListFromDB(r5)
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.onClick(android.view.View):void");
    }

    public void addAshaAreaSelectionSpinner() {
        this.screen = ASHA_AREA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        setSubTitle(null);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.SELECT_ASHA_AREA));
        String[] strArr = new String[this.ashaAreaList.size()];
        Iterator<LocationBean> it = this.ashaAreaList.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = it.next().getName();
            i++;
        }
        this.ashaAreaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 2);
        if (this.selectedAshaArea != null) {
            for (LocationBean locationBean : this.ashaAreaList) {
                if (locationBean.getActualID().intValue() == this.selectedAshaArea.intValue()) {
                    this.ashaAreaSpinner.setSelection(Arrays.asList(strArr).indexOf(locationBean.getName()));
                }
            }
        }
        this.bodyLayoutContainer.addView(this.ashaAreaSpinner);
        hideProcessDialog();
    }

    public void addSearchTextBoxForMember() {
        if (this.searchText == null) {
            TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_MEMBER, 1, 15, 1);
            this.searchText = editText;
            if (editText.getEditText() != null) {
                this.searchText.getEditText().addTextChangedListener(new AnonymousClass3());
            }
        }
        LinearLayout linearLayout = this.bodyLayoutContainer;
        linearLayout.addView(lastUpdateLabelView(this.sewaService, linearLayout));
        this.bodyLayoutContainer.addView(this.searchText);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity$3, reason: invalid class name */
    class AnonymousClass3 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass3() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            NcdRegisterAshaActivity.this.timer.cancel();
            NcdRegisterAshaActivity.this.timer = new Timer();
            NcdRegisterAshaActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.3.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        NcdRegisterAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NcdRegisterAshaActivity.this.retrieveMemberListFromDB(charSequence.toString());
                                NcdRegisterAshaActivity.this.searchText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() == 0) {
                        NcdRegisterAshaActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.3.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NcdRegisterAshaActivity.this.showProcessDialog();
                                NcdRegisterAshaActivity.this.retrieveMemberListFromDB(null);
                            }
                        });
                    }
                }
            }, NcdRegisterAshaActivity.DELAY);
        }
    }

    public void retrieveMemberListFromDB(String str) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.ashaArea = arrayList;
        this.searchString = str;
        arrayList.add(this.selectedAshaArea);
        this.offset = 0L;
        this.selectedMemberIndex = -1;
        this.memberDataBeans = this.ncdService.retrieveMembersForNcdRegisterAsha(this.ashaArea, str, LIMIT, 0L);
        this.offset += LIMIT;
        setMemberSelectionScreen(str != null);
    }

    public void setMemberSelectionScreen(boolean z) {
        this.screen = MEMBER_SELECTION_SCREEN;
        setSubTitle(null);
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.titleView);
        this.bodyLayoutContainer.removeView(this.noMemberAvilableView);
        if (!this.memberDataBeans.isEmpty()) {
            MaterialTextView listTitleView = MyStaticComponents.getListTitleView(this, LabelConstants.SELECT_MEMBER);
            this.titleView = listTitleView;
            this.bodyLayoutContainer.addView(listTitleView);
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getMemberList(this.memberDataBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    NcdRegisterAshaActivity.this.selectedMemberIndex = i;
                }
            }, this);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText("Next");
            this.nextButton.setOnClickListener(this);
        } else {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, LabelConstants.NO_MEMBERS_FOUND);
            this.noMemberAvilableView = materialTextViewGenerateInstructionView;
            this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
            this.nextButton.setText(UtilBean.getMyLabel("Okay"));
            this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NcdRegisterAshaActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NcdRegisterAshaActivity.this.navigateToHomeScreen(false);
                }
            });
        }
        hideProcessDialog();
    }

    private List<ListItemDataBean> getMemberList(List<MemberDataBean> list) {
        ArrayList arrayList = new ArrayList();
        for (MemberDataBean memberDataBean : list) {
            arrayList.add(new ListItemDataBean(memberDataBean.getFamilyId(), memberDataBean.getUniqueHealthId(), UtilBean.getMemberFullName(memberDataBean), (String) null, (String) null));
        }
        return arrayList;
    }

    public void setCBACSummaryScreen() {
        this.screen = CBAC_SUMMARY_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        setSubTitle(UtilBean.getMemberFullName(this.selectedMember));
        this.nextButton.setText("Okay");
        this.selectedMemberIndex = -1;
        if (this.selectedMember != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Name"));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMemberFullName(this.selectedMember)));
            MemberCbacDetailBean memberCbacDetailBeanRetrieveMemberCbacDetailBean = this.ncdService.retrieveMemberCbacDetailBean(Long.valueOf(this.selectedMember.getId()));
            if (memberCbacDetailBeanRetrieveMemberCbacDetailBean != null) {
                ArrayList<String> arrayList = new ArrayList();
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getSmokeOrConsumeGutka() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getSmokeOrConsumeGutka().equals("IN_PAST")) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.USED_TO_SMOKE_OR_CONSUME_GUTKA_IN_PAST));
                } else if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getSmokeOrConsumeGutka() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getSmokeOrConsumeGutka().equals("DAILY")) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.SMOKE_OR_CONSUME_GUTKA_DAILY));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getConsumeAlcoholDaily() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getConsumeAlcoholDaily().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.CONSUME_ALCOHOL_DAILY_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getPhysicalActivity150Min() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getPhysicalActivity150Min().equals("LESS_THAN_150")) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DOESNT_TAKING_PART_IN_PHYSICAL_ACTIVITY_FOR_MINIMUM_150_MINUTES_IN_WEEK));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBpDiabetesHeartHistory() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBpDiabetesHeartHistory().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.FAMILY_HISTORY_WITH_BP_DIABETES_OR_HEART_DISEASE));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getScore() != null) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.CBAC_SCORE) + " - " + memberCbacDetailBeanRetrieveMemberCbacDetailBean.getScore() + GlobalTypes.DOT_SEPARATOR);
                }
                if (!arrayList.isEmpty()) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.RISK_ASSESSMENT));
                    for (String str : arrayList) {
                        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this, str);
                        materialTextViewGenerateAnswerView.setText(UtilBean.addBullet(str));
                        this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView);
                    }
                }
                arrayList.clear();
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getShortnessOfBreath() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getShortnessOfBreath().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.SORTNESS_OF_BREATH));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getFitsHistory() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getFitsHistory().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.HISTORY_OF_FITS));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getTwoWeeksCoughing() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getTwoWeeksCoughing().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.COUGHING_MORE_THAN_2_WEEKS));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getMouthOpeningDifficulty() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getMouthOpeningDifficulty().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIFFICULTY_IN_OPENING_MOUTH));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBloodInSputum() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBloodInSputum().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.BLOOD_IN_SPUTUM));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getTwoWeeksFever() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getTwoWeeksFever().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.FEVER_MORE_THAN_2_WEEKS));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getChangeInToneOfVoice() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getChangeInToneOfVoice().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.CHANGE_IN_TONE_OF_VOICE));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getPatchOnSkin() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getPatchOnSkin().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.PATCH_ON_SKIN));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getNightSweats() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getNightSweats().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.NIGHT_SWEETS));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDifficultyHoldingObjects() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDifficultyHoldingObjects().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIFFICULTY_IN_HOLDING_OBJECTS_WITH_FINGURES));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getSensationLossPalm() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getSensationLossPalm().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.LOSS_OF_SENSATION_IN_PALM));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getTakingAntiTbDrugs() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getTakingAntiTbDrugs().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.CURRENTLY_TAKING_ANY_ANTI_TB_DRUGS));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getFamilyMemberSufferingFromTb() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getFamilyMemberSufferingFromTb().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.SOMEONE_IN_FAMILY_SUFFERING_FROM_TB));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getHistoryOfTb() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getShortnessOfBreath().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.HISTORY_OF_TB));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getLumpInBreast() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getLumpInBreast().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.LUMP_IN_BREAST));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleedingAfterMenopause() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleedingAfterMenopause().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.BLEEDING_AFTER_MENOPAUSE));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getNippleBloodStainedDischarge() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getNippleBloodStainedDischarge().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.NIPPLE_BLOOD_STAINED_DISCHARGE));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleedingAfterIntercourse() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleedingAfterIntercourse().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.BLEEDING_AFTER_INTERCOURSE));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getChangeInSizeOfBreast() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getChangeInSizeOfBreast().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.CHANGE_IN_SIZE_OF_BREAST));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getFoulVaginalDischarge() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getFoulVaginalDischarge().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.FOUL_VAGINAL_DISCHARGE));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleedingBetweenPeriods() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleedingBetweenPeriods().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.BLEEDING_BETWEEN_PERIODS));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getOccupationalExposure() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getOccupationalExposure().equals("CROP_BURNING")) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.EXPOSURE_FROM_BURNING));
                } else if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getOccupationalExposure() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getOccupationalExposure().equals("INDUSTRY_WORK")) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.WORKING_WITH_INDUSTRIES));
                }
                if (!arrayList.isEmpty()) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.EARLY_DETECTION));
                    for (String str2 : arrayList) {
                        MaterialTextView materialTextViewGenerateAnswerView2 = MyStaticComponents.generateAnswerView(this, str2);
                        materialTextViewGenerateAnswerView2.setText(UtilBean.addBullet(str2));
                        this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView2);
                    }
                }
                arrayList.clear();
                if (this.selectedMember.getGender().equals("F")) {
                    if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getMenopauseArrived() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getMenopauseArrived().booleanValue()) {
                        arrayList.add(UtilBean.getMyLabel(LabelConstants.MANOPAUSE_ARRIVED));
                    }
                    if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDurationOfMenoapuse() != null) {
                        arrayList.add(UtilBean.getMyLabel(LabelConstants.DURATION_OF_MANOPAUSE) + " - " + memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDurationOfMenoapuse() + " years");
                    }
                    if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getPregnant() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getPregnant().booleanValue()) {
                        arrayList.add(UtilBean.getMyLabel(LabelConstants.PREGNANT));
                    }
                    if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getLactating() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getLactating().booleanValue()) {
                        arrayList.add(UtilBean.getMyLabel(LabelConstants.LACTATING));
                    }
                    if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getRegularPeriods() != null && !memberCbacDetailBeanRetrieveMemberCbacDetailBean.getRegularPeriods().booleanValue()) {
                        arrayList.add(UtilBean.getMyLabel(LabelConstants.IRREGULAR_PERIOD));
                    }
                    if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleeding() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getBleeding().equals("HEAVY")) {
                        arrayList.add(UtilBean.getMyLabel(LabelConstants.HEAVY_BLEEDING));
                    }
                    if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getAssociatedWith() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getAssociatedWith().equals("PAIN")) {
                        arrayList.add(UtilBean.getMyLabel(LabelConstants.ASSOCIATED_WITH_PAIN));
                    }
                    if (!arrayList.isEmpty()) {
                        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.MENSTRUAL_HISTORY));
                        for (String str3 : arrayList) {
                            MaterialTextView materialTextViewGenerateAnswerView3 = MyStaticComponents.generateAnswerView(this, str3);
                            materialTextViewGenerateAnswerView3.setText(UtilBean.addBullet(str3));
                            this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView3);
                        }
                    }
                }
                arrayList.clear();
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForHypertension() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForHypertension().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_HYPERTENSION_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForDiabetes() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForDiabetes().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_DIABETES_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForHeartDiseases() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForHeartDiseases().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_HEART_DISEASES_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForStroke() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForStroke().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_STROKE_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForKidneyFailure() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForKidneyFailure().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_KIDNEY_FAILURE_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForNonHealingWound() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForNonHealingWound().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_NON_HEALING_WOUND_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForCOPD() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForCOPD().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_COPD_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForAsthama() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForAsthama().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_ASTHAMA_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForOralCancer() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForOralCancer().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_ORAL_CANCER_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForBreastCancer() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForBreastCancer().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_BREAST_CANCER_TAG));
                }
                if (memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForCervicalCancer() != null && memberCbacDetailBeanRetrieveMemberCbacDetailBean.getDiagnosedForCervicalCancer().booleanValue()) {
                    arrayList.add(UtilBean.getMyLabel(LabelConstants.DIAGNOSED_FOR_CERVICAL_CANCER_TAG));
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this, LabelConstants.PERSONAL_HISTORY));
                for (String str4 : arrayList) {
                    MaterialTextView materialTextViewGenerateAnswerView4 = MyStaticComponents.generateAnswerView(this, str4);
                    materialTextViewGenerateAnswerView4.setText(UtilBean.addBullet(str4));
                    this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView4);
                }
                return;
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, LabelConstants.REFRESH_TO_GET_MEMBER_CBAC_DETAILS));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        setSubTitle(null);
        if (menuItem.getItemId() == 16908332) {
            String str = this.screen;
            str.hashCode();
            switch (str) {
                case "ashaAreaSelectionScreen":
                    navigateToHomeScreen(false);
                    break;
                case "memberSelectionScreen":
                    if (this.ashaAreaList.size() == 1) {
                        navigateToHomeScreen(false);
                        break;
                    } else {
                        addAshaAreaSelectionSpinner();
                        break;
                    }
                case "cbacSummaryScreen":
                    showProcessDialog();
                    this.bodyLayoutContainer.removeAllViews();
                    addSearchTextBoxForMember();
                    retrieveMemberListFromDB(null);
                    this.nextButton.setText("Next");
                    break;
            }
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<MemberDataBean> listRetrieveMembersForNcdRegisterAsha = this.ncdService.retrieveMembersForNcdRegisterAsha(this.ashaArea, this.searchString, LIMIT, this.offset);
        this.offset += LIMIT;
        onLoadMoreUi(listRetrieveMembersForNcdRegisterAsha);
    }

    public void onLoadMoreUi(List<MemberDataBean> list) {
        if (!list.isEmpty()) {
            List<ListItemDataBean> memberList = getMemberList(list);
            this.memberDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, memberList);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
