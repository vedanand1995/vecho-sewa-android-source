package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.FamilyMigrationDetailsDataBean;
import com.argusoft.sewa.android.app.databean.FamilyMigrationInConfirmationDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FamilyMigrationInConfirmationActivity extends MenuActivity implements View.OnClickListener {
    private static final String AREA_SELECTION_SCREEN = "areaSelectionScreen";
    private static final String CONFIRMATION_SCREEN = "confirmationScreen";
    private static final String FAMILY_INFO_SCREEN = "familyInfoScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private Spinner areaSpinner;
    private List<LocationBean> areas;
    private LinearLayout bodyLayoutContainer;
    private FamilyMigrationDetailsDataBean familyMigrationDetailsDataBean;
    SewaFhsServiceImpl fhsService;
    private LinearLayout globalPanel;
    LocationMasterServiceImpl locationMasterService;
    MigrationServiceImpl migrationService;
    private NotificationMobDataBean notificationMobDataBean;
    private RadioGroup radioGroupForConfirmation;
    private RadioGroup radioGroupForFamilyQue;
    private String screenName;
    private LocationBean selectedArea;
    private LocationBean selectedVillage;
    SewaServiceImpl sewaService;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;
    private static final Integer RADIO_BUTTON_ID_NOT_FOUND = 3;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            NotificationMobDataBean notificationMobDataBean = (NotificationMobDataBean) new Gson().fromJson(extras.getString(GlobalTypes.NOTIFICATION_BEAN, null), NotificationMobDataBean.class);
            this.notificationMobDataBean = notificationMobDataBean;
            this.selectedVillage = this.locationMasterService.getLocationBeanByActualId(notificationMobDataBean.getLocationId().toString());
            this.areas = this.fhsService.retrieveAshaAreaAssignedToUser(Integer.valueOf(this.notificationMobDataBean.getLocationId().intValue()));
            this.familyMigrationDetailsDataBean = (FamilyMigrationDetailsDataBean) new Gson().fromJson(this.notificationMobDataBean.getOtherDetails(), FamilyMigrationDetailsDataBean.class);
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
        setTitle(UtilBean.getTitleText(LabelConstants.FAMILY_MIGRATION_IN_CONFIRMATION_TITLE));
        setSubTitle(null);
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        setFamilyInfoScreen();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this.context, "Are you sure want to close Migration?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationInConfirmationActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilyMigrationInConfirmationActivity.this.alertDialog.dismiss();
                    FamilyMigrationInConfirmationActivity.this.showProcessDialog();
                    FamilyMigrationInConfirmationActivity.this.finish();
                    return;
                }
                FamilyMigrationInConfirmationActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0016  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FamilyMigrationInConfirmationActivity.onClick(android.view.View):void");
    }

    private void setFamilyInfoScreen() {
        this.screenName = FAMILY_INFO_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.HAVE_TO_FIND_FAMILY_IN_YOUR_VILLAGE)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.FAMILY_ID)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this, this.familyMigrationDetailsDataBean.getFamilyIdString()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_DETAILS)));
        Iterator<String> it = this.familyMigrationDetailsDataBean.getMemberDetails().iterator();
        while (it.hasNext()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, it.next()));
        }
        if (this.familyMigrationDetailsDataBean.getLocationDetails() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.LOCATION_MIGRATED_FROM)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.familyMigrationDetailsDataBean.getLocationDetails()));
        }
        if (this.familyMigrationDetailsDataBean.getAreaDetails() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.AREA_MIGRATED_FROM)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.familyMigrationDetailsDataBean.getAreaDetails()));
        }
        if (this.familyMigrationDetailsDataBean.getFhwDetails() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.FHW_DETAILS)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.familyMigrationDetailsDataBean.getFhwDetails()));
        }
        if (this.familyMigrationDetailsDataBean.getOtherInfo() != null) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.OTHER_INFO)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.familyMigrationDetailsDataBean.getOtherInfo()));
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this, LabelConstants.CONFORMATION_TO_FAMILY_MIGRATION));
        if (this.radioGroupForFamilyQue == null) {
            HashMap map = new HashMap();
            map.put(RADIO_BUTTON_ID_YES, "Yes");
            map.put(RADIO_BUTTON_ID_NO, "No");
            map.put(RADIO_BUTTON_ID_NOT_FOUND, LabelConstants.FAMILY_NOT_FOUND_YET);
            this.radioGroupForFamilyQue = MyStaticComponents.getRadioGroup(this, map, false);
        }
        this.bodyLayoutContainer.addView(this.radioGroupForFamilyQue);
    }

    private void setAreaSelectionScreen() {
        this.screenName = AREA_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.areaSpinner == null) {
            String[] strArr = new String[this.areas.size() + 1];
            strArr[0] = "-Select-";
            Iterator<LocationBean> it = this.areas.iterator();
            int i = 1;
            while (it.hasNext()) {
                strArr[i] = it.next().getName();
                i++;
            }
            this.areaSpinner = MyStaticComponents.getSpinner(this, strArr, 0, 3);
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.SELECT_AREA_FOR_FAMILY));
        this.bodyLayoutContainer.addView(this.areaSpinner);
    }

    private void setConfirmationScreen() {
        this.screenName = CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        int checkedRadioButtonId = this.radioGroupForFamilyQue.getCheckedRadioButtonId();
        Integer num = RADIO_BUTTON_ID_YES;
        if (checkedRadioButtonId == num.intValue()) {
            if (this.selectedVillage != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.VILLAGE_MIGRATED_TO)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedVillage.getName()));
            }
            if (this.selectedArea != null) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.AREA_MIGRATED_TO)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedArea.getName()));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CONFORMATION_TO_FAMILY_MIGRATION_TO_SELECTED_AREA)));
        }
        int checkedRadioButtonId2 = this.radioGroupForFamilyQue.getCheckedRadioButtonId();
        Integer num2 = RADIO_BUTTON_ID_NO;
        if (checkedRadioButtonId2 == num2.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.CONFORMATION_TO_FAMILY_NOT_MIGRATED_TO_YOUR_VILLAGE)));
        }
        if (this.radioGroupForConfirmation == null) {
            HashMap map = new HashMap();
            map.put(num, "Yes");
            map.put(num2, "No");
            this.radioGroupForConfirmation = MyStaticComponents.getRadioGroup(this, map, true);
        }
        this.bodyLayoutContainer.addView(this.radioGroupForConfirmation);
    }

    private void addFinalScreen() {
        this.screenName = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        if (this.radioGroupForFamilyQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.SUCCESSFULLY_MIGRATED_IN_A_FAMILY)));
        }
        if (this.radioGroupForFamilyQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.SELECTED_NOT_TO_MIGRATE_IN_A_FAMILY)));
        }
        if (this.radioGroupForFamilyQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_FOUND.intValue()) {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this, UtilBean.getMyLabel(LabelConstants.COME_BACK_WHEN_YOU_FIND_THE_FAMILY)));
        }
    }

    private void finishActivity() {
        if (this.radioGroupForFamilyQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NOT_FOUND.intValue()) {
            finish();
            return;
        }
        this.alertDialog = new MyAlertDialog(this.context, LabelConstants.SUBMIT_THIS_FAMILY_MIGRATION_CONFIRMATION_FORM, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.FamilyMigrationInConfirmationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    FamilyMigrationInConfirmationActivity.this.alertDialog.dismiss();
                    FamilyMigrationInConfirmationActivity.this.createFamilyMigrationInConfirmationBean();
                    FamilyMigrationInConfirmationActivity.this.finish();
                    return;
                }
                FamilyMigrationInConfirmationActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createFamilyMigrationInConfirmationBean() {
        FamilyMigrationInConfirmationDataBean familyMigrationInConfirmationDataBean = new FamilyMigrationInConfirmationDataBean();
        familyMigrationInConfirmationDataBean.setNotificationId(this.notificationMobDataBean.getId());
        familyMigrationInConfirmationDataBean.setMigrationId(this.notificationMobDataBean.getMigrationId());
        familyMigrationInConfirmationDataBean.setFamilyId(this.notificationMobDataBean.getFamilyId());
        if (this.radioGroupForFamilyQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_YES.intValue()) {
            familyMigrationInConfirmationDataBean.setHasMigrationHappened(Boolean.TRUE);
            familyMigrationInConfirmationDataBean.setAreaMigratedTo(Long.valueOf(this.selectedArea.getActualID().longValue()));
        }
        if (this.radioGroupForFamilyQue.getCheckedRadioButtonId() == RADIO_BUTTON_ID_NO.intValue()) {
            familyMigrationInConfirmationDataBean.setHasMigrationHappened(Boolean.FALSE);
        }
        this.migrationService.createFamilyMigrationInConfirmation(familyMigrationInConfirmationDataBean, this.familyMigrationDetailsDataBean);
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
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L9b
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L11
            goto L9b
        L11:
            int r5 = r5.getItemId()
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            if (r5 != r0) goto L9a
            java.lang.String r5 = r4.screenName
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case -811097794: goto L4a;
                case 393535691: goto L3f;
                case 502955265: goto L34;
                case 2070150530: goto L29;
                default: goto L27;
            }
        L27:
            r1 = -1
            goto L53
        L29:
            java.lang.String r0 = "finalScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L32
            goto L27
        L32:
            r1 = 3
            goto L53
        L34:
            java.lang.String r0 = "confirmationScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3d
            goto L27
        L3d:
            r1 = 2
            goto L53
        L3f:
            java.lang.String r0 = "areaSelectionScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L48
            goto L27
        L48:
            r1 = 1
            goto L53
        L4a:
            java.lang.String r0 = "familyInfoScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L53
            goto L27
        L53:
            switch(r1) {
                case 0: goto L94;
                case 1: goto L90;
                case 2: goto L6d;
                case 3: goto L57;
                default: goto L56;
            }
        L56:
            goto L9a
        L57:
            android.widget.RadioGroup r5 = r4.radioGroupForFamilyQue
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.FamilyMigrationInConfirmationActivity.RADIO_BUTTON_ID_NOT_FOUND
            int r0 = r0.intValue()
            if (r5 != r0) goto L69
            r4.setFamilyInfoScreen()
            goto L9a
        L69:
            r4.setConfirmationScreen()
            goto L9a
        L6d:
            android.widget.RadioGroup r5 = r4.radioGroupForFamilyQue
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.FamilyMigrationInConfirmationActivity.RADIO_BUTTON_ID_YES
            int r0 = r0.intValue()
            if (r5 != r0) goto L7e
            r4.setAreaSelectionScreen()
        L7e:
            android.widget.RadioGroup r5 = r4.radioGroupForFamilyQue
            int r5 = r5.getCheckedRadioButtonId()
            java.lang.Integer r0 = com.argusoft.sewa.android.app.activity.FamilyMigrationInConfirmationActivity.RADIO_BUTTON_ID_NO
            int r0 = r0.intValue()
            if (r5 != r0) goto L9a
            r4.setFamilyInfoScreen()
            goto L9a
        L90:
            r4.setFamilyInfoScreen()
            goto L9a
        L94:
            r4.showProcessDialog()
            r4.finish()
        L9a:
            return r2
        L9b:
            r4.navigateToHomeScreen(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FamilyMigrationInConfirmationActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }
}
