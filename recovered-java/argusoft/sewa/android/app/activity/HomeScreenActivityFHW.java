package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.LmsCourseListActivity_;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class HomeScreenActivityFHW extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    SewaServiceImpl sewaService;
    Dao<VersionBean, Integer> versionBeanDao;
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList("CFHC", LabelConstants.DATA_QUALITY_TITLE, LabelConstants.ASSIGN_FAMILY_TITLE, LabelConstants.MY_PEOPLE_TITLE, LabelConstants.YOUR_SCHEDULE_TITLE, LabelConstants.HIGH_RISK_WOMEN_AND_CHILD_TITLE, LabelConstants.NPCB_MENU_ICON_TITLE, LabelConstants.LEARNING_MANAGEMENT_SYSTEM_TITLE, LabelConstants.LMS_PROGRESS_REPORT_TITLE, LabelConstants.LIBRARY_TITLE, LabelConstants.ANNOUNCEMENT_TITLE, LabelConstants.WORK_REGISTER_TITLE, LabelConstants.WORK_STATUS_TITLE, LabelConstants.ABHA_NUMBER, "Asha Incentive", LabelConstants.VERY_HIGH_RISK_WOMEN, LabelConstants.NAMOSHREE_TITLE, LabelConstants.CAMPAIGN_IMMUNIZATION, LabelConstants.IFA_SUPPLEMENTATION, "Surveillance"));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_fhs), Integer.valueOf(R.drawable.menu_reverification), Integer.valueOf(R.drawable.menu_assign_family), Integer.valueOf(R.drawable.menu_my_people), Integer.valueOf(R.drawable.menu_schedule), Integer.valueOf(R.drawable.menu_high_risk_mother_child), Integer.valueOf(R.drawable.menu_npcb), Integer.valueOf(R.drawable.menu_lms), Integer.valueOf(R.drawable.menu_lms_report), Integer.valueOf(R.drawable.menu_library), Integer.valueOf(R.drawable.menu_announcement), Integer.valueOf(R.drawable.menu_work_report), Integer.valueOf(R.drawable.menu_work_status), Integer.valueOf(R.drawable.ic_medical_card), Integer.valueOf(R.drawable.incentive), Integer.valueOf(R.drawable.menu_preg_woman), Integer.valueOf(R.drawable.menu_namoshree), Integer.valueOf(R.drawable.vhnd), Integer.valueOf(R.drawable.menu_work_report), Integer.valueOf(R.drawable.menu_vbd)));

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
        if (isAdolescentFeatureReleased().booleanValue()) {
            this.items.add(LabelConstants.ADOLESCENT_HEALTH_SCREENING_TITLE);
            this.images.add(Integer.valueOf(R.drawable.ic_adolescent));
        }
        int[] iArr = new int[this.images.size()];
        for (int i = 0; i < this.images.size(); i++) {
            iArr[i] = this.images.get(i).intValue();
        }
        setCardView(this.context, (String[]) this.items.toArray(new String[0]), iArr, this);
    }

    private Boolean isAdolescentFeatureReleased() {
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
            if (listQueryForEq != null && !listQueryForEq.isEmpty() && listQueryForEq.get(0).getValue().contains(GlobalTypes.ADOLESCENT_FEATURE)) {
                return true;
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityFHW$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityFHW.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityFHW homeScreenActivityFHW = HomeScreenActivityFHW.this;
                homeScreenActivityFHW.changeActivity((String) homeScreenActivityFHW.items.get(i));
                HomeScreenActivityFHW.this.processDialog.dismiss();
            }
        }.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityFHW$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.logoutAlertDialogClick(view);
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
            case "Asha Incentive":
                startActivity(new Intent(this, (Class<?>) FHWIncentiveFlowActivity_.class));
                break;
            case "Learning Management System":
                startActivity(new Intent(this, (Class<?>) LmsCourseListActivity_.class));
                break;
            case "NPCB Screening":
                startActivity(new Intent(this, (Class<?>) NPCBScreeningFhw_.class));
                break;
            case "Namoshree":
                startActivity(new Intent(this, (Class<?>) NamoshreeActivity_.class));
                break;
            case "LMS Progress Report":
                startActivity(new Intent(this, (Class<?>) LmsProgressReportActivity_.class));
                break;
            case "Data Quality":
                checkIfFormIsAccessibleToUser("FHS");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) DataQualityActivity_.class));
                    break;
                }
                break;
            case "My People":
                if (!SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHW)) {
                    checkIfFormIsAccessibleToUser(FormConstants.FORM_TYPE_RCH);
                }
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) MyPeopleActivity_.class));
                    break;
                }
                break;
            case "IFA Supplementation":
                startActivity(new Intent(this, (Class<?>) IFASupplementationToSchoolActivity_.class));
                break;
            case "CFHC":
                checkIfFormIsAccessibleToUser("FHS");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) FHSActivity_.class));
                    break;
                }
                break;
            case "High Risk Women & Child":
                checkIfFormIsAccessibleToUser(FormConstants.FORM_TYPE_RCH);
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) HighRiskPregnancyActivity_.class));
                    break;
                }
                break;
            case "Abha Number":
                Intent intent = new Intent(this, (Class<?>) AbhaNumberActivity_.class);
                intent.putExtra(RelatedPropertyNameConstants.ROLE, GlobalTypes.USER_ROLE_FHW);
                startActivity(intent);
                break;
            case "Announcement":
                startActivity(new Intent(this, (Class<?>) AnnouncementActivity_.class));
                break;
            case "Surveillance":
                Intent intent2 = new Intent(this, (Class<?>) VBDSActivity_.class);
                intent2.putExtra(RelatedPropertyNameConstants.ROLE, GlobalTypes.USER_ROLE_FHW);
                startActivity(intent2);
                break;
            case "Work Status":
                startActivity(new Intent(this, (Class<?>) WorkStatusActivity_.class));
                break;
            case "Work Register":
                startActivity(new Intent(this, (Class<?>) WorkRegisterActivity_.class));
                break;
            case "Campaign Immunisation":
                startActivity(new Intent(this, (Class<?>) RoutineImmunizationActivity_.class));
                break;
            case "Library":
                startActivity(new Intent(this, (Class<?>) LibraryActivity_.class));
                break;
            case "Your Schedule":
                if (!SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHW)) {
                    checkIfFormIsAccessibleToUser(FormConstants.FORM_TYPE_RCH);
                }
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) NotificationActivity_.class));
                    break;
                }
                break;
            case "Assign Family":
                checkIfFormIsAccessibleToUser("FHS");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) AssignFamilyActivity_.class));
                    break;
                }
                break;
            case "Adolescent Health Screening":
                startActivity(new Intent(this, (Class<?>) AdolescentEventNotificationActivity_.class));
                break;
            case "Very High Risk Women":
                startActivity(new Intent(this, (Class<?>) VeryHighRiskPregnancyActivity_.class));
                break;
        }
    }
}
