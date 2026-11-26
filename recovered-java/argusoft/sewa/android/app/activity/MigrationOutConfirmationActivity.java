package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.MigrationDetailsDataBean;
import com.argusoft.sewa.android.app.databean.MigrationOutConfirmationDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MigrationOutConfirmationActivity extends MenuActivity implements View.OnClickListener {
    private static final String CONFIRMATION_SCREEN = "confirmationScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String MEMBER_INFO_SCREEN = "memberInfoScreen";
    private LinearLayout bodyLayoutContainer;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    private MigrationDetailsDataBean migrationDetailsDataBean;
    MigrationServiceImpl migrationService;
    private MyAlertDialog myAlertDialog;
    private NotificationMobDataBean notificationMobDataBean;
    private RadioGroup radioGroupForConfirmation;
    private RadioGroup radioGroupForMemberQue;
    private String screenName = null;
    SewaServiceImpl sewaService;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.notificationMobDataBean = (NotificationMobDataBean) new Gson().fromJson(extras.getString(GlobalTypes.NOTIFICATION_BEAN, null), NotificationMobDataBean.class);
            this.migrationDetailsDataBean = (MigrationDetailsDataBean) new Gson().fromJson(this.notificationMobDataBean.getOtherDetails(), MigrationDetailsDataBean.class);
        }
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
        setMemberInfoScreen();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0015  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r3) {
        /*
            r2 = this;
            int r3 = r3.getId()
            int r0 = com.argusoft.sewa.android.app.util.DynamicUtils.ID_NEXT_BUTTON
            if (r3 != r0) goto L84
            java.lang.String r3 = r2.screenName
            r3.hashCode()
            int r0 = r3.hashCode()
            r1 = -1
            switch(r0) {
                case -1805597452: goto L2d;
                case 502955265: goto L22;
                case 2070150530: goto L17;
                default: goto L15;
            }
        L15:
            r3 = -1
            goto L37
        L17:
            java.lang.String r0 = "finalScreen"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L20
            goto L15
        L20:
            r3 = 2
            goto L37
        L22:
            java.lang.String r0 = "confirmationScreen"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L2b
            goto L15
        L2b:
            r3 = 1
            goto L37
        L2d:
            java.lang.String r0 = "memberInfoScreen"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L36
            goto L15
        L36:
            r3 = 0
        L37:
            java.lang.String r0 = "Please select an option"
            switch(r3) {
                case 0: goto L73;
                case 1: goto L41;
                case 2: goto L3d;
                default: goto L3c;
            }
        L3c:
            goto L84
        L3d:
            r2.finishActivity()
            goto L84
        L41:
            android.widget.RadioGroup r3 = r2.radioGroupForConfirmation
            int r3 = r3.getCheckedRadioButtonId()
            if (r3 != r1) goto L4f
            android.content.Context r3 = r2.context
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r3, r0)
            goto L84
        L4f:
            android.widget.RadioGroup r3 = r2.radioGroupForConfirmation
            int r3 = r3.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.MigrationOutConfirmationActivity.RADIO_BUTTON_ID_YES
            int r0 = r0.intValue()
            if (r3 != r0) goto L61
            r2.setFinalScreen()
            goto L84
        L61:
            android.widget.RadioGroup r3 = r2.radioGroupForConfirmation
            int r3 = r3.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.MigrationOutConfirmationActivity.RADIO_BUTTON_ID_NO
            int r0 = r0.intValue()
            if (r3 != r0) goto L84
            r2.setMemberInfoScreen()
            goto L84
        L73:
            android.widget.RadioGroup r3 = r2.radioGroupForMemberQue
            int r3 = r3.getCheckedRadioButtonId()
            if (r3 != r1) goto L81
            android.content.Context r3 = r2.context
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r3, r0)
            goto L84
        L81:
            r2.setConfirmationScreen()
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MigrationOutConfirmationActivity.onClick(android.view.View):void");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, "Are you sure want to close Migration?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationOutConfirmationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrationOutConfirmationActivity.this.myAlertDialog.dismiss();
                    MigrationOutConfirmationActivity.this.finish();
                } else {
                    MigrationOutConfirmationActivity.this.myAlertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private void setMemberInfoScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = MEMBER_INFO_SCREEN;
        setSubTitle(this.migrationDetailsDataBean.getFirstName() + " " + this.migrationDetailsDataBean.getLastName());
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, "You have to migrate out this person"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Member name"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getFirstName() + " " + this.migrationDetailsDataBean.getMiddleName() + " " + this.migrationDetailsDataBean.getLastName()));
        if (this.migrationDetailsDataBean.getHealthId() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Member Health Id"));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getHealthId()));
        }
        if (this.migrationDetailsDataBean.getFamilyId() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Family Migrated to"));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getFamilyId()));
        }
        if (this.migrationDetailsDataBean.getLocationDetails() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Location Migrated To"));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getLocationDetails()));
        }
        if (this.migrationDetailsDataBean.getFhwName() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, LabelConstants.FHW_NAME));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getFhwName()));
        }
        if (this.migrationDetailsDataBean.getFhwPhoneNumber() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "FHW Contact Number"));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.migrationDetailsDataBean.getFhwPhoneNumber()));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, "Do you want to migrate out this member?"));
        if (this.radioGroupForMemberQue == null) {
            this.radioGroupForMemberQue = getRadioGroupYesNo();
        }
        this.bodyLayoutContainer.addView(this.radioGroupForMemberQue);
    }

    private void setConfirmationScreen() {
        this.screenName = CONFIRMATION_SCREEN;
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, "Are you sure this beneficiary has been migrated?"));
        }
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, "Are you sure this beneficiary has not been migrated?"));
        }
        if (this.radioGroupForConfirmation == null) {
            this.radioGroupForConfirmation = getRadioGroupYesNo();
        }
        this.bodyLayoutContainer.addView(this.radioGroupForConfirmation);
    }

    private RadioGroup getRadioGroupYesNo() {
        HashMap map = new HashMap();
        map.put(RADIO_BUTTON_ID_YES, "Yes");
        map.put(RADIO_BUTTON_ID_NO, "No");
        return MyStaticComponents.getRadioGroup(this, map, true);
    }

    private void setFinalScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screenName = FINAL_SCREEN;
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel("You have successfully migrated out a beneficiary. Thank you, form is complete.")));
        }
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel("You have selected not to migrate out a beneficiary. Thank you, form is complete.")));
        }
    }

    private void finishActivity() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, "Are you sure want to submit this migration confirmation form?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationOutConfirmationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrationOutConfirmationActivity.this.myAlertDialog.dismiss();
                    MigrationOutConfirmationActivity.this.createMigrationOutConfirmation();
                    MigrationOutConfirmationActivity.this.finish();
                    return;
                }
                MigrationOutConfirmationActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMigrationOutConfirmation() {
        MigrationOutConfirmationDataBean migrationOutConfirmationDataBean = new MigrationOutConfirmationDataBean();
        migrationOutConfirmationDataBean.setNotificationId(this.notificationMobDataBean.getId());
        migrationOutConfirmationDataBean.setMigrationId(this.notificationMobDataBean.getMigrationId());
        migrationOutConfirmationDataBean.setMemberId(this.notificationMobDataBean.getMemberId());
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
            migrationOutConfirmationDataBean.setHasMigrationHappened(Boolean.TRUE);
        }
        if (this.radioGroupForMemberQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            migrationOutConfirmationDataBean.setHasMigrationHappened(Boolean.FALSE);
        }
        this.migrationService.createMigrationOutConfirmation(migrationOutConfirmationDataBean, this.migrationDetailsDataBean);
        this.sewaService.deleteNotificationByNotificationId(this.notificationMobDataBean.getId());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
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
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L57
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L10
            goto L57
        L10:
            int r5 = r5.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r5 != r0) goto L56
            java.lang.String r5 = r4.screenName
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case -1805597452: goto L3e;
                case 502955265: goto L33;
                case 2070150530: goto L28;
                default: goto L26;
            }
        L26:
            r1 = -1
            goto L47
        L28:
            java.lang.String r0 = "finalScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L31
            goto L26
        L31:
            r1 = 2
            goto L47
        L33:
            java.lang.String r0 = "confirmationScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3c
            goto L26
        L3c:
            r1 = 1
            goto L47
        L3e:
            java.lang.String r0 = "memberInfoScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L47
            goto L26
        L47:
            switch(r1) {
                case 0: goto L53;
                case 1: goto L4f;
                case 2: goto L4b;
                default: goto L4a;
            }
        L4a:
            goto L56
        L4b:
            r4.setConfirmationScreen()
            goto L56
        L4f:
            r4.setMemberInfoScreen()
            goto L56
        L53:
            r4.onBackPressed()
        L56:
            return r2
        L57:
            r4.navigateToHomeScreen(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MigrationOutConfirmationActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }
}
