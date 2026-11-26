package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.LmsCourseListActivity_;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Arrays;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class HomeScreenActivityASHAFacilitator extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private static final int[] images = {R.drawable.incentive, R.drawable.test, R.drawable.menu_lms, R.drawable.menu_lms_report, R.drawable.menu_work_status};
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList("Asha Incentive", LabelConstants.BASELINE_SURVEY, LabelConstants.LEARNING_MANAGEMENT_SYSTEM_TITLE, LabelConstants.LMS_PROGRESS_REPORT_TITLE, LabelConstants.WORK_LOG_TITLE));

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedStructureData.relatedPropertyHashTable.clear();
        this.context = this;
        init();
    }

    private void init() {
        setContentView(R.layout.activity_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        setCardView(this.context, (String[]) this.items.toArray(new String[0]), images, this);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityASHAFacilitator$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHAFacilitator.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityASHAFacilitator homeScreenActivityASHAFacilitator = HomeScreenActivityASHAFacilitator.this;
                homeScreenActivityASHAFacilitator.changeActivity((String) homeScreenActivityASHAFacilitator.items.get(i));
                HomeScreenActivityASHAFacilitator.this.processDialog.dismiss();
            }
        }.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHAFacilitator.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenActivityASHAFacilitator.this.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(String str) {
        SharedStructureData.relatedPropertyHashTable.clear();
        str.hashCode();
        switch (str) {
            case "Asha Incentive":
                startActivity(new Intent(this, (Class<?>) AshaFacilitatorIncentiveFlowActivity_.class));
                break;
            case "ILA Baseline survey":
                String baselineModuleCourseIds = this.techoService.getBaselineModuleCourseIds();
                if (baselineModuleCourseIds != null && !baselineModuleCourseIds.isEmpty()) {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHAFacilitator$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m215x6dde53a8();
                        }
                    });
                    break;
                } else if (Boolean.TRUE.equals(this.techoService.checkIfOfflineAnyFormFilledForFormType(FormConstants.ILA_BASELINE))) {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityASHAFacilitator$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m216x884f4cc7();
                        }
                    });
                    break;
                } else {
                    startActivity(new Intent(this, (Class<?>) BaseLineActivity_.class));
                    break;
                }
            case "Learning Management System":
                startActivity(new Intent(this, (Class<?>) LmsCourseListActivity_.class));
                break;
            case "LMS Progress Report":
                startActivity(new Intent(this, (Class<?>) LmsProgressReportActivity_.class));
                break;
            case "Work Log":
                startActivity(new Intent(this, (Class<?>) WorkLogActivity_.class));
                break;
        }
    }

    /* renamed from: lambda$changeActivity$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHAFacilitator, reason: not valid java name */
    /* synthetic */ void m215x6dde53a8() {
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.BASELINE_SURVEY_DONE));
    }

    /* renamed from: lambda$changeActivity$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHAFacilitator, reason: not valid java name */
    /* synthetic */ void m216x884f4cc7() {
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.BASELINE_SURVEY_PENDING_SYNC));
    }
}
