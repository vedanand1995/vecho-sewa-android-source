package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.databean.AshaEventRejectionDataBean;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class FhwFamilyMigrationConfirmationActivity extends MenuActivity implements View.OnClickListener {
    private static final String FAMILY_DETAILS_SCREEN = "familyDetailsScreen";
    private static final String FINAL_SCREEN = "finalScreen";
    private static final String REJECT_CONFIRMATION_SCREEN = "rejectConfirmationScreen";
    private LinearLayout bodyLayoutContainer;
    private RadioGroup confirmationRadioGroup;
    SewaFhsServiceImpl fhsService;
    FormMetaDataUtil formMetaDataUtil;
    private LinearLayout globalPanel;
    private List<MemberDataBean> memberDataBeanList;
    private RadioGroup rejectConfirmationRadioGroup;
    private String screen;
    private FamilyBean selectedFamily;
    private NotificationMobDataBean selectedNotification;
    SewaServiceImpl sewaService;
    private SharedPreferences sharedPref;
    private static final Integer RADIO_BUTTON_ID_YES = 1;
    private static final Integer RADIO_BUTTON_ID_NO = 2;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        NotificationMobDataBean notificationMobDataBean = (NotificationMobDataBean) new Gson().fromJson(getIntent().getStringExtra(GlobalTypes.NOTIFICATION), NotificationMobDataBean.class);
        this.selectedNotification = notificationMobDataBean;
        FamilyBean familyBeanRetrieveFamilyBeanByActualId = this.fhsService.retrieveFamilyBeanByActualId(notificationMobDataBean.getFamilyId());
        this.selectedFamily = familyBeanRetrieveFamilyBeanByActualId;
        this.memberDataBeanList = this.fhsService.retrieveMemberDataBeansByFamily(familyBeanRetrieveFamilyBeanByActualId.getFamilyId());
        this.sharedPref = PreferenceManager.getDefaultSharedPreferences(this);
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
        setTitle(UtilBean.getTitleText(LabelConstants.FAMILY_MIGRATION_CONFIRMATION));
        setSubTitle(this.selectedFamily.getFamilyId());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_CLOSE_FAMILY_MIGRATION_CONFIRMATION, this, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        showMemberDetails();
    }

    private RadioGroup getRadioGroupYesNo() {
        HashMap map = new HashMap();
        map.put(RADIO_BUTTON_ID_YES, "Yes");
        map.put(RADIO_BUTTON_ID_NO, "No");
        return MyStaticComponents.getRadioGroup(this, map, true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FhwFamilyMigrationConfirmationActivity.onClick(android.view.View):void");
    }

    private void showMemberDetails() {
        showProcessDialog();
        this.screen = FAMILY_DETAILS_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FAMILY_DETAILS));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.FAMILY_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.selectedFamily.getFamilyId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MEMBERS_DETAILS));
        this.bodyLayoutContainer.addView(UtilBean.getMembersListForDisplay(this.context, new FamilyDataBean(this.selectedFamily, this.memberDataBeanList)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.WANT_TO_CONFIRM_THIS_FAMILY_MIGRATION));
        if (this.confirmationRadioGroup == null) {
            this.confirmationRadioGroup = getRadioGroupYesNo();
        }
        this.bodyLayoutContainer.addView(this.confirmationRadioGroup);
        hideProcessDialog();
    }

    private void setRejectConfirmationScreen() {
        this.screen = REJECT_CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.WANT_TO_REJECT_THIS_FAMILY_MIGRATION));
        if (this.rejectConfirmationRadioGroup == null) {
            this.rejectConfirmationRadioGroup = getRadioGroupYesNo();
        }
        this.bodyLayoutContainer.addView(this.rejectConfirmationRadioGroup);
    }

    private void setFinalScreen() {
        this.screen = FINAL_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateSubTitleView(this.context, LabelConstants.FORM_ENTRY_COMPLETED));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, LabelConstants.FORM_ENTRY_COMPLETED_SUCCESSFULLY));
    }

    private void storeAshaEventRejectionForm() {
        AshaEventRejectionDataBean ashaEventRejectionDataBean = new AshaEventRejectionDataBean();
        ashaEventRejectionDataBean.setNotificationId(this.selectedNotification.getId());
        ashaEventRejectionDataBean.setMemberId(this.selectedNotification.getMemberId());
        ashaEventRejectionDataBean.setFamilyId(this.selectedNotification.getFamilyId());
        ashaEventRejectionDataBean.setEventType(this.selectedNotification.getTask());
        ashaEventRejectionDataBean.setRejectedOn(Long.valueOf(new Date().getTime()));
        StringBuilder sb = new StringBuilder(SewaTransformer.loginBean.getUsername());
        sb.append(Calendar.getInstance().getTimeInMillis());
        StoreAnswerBean storeAnswerBean = new StoreAnswerBean();
        storeAnswerBean.setToken(SewaTransformer.loginBean.getUserToken());
        storeAnswerBean.setUserId(SewaTransformer.loginBean.getUserID());
        storeAnswerBean.setChecksum(sb.toString());
        storeAnswerBean.setDateOfMobile(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        storeAnswerBean.setFormFilledUpTime(0L);
        storeAnswerBean.setMorbidityAnswer("-1");
        storeAnswerBean.setNotificationId(-1L);
        storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
        storeAnswerBean.setRelatedInstance("-1");
        storeAnswerBean.setAnswerEntity(FormConstants.FHW_REPORTED_EVENT_REJECTION);
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(sb.toString());
        loggerBean.setDate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        loggerBean.setStatus("P");
        loggerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO.trim());
        loggerBean.setNoOfAttempt(0);
        loggerBean.setBeneficiaryName(this.selectedFamily.getFamilyId() + " - " + UtilBean.getMemberFullName(this.memberDataBeanList.get(0)));
        loggerBean.setTaskName(UtilBean.getMyLabel(LabelConstants.FAMILY_MIGRATION_REJECTION));
        loggerBean.setFormType(FormConstants.FHW_REPORTED_EVENT_REJECTION);
        storeAnswerBean.setAnswer(new Gson().toJson(ashaEventRejectionDataBean));
        this.sewaService.createStoreAnswerBean(storeAnswerBean);
        this.sewaService.createLoggerBean(loggerBean);
        this.sewaService.deleteNotificationByNotificationId(this.selectedNotification.getId());
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
            java.lang.String r0 = r4.screen
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
            java.lang.String r5 = r4.screen
            r5.hashCode()
            int r0 = r5.hashCode()
            r3 = -1
            switch(r0) {
                case 1507253322: goto L3e;
                case 2055447296: goto L33;
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
            java.lang.String r0 = "rejectConfirmationScreen"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L3c
            goto L26
        L3c:
            r1 = 1
            goto L47
        L3e:
            java.lang.String r0 = "familyDetailsScreen"
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
            r4.setRejectConfirmationScreen()
            goto L56
        L4f:
            r4.showMemberDetails()
            goto L56
        L53:
            r4.finish()
        L56:
            return r2
        L57:
            r4.navigateToHomeScreen(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.FhwFamilyMigrationConfirmationActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1004 && i2 == -1) {
            finish();
        }
    }
}
