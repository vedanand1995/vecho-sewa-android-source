package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.databean.MigratedFamilyDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public class FamilyMigrationRevertActivity extends MenuActivity implements View.OnClickListener {
    private static final String CONFIRMATION_SCREEN = "confirmationScreen";
    private static final String FAMILY_INFO_SCREEN = "familyInfoScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String STATUS_CONFIRMATION_PENDING = "confirmationPending";
    private static final String STATUS_CONFIRMED = "confirmed";
    private static final String STATUS_LFU = "confirmed";
    private static final String STATUS_OUT_OF_STATE = "outOfState";
    private LinearLayout bodyLayoutContainer;
    private RadioGroup confirmationRadioGroup;
    private LinearLayout globalPanel;
    private boolean isOut;
    private MigratedFamilyBean migratedFamilyBean;
    MigrationServiceImpl migrationService;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private RadioGroup revertRadioGroup;
    private String screenName;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.isOut = extras.getBoolean("isOut");
            String string = extras.getString("migratedFamilyBean");
            if (string != null) {
                this.migratedFamilyBean = (MigratedFamilyBean) new Gson().fromJson(string, MigratedFamilyBean.class);
            }
        }
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        super.setAlertRequired(true);
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
        setTitle(UtilBean.getTitleText(LabelConstants.MANAGE_FAMILY_MIGRATIONS));
        setSubTitle(this.migratedFamilyBean.getFamilyIdString());
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setFamilyDetailsScreen();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_MANAGE_FAMILY_MIGRATIONS_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilyMigrationRevertActivity.this.myAlertDialog.dismiss();
                    FamilyMigrationRevertActivity.this.finish();
                } else {
                    FamilyMigrationRevertActivity.this.myAlertDialog.dismiss();
                }
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private RadioGroup getRadioGroupYesNo() {
        HashMap map = new HashMap();
        map.put(RADIO_BUTTON_ID_YES, "Yes");
        map.put(RADIO_BUTTON_ID_NO, "No");
        return MyStaticComponents.getRadioGroup(this, map, true);
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
            if (r3 != r0) goto Lad
            java.lang.String r3 = r2.screenName
            r3.hashCode()
            int r0 = r3.hashCode()
            r1 = -1
            switch(r0) {
                case -811097794: goto L2d;
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
            java.lang.String r0 = "familyInfoScreen"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L36
            goto L15
        L36:
            r3 = 0
        L37:
            java.lang.String r0 = "Please Select an option"
            switch(r3) {
                case 0: goto L78;
                case 1: goto L42;
                case 2: goto L3e;
                default: goto L3c;
            }
        L3c:
            goto Lad
        L3e:
            r2.finishActivity()
            goto Lad
        L42:
            android.widget.RadioGroup r3 = r2.confirmationRadioGroup
            int r3 = r3.getCheckedRadioButtonId()
            if (r3 != r1) goto L54
            android.content.Context r3 = r2.context
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r3, r0)
            goto Lad
        L54:
            android.widget.RadioGroup r3 = r2.confirmationRadioGroup
            int r3 = r3.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.RADIO_BUTTON_ID_NO
            int r0 = r0.intValue()
            if (r3 != r0) goto L66
            r2.setFamilyDetailsScreen()
            goto Lad
        L66:
            android.widget.RadioGroup r3 = r2.confirmationRadioGroup
            int r3 = r3.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.RADIO_BUTTON_ID_YES
            int r0 = r0.intValue()
            if (r3 != r0) goto Lad
            r2.setFinalScreen()
            goto Lad
        L78:
            android.widget.RadioGroup r3 = r2.revertRadioGroup
            int r3 = r3.getCheckedRadioButtonId()
            if (r3 != r1) goto L8a
            android.content.Context r3 = r2.context
            java.lang.String r0 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r0)
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r3, r0)
            goto Lad
        L8a:
            android.widget.RadioGroup r3 = r2.revertRadioGroup
            int r3 = r3.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.RADIO_BUTTON_ID_NO
            int r0 = r0.intValue()
            if (r3 != r0) goto L9c
            r2.finish()
            goto Lad
        L9c:
            android.widget.RadioGroup r3 = r2.revertRadioGroup
            int r3 = r3.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.RADIO_BUTTON_ID_YES
            int r0 = r0.intValue()
            if (r3 != r0) goto Lad
            r2.setConfirmationScreen()
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.onClick(android.view.View):void");
    }

    private void setFamilyDetailsScreen() {
        this.screenName = FAMILY_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FAMILY_DETAILS));
        if (this.migratedFamilyBean.getFamilyIdString() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FAMILY_ID));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedFamilyBean.getFamilyIdString()));
        }
        if (this.migratedFamilyBean.getLocationMigratedFrom() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.LOCATION_MIGRATED_FROM));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedFamilyBean.getLocationMigratedFrom()));
        }
        if (this.migratedFamilyBean.getLocationMigratedTo() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.LOCATION_MIGRATED_TO));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedFamilyBean.getLocationMigratedTo()));
        }
        if (Boolean.TRUE.equals(this.migratedFamilyBean.getSplitFamily())) {
            if (Objects.equals(this.migratedFamilyBean.getToLocationId(), this.migratedFamilyBean.getFromLocationId())) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.SPLIT_FAMILY_INFO));
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.SPLIT_WITH_MIGRATED_FAMILY_INFO));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.NEW_FAMILY_ID));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedFamilyBean.getsFamilyIdString()));
            if (this.migratedFamilyBean.getSplitMembersDetail() != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_DETAILS));
                for (String str : this.migratedFamilyBean.getSplitMembersDetail().split(GlobalTypes.COMMA)) {
                    this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, str));
                }
            }
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MIGRATION_STATUS));
        String str2 = "confirmed";
        if (this.migratedFamilyBean.getLfu() != null && this.migratedFamilyBean.getLfu().booleanValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.LOST_TO_FOLLOW_UP));
        } else if (this.migratedFamilyBean.getOutOfState() != null && this.migratedFamilyBean.getOutOfState().booleanValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.OUT_OF_STATE_TAG));
            str2 = STATUS_OUT_OF_STATE;
        } else if (this.migratedFamilyBean.getConfirmed() != null && !this.migratedFamilyBean.getConfirmed().booleanValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.CONFIRMATION_PENDING));
            str2 = STATUS_CONFIRMATION_PENDING;
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.CONFIRMED));
        }
        if (this.revertRadioGroup == null) {
            this.revertRadioGroup = getRadioGroupYesNo();
        }
        if (!str2.equals(STATUS_CONFIRMATION_PENDING)) {
            if (this.isOut) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.WANT_TO_BRING_BACK_FAMILY));
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.WANT_TO_RETURN_FAMILY_TO_NATIVE));
            }
            this.bodyLayoutContainer.addView(this.revertRadioGroup);
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.MIGRATION_REVRT_IMPOSSIBLE_ALERT));
        this.nextButton.setText("Okay");
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FamilyMigrationRevertActivity.this.finish();
            }
        });
    }

    private void setConfirmationScreen() {
        this.screenName = CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.isOut) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CONFORMATION_TO_BRING_BACK_FAMILY));
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.CONFORMATION_TO_RETURN_FAMILY_TO_NATIVE));
        }
        if (this.confirmationRadioGroup == null) {
            this.confirmationRadioGroup = getRadioGroupYesNo();
        }
        this.bodyLayoutContainer.addView(this.confirmationRadioGroup);
    }

    private void setFinalScreen() {
        this.screenName = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FORM_ENTRY_COMPLETED));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.FORM_ENTRY_COMPLETED_SUCCESSFULLY));
    }

    private void finishActivity() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, LabelConstants.ON_MIGRATION_REVERT_SUBMISSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilyMigrationRevertActivity.this.myAlertDialog.dismiss();
                    FamilyMigrationRevertActivity familyMigrationRevertActivity = FamilyMigrationRevertActivity.this;
                    familyMigrationRevertActivity.createMigrationReturn(Boolean.valueOf(familyMigrationRevertActivity.isOut));
                    FamilyMigrationRevertActivity.this.finish();
                    return;
                }
                FamilyMigrationRevertActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMigrationReturn(Boolean bool) {
        MigratedFamilyDataBean migratedFamilyDataBeanConvertMigratedFamilyBeanToDataBean = SewaTransformer.getInstance().convertMigratedFamilyBeanToDataBean(this.migratedFamilyBean);
        migratedFamilyDataBeanConvertMigratedFamilyBeanToDataBean.setOut(bool);
        this.migrationService.storeRevertedFamilyMigrationBean(migratedFamilyDataBeanConvertMigratedFamilyBeanToDataBean);
        this.migrationService.deleteMigratedFamilyBean(this.migratedFamilyBean);
        finish();
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
                case -811097794: goto L3e;
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
            java.lang.String r0 = "familyInfoScreen"
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
            r4.setFamilyDetailsScreen()
            goto L56
        L53:
            r4.finish()
        L56:
            return r2
        L57:
            r4.navigateToHomeScreen(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FamilyMigrationRevertActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }
}
