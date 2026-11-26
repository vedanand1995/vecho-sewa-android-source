package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
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
import com.argusoft.sewa.android.app.databean.MigratedMembersDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MigrationRevertActivity extends MenuActivity implements View.OnClickListener {
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String MEMBER_INFO_SCREEN = "memberInfoScreen";
    private static final String STATUS_CONFIRMATION_PENDING = "confirmationPending";
    private static final String STATUS_CONFIRMED = "confirmed";
    private static final String STATUS_LFU = "confirmed";
    private static final String STATUS_OUT_OF_STATE = "outOfState";
    private LinearLayout bodyLayoutContainer;
    private RadioGroup confirmationRadioGroup;
    private LinearLayout globalPanel;
    private boolean isOut;
    private MigratedMembersBean migratedMembersBean;
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
            String string = extras.getString("migratedMemberBean");
            if (string != null) {
                this.migratedMembersBean = (MigratedMembersBean) new Gson().fromJson(string, MigratedMembersBean.class);
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
        setTitle(UtilBean.getTitleText(LabelConstants.MIGRATION_REVERT_TITLE));
        setSubTitle(this.migratedMembersBean.getName());
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        setMemberDetailsScreen();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ON_MIGRATION_REVERT_CLOSE_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationRevertActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrationRevertActivity.this.myAlertDialog.dismiss();
                    MigrationRevertActivity.this.finish();
                } else {
                    MigrationRevertActivity.this.myAlertDialog.dismiss();
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screenName;
            str.hashCode();
            if (!str.equals(MEMBER_INFO_SCREEN)) {
                if (str.equals(FINAL_SCREEN)) {
                    finishActivity();
                }
            } else if (this.revertRadioGroup.getCheckedRadioButtonId() == -1) {
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_SELECT_AN_OPTION));
            } else if (this.revertRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
                finish();
            } else if (this.revertRadioGroup.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
                setFinalScreen();
            }
        }
    }

    private void setMemberDetailsScreen() {
        this.screenName = MEMBER_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.MEMBER_DETAILS));
        if (this.migratedMembersBean.getName() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBER_NAME));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedMembersBean.getName()));
        }
        if (this.migratedMembersBean.getHealthId() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.HEALTH_ID));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedMembersBean.getHealthId()));
        }
        if (this.migratedMembersBean.getFamilyMigratedFrom() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FAMILY_MIGRATED_FROM));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedMembersBean.getFamilyMigratedFrom()));
        }
        if (this.migratedMembersBean.getFamilyMigratedTo() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FAMILY_MIGRATED_TO));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedMembersBean.getFamilyMigratedTo()));
        }
        if (this.migratedMembersBean.getLocationMigratedFrom() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.LOCATION_MIGRATED_FROM));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedMembersBean.getLocationMigratedFrom()));
        }
        if (this.migratedMembersBean.getLocationMigratedTo() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.LOCATION_MIGRATED_TO));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.migratedMembersBean.getLocationMigratedTo()));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MIGRATION_STATUS));
        String str = "confirmed";
        if (this.migratedMembersBean.getLfu() != null && this.migratedMembersBean.getLfu().booleanValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.LOST_TO_FOLLOW_UP));
        } else if (this.migratedMembersBean.getOutOfState() != null && this.migratedMembersBean.getOutOfState().booleanValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.OUT_OF_STATE_TAG));
            str = STATUS_OUT_OF_STATE;
        } else if (this.migratedMembersBean.getConfirmed() != null && !this.migratedMembersBean.getConfirmed().booleanValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.CONFIRMATION_PENDING));
            str = STATUS_CONFIRMATION_PENDING;
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, LabelConstants.CONFIRMED));
        }
        if (this.revertRadioGroup == null) {
            this.revertRadioGroup = getRadioGroupYesNo();
        }
        if (!str.equals(STATUS_CONFIRMATION_PENDING)) {
            if (this.isOut) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.WANT_TO_BRING_BACK_MEMBER));
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.WANT_TO_RETURN_MEMBER_TO_NATIVE));
            }
            this.bodyLayoutContainer.addView(this.revertRadioGroup);
            return;
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.MIGRATION_REVRT_IMPOSSIBLE_ALERT));
        this.nextButton.setText("Okay");
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationRevertActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MigrationRevertActivity.this.finish();
            }
        });
    }

    private void setFinalScreen() {
        this.screenName = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FORM_ENTRY_COMPLETED));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.FORM_ENTRY_COMPLETED_SUCCESSFULLY));
    }

    private void finishActivity() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, LabelConstants.ON_MIGRATION_REVERT_SUBMISSION_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MigrationRevertActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MigrationRevertActivity.this.myAlertDialog.dismiss();
                    MigrationRevertActivity migrationRevertActivity = MigrationRevertActivity.this;
                    migrationRevertActivity.createMigrationReturn(Boolean.valueOf(migrationRevertActivity.isOut));
                    MigrationRevertActivity.this.finish();
                    return;
                }
                MigrationRevertActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMigrationReturn(Boolean bool) {
        MigratedMembersDataBean migratedMembersDataBeanConvertMigratedMembersBeanToDataBean = SewaTransformer.getInstance().convertMigratedMembersBeanToDataBean(this.migratedMembersBean);
        migratedMembersDataBeanConvertMigratedMembersBeanToDataBean.setOut(bool);
        this.migrationService.storeRevertedMigrationBean(migratedMembersDataBeanConvertMigratedMembersBeanToDataBean);
        this.migrationService.deleteMigratedMembersBean(this.migratedMembersBean);
        finish();
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
            if (str2.equals(MEMBER_INFO_SCREEN)) {
                finish();
            } else if (str2.equals(FINAL_SCREEN)) {
                setMemberDetailsScreen();
            }
        }
        return true;
    }
}
