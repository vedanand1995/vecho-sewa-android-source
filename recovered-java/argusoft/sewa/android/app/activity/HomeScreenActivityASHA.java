package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.DueList.DueListActivity_;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.LmsCourseListActivity_;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Arrays;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class HomeScreenActivityASHA extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList(LabelConstants.FAMILY_HEALTH_SURVEY_TITLE, LabelConstants.MY_PEOPLE_ASHA_TITLE, LabelConstants.YOUR_SCHEDULE_TITLE, LabelConstants.HIGH_RISK_BENEFICIARIES_TITLE, LabelConstants.LEARNING_MANAGEMENT_SYSTEM_TITLE, LabelConstants.LMS_PROGRESS_REPORT_TITLE, LabelConstants.LIBRARY_TITLE, LabelConstants.ANNOUNCEMENT_TITLE, LabelConstants.WORK_REGISTER_TITLE, LabelConstants.WORK_STATUS_TITLE, LabelConstants.ABHA_NUMBER, LabelConstants.INCENTIVE, LabelConstants.NPCB_MENU_ICON_TITLE, LabelConstants.DUE_LIST, LabelConstants.CAMPAIGN_IMMUNIZATION, LabelConstants.LAB_TEST_SCREENING, LabelConstants.BASELINE_SURVEY));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_fhs), Integer.valueOf(R.drawable.menu_my_people), Integer.valueOf(R.drawable.menu_schedule), Integer.valueOf(R.drawable.menu_high_risk_mother_child), Integer.valueOf(R.drawable.menu_lms), Integer.valueOf(R.drawable.menu_lms_report), Integer.valueOf(R.drawable.menu_library), Integer.valueOf(R.drawable.menu_announcement), Integer.valueOf(R.drawable.menu_work_report), Integer.valueOf(R.drawable.menu_work_status), Integer.valueOf(R.drawable.ic_medical_card), Integer.valueOf(R.drawable.incentive), Integer.valueOf(R.drawable.menu_npcb), Integer.valueOf(R.drawable.menu_schedule), Integer.valueOf(R.drawable.vhnd), Integer.valueOf(R.drawable.test), Integer.valueOf(R.drawable.menu_library)));

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedStructureData.relatedPropertyHashTable.clear();
        this.context = this;
        boolean booleanExtra = getIntent().getBooleanExtra("isFromLogin", false);
        init();
        showYearEndSummaryAlert(booleanExtra);
    }

    private void init() {
        setContentView(R.layout.activity_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        if (isShowYearEndSummaryFeatureAvailable()) {
            this.items.add(0, LabelConstants.SHOW_YEAR_END_SUMMARY);
            this.images.add(0, Integer.valueOf(R.drawable.ic_trophy));
        }
        int[] iArr = new int[this.images.size()];
        for (int i = 0; i < this.images.size(); i++) {
            iArr[i] = this.images.get(i).intValue();
        }
        setCardView(this.context, (String[]) this.items.toArray(new String[0]), iArr, this);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityASHA$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHA.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityASHA homeScreenActivityASHA = HomeScreenActivityASHA.this;
                homeScreenActivityASHA.changeActivity((String) homeScreenActivityASHA.items.get(i));
                HomeScreenActivityASHA.this.processDialog.dismiss();
            }
        }.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHA.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenActivityASHA.this.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(String str) {
        SharedStructureData.relatedPropertyHashTable.clear();
        str.hashCode();
        switch (str) {
            case "Year End Summary":
                showYearEndSummaryAlert(this, String.valueOf(SewaTransformer.loginBean.getUserID()));
                break;
            case "Lab Test Screening":
                startActivity(new Intent(this, (Class<?>) LabTestScreeningActivity_.class));
                break;
            case "ILA Baseline survey":
                String baselineModuleCourseIds = this.techoService.getBaselineModuleCourseIds();
                if (baselineModuleCourseIds != null && !baselineModuleCourseIds.isEmpty()) {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHA$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m213xc72808a4();
                        }
                    });
                    break;
                } else if (Boolean.TRUE.equals(this.techoService.checkIfOfflineAnyFormFilledForFormType(FormConstants.ILA_BASELINE))) {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHA$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m214xbab78ce5();
                        }
                    });
                    break;
                } else {
                    startActivity(new Intent(this, (Class<?>) BaseLineActivity_.class));
                    break;
                }
                break;
            case "Learning Management System":
                startActivity(new Intent(this, (Class<?>) LmsCourseListActivity_.class));
                break;
            case "NPCB Screening":
                checkIfFormIsAccessibleToUser("ASHA_NPCB");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) NPCBScreening_.class));
                    break;
                }
                break;
            case "High Risk Beneficiaries":
                checkIfFormIsAccessibleToUser(FormConstants.FORM_TYPE_ASHA_RCH);
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) HighRiskAshaActivity_.class));
                    break;
                }
                break;
            case "LMS Progress Report":
                startActivity(new Intent(this, (Class<?>) LmsProgressReportActivity_.class));
                break;
            case "Incentive":
                startActivity(new Intent(this, (Class<?>) IncentivesReportActivity_.class));
                break;
            case "Abha Number":
                Intent intent = new Intent(this, (Class<?>) AbhaNumberActivity_.class);
                intent.putExtra(RelatedPropertyNameConstants.ROLE, "ASHA");
                startActivity(intent);
                break;
            case "Announcement":
                startActivity(new Intent(this, (Class<?>) AnnouncementActivity_.class));
                break;
            case "Family Health Survey":
                checkIfFormIsAccessibleToUser("ASHA_FHS");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) FHSAshaActivity_.class));
                    break;
                }
                break;
            case "Work Status":
                startActivity(new Intent(this, (Class<?>) WorkStatusActivity_.class));
                break;
            case "Work Register":
                startActivity(new Intent(this, (Class<?>) WorkRegisterAshaActivity_.class));
                break;
            case "Campaign Immunisation":
                startActivity(new Intent(this, (Class<?>) RoutineImmunizationAshaActivity_.class));
                break;
            case "My People ASHA":
                checkIfFormIsAccessibleToUser(FormConstants.FORM_TYPE_ASHA_RCH);
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) MyPeopleAshaActivity_.class));
                    break;
                }
                break;
            case "Library":
                startActivity(new Intent(this, (Class<?>) LibraryActivity_.class));
                break;
            case "Due List":
                startActivity(new Intent(this, (Class<?>) DueListActivity_.class));
                break;
            case "Your Schedule":
                checkIfFormIsAccessibleToUser(FormConstants.FORM_TYPE_ASHA_RCH);
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) NotificationAshaActivity_.class));
                    break;
                }
                break;
        }
    }

    /* renamed from: lambda$changeActivity$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHA, reason: not valid java name */
    /* synthetic */ void m213xc72808a4() {
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.BASELINE_SURVEY_DONE));
    }

    /* renamed from: lambda$changeActivity$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHA, reason: not valid java name */
    /* synthetic */ void m214xbab78ce5() {
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.BASELINE_SURVEY_PENDING_SYNC));
    }
}
