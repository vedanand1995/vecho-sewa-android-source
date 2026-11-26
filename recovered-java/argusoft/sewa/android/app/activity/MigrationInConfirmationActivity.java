package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MigrationDetailsDataBean;
import com.argusoft.sewa.android.app.databean.MigrationInConfirmationDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
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
public class MigrationInConfirmationActivity extends MenuActivity implements View.OnClickListener, PagingListView.PagingListener {
    private static final String CONFIRMATION_SCREEN = "confirmationScreen";
    private static final long DELAY = 500;
    private static final String FAMILY_SELECTION_SCREEN = "familySelectionScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String MEMBER_INFO_SCREEN = "memberInfoScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private Map<String, MemberDataBean> headMembersMapWithFamilyIdAsKey;
    private MigrationDetailsDataBean migrationDetailsDataBean;
    MigrationServiceImpl migrationService;
    private MyAlertDialog myAlertDialog;
    private MaterialButton nextButton;
    private MaterialTextView noFamilyTextView;
    private NotificationMobDataBean notificationMobDataBean;
    private long offset;
    private PagingListView paginatedListView;
    private RadioGroup radioGroupForConfirmation;
    private RadioGroup radioGroupForMemberQue;
    private TextInputLayout searchFamilyEditText;
    private String searchString;
    private FamilyDataBean selectedFamily;
    SewaServiceImpl sewaService;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;
    private static final Integer RADIO_BUTTON_ID_NOT_FOUND = 3;
    private Timer timer = new Timer();
    private String screenName = null;
    private List<FamilyDataBean> familyDataBeans = null;
    private int selectedFamilyIndex = -1;
    private long limit = 30;

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
            this.notificationMobDataBean = (NotificationMobDataBean) new Gson().fromJson(extras.getString(GlobalTypes.NOTIFICATION_BEAN, null), NotificationMobDataBean.class);
            this.migrationDetailsDataBean = (MigrationDetailsDataBean) new Gson().fromJson(this.notificationMobDataBean.getOtherDetails(), MigrationDetailsDataBean.class);
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
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.MIGRATION_CONFIRMATION_TITLE));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (MaterialButton) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setMemberInfoScreen();
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
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.onClick(android.view.View):void");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, "Are you sure want to close Migration?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrationInConfirmationActivity.this.myAlertDialog.dismiss();
                    MigrationInConfirmationActivity.this.finish();
                } else {
                    MigrationInConfirmationActivity.this.myAlertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private void setMemberInfoScreen() {
        this.screenName = MEMBER_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel("You have to identify this person in your village and select a family for the same")));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Member name")));
        StringBuilder sb = new StringBuilder();
        if (this.migrationDetailsDataBean.getFirstName() != null) {
            sb.append(this.migrationDetailsDataBean.getFirstName());
        }
        if (this.migrationDetailsDataBean.getMiddleName() != null) {
            sb.append(" ");
            sb.append(this.migrationDetailsDataBean.getMiddleName());
        }
        if (this.migrationDetailsDataBean.getLastName() != null) {
            sb.append(" ");
            sb.append(this.migrationDetailsDataBean.getLastName());
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, sb.toString()));
        if (this.migrationDetailsDataBean.getHealthId() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Member Health Id")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getHealthId()));
        }
        if (this.migrationDetailsDataBean.getChildDetails() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Children migrated with this member")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getChildDetails()));
        }
        if (this.migrationDetailsDataBean.getFamilyId() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FAMILY_MIGRATED_FROM)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getFamilyId()));
        }
        if (this.migrationDetailsDataBean.getLocationDetails() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Location Migrated From")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getLocationDetails()));
        }
        if (this.migrationDetailsDataBean.getFhwName() != null && !this.migrationDetailsDataBean.getFhwName().isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FHW_NAME)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getFhwName()));
        }
        if (this.migrationDetailsDataBean.getFhwPhoneNumber() != null && !this.migrationDetailsDataBean.getFhwPhoneNumber().isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("FHW Contact Number")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getFhwPhoneNumber()));
        }
        if (this.migrationDetailsDataBean.getOtherInfo() != null && !this.migrationDetailsDataBean.getOtherInfo().isEmpty()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.OTHER_INFO)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getOtherInfo()));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Do you want to migrate in this member") + "?"));
        if (this.radioGroupForMemberQue == null) {
            RadioGroup radioGroup = new RadioGroup(this);
            this.radioGroupForMemberQue = radioGroup;
            radioGroup.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("Yes"), RADIO_BUTTON_ID_YES.intValue()));
            this.radioGroupForMemberQue.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("No"), RADIO_BUTTON_ID_NO.intValue()));
            this.radioGroupForMemberQue.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("Member not found yet"), RADIO_BUTTON_ID_NOT_FOUND.intValue()));
        }
        this.bodyLayoutContainer.addView(this.radioGroupForMemberQue);
    }

    private void addSearchTextBoxForFamily() {
        this.screenName = FAMILY_SELECTION_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, "Search Family in which the beneficiary has migrated"));
        if (this.searchFamilyEditText == null) {
            TextInputLayout editText = MyStaticComponents.getEditText(this, LabelConstants.SEARCH_FAMILY, 1, -1, 1);
            this.searchFamilyEditText = editText;
            if (editText.getEditText() != null) {
                this.searchFamilyEditText.getEditText().addTextChangedListener(new AnonymousClass2());
            }
        }
        this.bodyLayoutContainer.addView(this.searchFamilyEditText);
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity$2, reason: invalid class name */
    class AnonymousClass2 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass2() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            MigrationInConfirmationActivity.this.timer.cancel();
            MigrationInConfirmationActivity.this.timer = new Timer();
            MigrationInConfirmationActivity.this.timer.schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.2.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CharSequence charSequence2 = charSequence;
                    if (charSequence2 != null && charSequence2.length() > 2) {
                        MigrationInConfirmationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MigrationInConfirmationActivity.this.retrieveFamilyListFromDB(charSequence.toString());
                                MigrationInConfirmationActivity.this.searchFamilyEditText.setFocusable(true);
                            }
                        });
                        return;
                    }
                    CharSequence charSequence3 = charSequence;
                    if (charSequence3 == null || charSequence3.length() != 0) {
                        return;
                    }
                    MigrationInConfirmationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.2.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            MigrationInConfirmationActivity.this.bodyLayoutContainer.removeView(MigrationInConfirmationActivity.this.paginatedListView);
                        }
                    });
                }
            }, MigrationInConfirmationActivity.DELAY);
        }
    }

    public void retrieveFamilyListFromDB(String str) {
        this.searchString = str;
        this.selectedFamilyIndex = -1;
        this.offset = 0L;
        this.familyDataBeans = this.migrationService.searchFamilyByLocation(str, this.notificationMobDataBean.getLocationId(), this.limit, this.offset);
        addRadioGroupForFamilySelection();
    }

    public void addRadioGroupForFamilySelection() {
        this.bodyLayoutContainer.removeView(this.paginatedListView);
        this.bodyLayoutContainer.removeView(this.noFamilyTextView);
        List<FamilyDataBean> list = this.familyDataBeans;
        if (list != null && !list.isEmpty()) {
            PagingListView paginatedListViewWithItem = MyStaticComponents.getPaginatedListViewWithItem(this.context, getList(this.familyDataBeans), R.layout.listview_row_with_two_item, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    MigrationInConfirmationActivity.this.selectedFamilyIndex = i;
                }
            }, null);
            this.paginatedListView = paginatedListViewWithItem;
            this.bodyLayoutContainer.addView(paginatedListViewWithItem);
            this.nextButton.setText(UtilBean.getMyLabel("Next"));
            return;
        }
        MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this, "There are no families.");
        this.noFamilyTextView = materialTextViewGenerateInstructionView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateInstructionView);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
    }

    private List<ListItemDataBean> getList(List<FamilyDataBean> list) {
        String strReplace;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFamilyId());
        }
        this.headMembersMapWithFamilyIdAsKey = this.fhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
        for (FamilyDataBean familyDataBean : list) {
            MemberDataBean memberDataBean = this.headMembersMapWithFamilyIdAsKey.get(familyDataBean.getFamilyId());
            if (memberDataBean != null) {
                familyDataBean.setHeadMemberName(memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName());
                familyDataBean.setHeadMemberName(familyDataBean.getHeadMemberName().replace(LabelConstants.NULL, ""));
                strReplace = (memberDataBean.getFirstName() + " " + memberDataBean.getMiddleName() + " " + memberDataBean.getGrandfatherName() + " " + memberDataBean.getLastName()).replace(" null", "");
            } else {
                strReplace = familyDataBean.getFamilyId() + " - " + UtilBean.getMyLabel(LabelConstants.HEAD_NAME_NOT_AVAILABLE);
            }
            arrayList2.add(new ListItemDataBean((String) null, familyDataBean.getFamilyId(), (String) null, (String) null, strReplace));
        }
        return arrayList2;
    }

    private void setConfirmationScreen() {
        this.screenName = CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        int checkedRadioButtonId = this.radioGroupForMemberQue.getCheckedRadioButtonId();
        Integer num = RADIO_BUTTON_ID_YES;
        if (checkedRadioButtonId == num.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedFamily.getFamilyId()));
            MemberDataBean memberDataBean = this.headMembersMapWithFamilyIdAsKey.get(this.selectedFamily.getFamilyId());
            if (memberDataBean != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.HEAD_OF_THE_FAMILY)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberDataBean)));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Are you sure want to migrate the beneficiary to this family?")));
        }
        int checkedRadioButtonId2 = this.radioGroupForMemberQue.getCheckedRadioButtonId();
        Integer num2 = RADIO_BUTTON_ID_NO;
        if (checkedRadioButtonId2 == num2.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel("Are you sure this member has not been migrated in to your village")));
        }
        if (this.radioGroupForConfirmation == null) {
            RadioGroup radioGroup = new RadioGroup(this);
            this.radioGroupForConfirmation = radioGroup;
            radioGroup.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("Yes"), num.intValue()));
            this.radioGroupForConfirmation.addView(MyStaticComponents.getRadioButton(this, UtilBean.getMyLabel("No"), num2.intValue()));
        }
        this.bodyLayoutContainer.addView(this.radioGroupForConfirmation);
    }

    private void addFinalScreen() {
        this.screenName = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel("You have successfully migrated in a beneficiary. Thank you, form is complete.")));
        }
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel("You have selected not to migrate in a beneficiary. Thank you, form is complete.")));
        }
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_FOUND.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel("Please come back when you find the beneficiary. Form is complete.")));
        }
    }

    private void finishActivity() {
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_FOUND.intValue()) {
            finish();
            return;
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, "Are you sure want to submit this migration confirmation form?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrationInConfirmationActivity.this.myAlertDialog.dismiss();
                    MigrationInConfirmationActivity.this.createMigrationConfirmationBean();
                    MigrationInConfirmationActivity.this.finish();
                    return;
                }
                MigrationInConfirmationActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMigrationConfirmationBean() {
        MigrationInConfirmationDataBean migrationInConfirmationDataBean = new MigrationInConfirmationDataBean();
        migrationInConfirmationDataBean.setNotificationId(this.notificationMobDataBean.getId());
        migrationInConfirmationDataBean.setMigrationId(this.notificationMobDataBean.getMigrationId());
        migrationInConfirmationDataBean.setMemberId(this.notificationMobDataBean.getMemberId());
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
            migrationInConfirmationDataBean.setHasMigrationHappened(Boolean.TRUE);
            migrationInConfirmationDataBean.setFamilyMigratedTo(Long.valueOf(this.selectedFamily.getId()));
        }
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            migrationInConfirmationDataBean.setHasMigrationHappened(Boolean.FALSE);
        }
        this.migrationService.createMigrationInConfirmation(migrationInConfirmationDataBean, this.migrationDetailsDataBean);
        this.sewaService.deleteNotificationByNotificationId(this.notificationMobDataBean.getId());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
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
            java.lang.String r0 = r4.screenName
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lc7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto Lc7
        L11:
            int r5 = r5.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r5 != r0) goto Lc6
            java.lang.String r5 = r4.screenName
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case -1805597452: goto L4a;
                case -169448172: goto L3f;
                case 502955265: goto L34;
                case 2070150530: goto L29;
                default: goto L27;
            }
        L27:
            r2 = -1
            goto L53
        L29:
            java.lang.String r0 = "finalScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L32
            goto L27
        L32:
            r2 = 3
            goto L53
        L34:
            java.lang.String r0 = "confirmationScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3d
            goto L27
        L3d:
            r2 = 2
            goto L53
        L3f:
            java.lang.String r0 = "familySelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L48
            goto L27
        L48:
            r2 = 1
            goto L53
        L4a:
            java.lang.String r0 = "memberInfoScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L53
            goto L27
        L53:
            switch(r2) {
                case 0: goto Lc2;
                case 1: goto Lbe;
                case 2: goto L6e;
                case 3: goto L58;
                default: goto L56;
            }
        L56:
            goto Lc5
        L58:
            android.widget.RadioGroup r5 = r4.radioGroupForMemberQue
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.RADIO_BUTTON_ID_NOT_FOUND
            int r0 = r0.intValue()
            if (r5 != r0) goto L6a
            r4.setMemberInfoScreen()
            goto Lc5
        L6a:
            r4.setConfirmationScreen()
            goto Lc5
        L6e:
            r4.selectedFamilyIndex = r3
            android.widget.RadioGroup r5 = r4.radioGroupForMemberQue
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.RADIO_BUTTON_ID_YES
            int r0 = r0.intValue()
            if (r5 != r0) goto Lac
            android.widget.LinearLayout r5 = r4.bodyLayoutContainer
            r5.removeAllViews()
            r4.addSearchTextBoxForFamily()
            com.google.android.material.textfield.TextInputLayout r5 = r4.searchFamilyEditText
            android.widget.EditText r5 = r5.getEditText()
            if (r5 == 0) goto Lc5
            com.google.android.material.textfield.TextInputLayout r5 = r4.searchFamilyEditText
            android.widget.EditText r5 = r5.getEditText()
            android.text.Editable r5 = r5.getText()
            int r5 = r5.length()
            if (r5 <= 0) goto Lc5
            java.util.List<com.argusoft.sewa.android.app.databean.FamilyDataBean> r5 = r4.familyDataBeans
            if (r5 == 0) goto Lc5
            boolean r5 = r5.isEmpty()
            if (r5 != 0) goto Lc5
            r4.addRadioGroupForFamilySelection()
            goto Lc5
        Lac:
            android.widget.RadioGroup r5 = r4.radioGroupForMemberQue
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.RADIO_BUTTON_ID_NO
            int r0 = r0.intValue()
            if (r5 != r0) goto Lc5
            r4.setMemberInfoScreen()
            goto Lc5
        Lbe:
            r4.setMemberInfoScreen()
            goto Lc5
        Lc2:
            r4.onBackPressed()
        Lc5:
            return r1
        Lc6:
            return r2
        Lc7:
            r4.navigateToHomeScreen(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MigrationInConfirmationActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // com.argusoft.sewa.android.app.component.PagingListView.PagingListener
    public void onLoadMoreItems() {
        onLoadMoreBackground();
    }

    public void onLoadMoreBackground() {
        List<FamilyDataBean> listSearchFamilyByLocation = this.migrationService.searchFamilyByLocation(this.searchString, this.notificationMobDataBean.getLocationId(), this.limit, this.offset);
        this.offset += this.limit;
        onLoadMoreUi(listSearchFamilyByLocation);
    }

    public void onLoadMoreUi(List<FamilyDataBean> list) {
        if (!list.isEmpty()) {
            List<ListItemDataBean> list2 = getList(list);
            this.familyDataBeans.addAll(list);
            this.paginatedListView.onFinishLoadingWithItem(true, list2);
            return;
        }
        this.paginatedListView.onFinishLoadingWithItem(false, null);
    }
}
