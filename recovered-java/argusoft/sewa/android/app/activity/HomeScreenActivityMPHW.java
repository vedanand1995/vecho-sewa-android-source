package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.LmsCourseListActivity_;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Arrays;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class HomeScreenActivityMPHW extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList("CFHC", LabelConstants.DATA_QUALITY_TITLE, LabelConstants.ASSIGN_FAMILY_TITLE, LabelConstants.MY_PEOPLE_TITLE, LabelConstants.YOUR_SCHEDULE_TITLE, LabelConstants.NPCB_MENU_ICON_TITLE, LabelConstants.LEARNING_MANAGEMENT_SYSTEM_TITLE, LabelConstants.LMS_PROGRESS_REPORT_TITLE, LabelConstants.LIBRARY_TITLE, LabelConstants.ANNOUNCEMENT_TITLE, LabelConstants.WORK_REGISTER_TITLE, LabelConstants.WORK_STATUS_TITLE, LabelConstants.ABHA_NUMBER, "Surveillance"));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_fhs), Integer.valueOf(R.drawable.menu_reverification), Integer.valueOf(R.drawable.menu_assign_family), Integer.valueOf(R.drawable.menu_my_people), Integer.valueOf(R.drawable.menu_schedule), Integer.valueOf(R.drawable.menu_npcb), Integer.valueOf(R.drawable.menu_lms), Integer.valueOf(R.drawable.menu_lms_report), Integer.valueOf(R.drawable.menu_library), Integer.valueOf(R.drawable.menu_announcement), Integer.valueOf(R.drawable.menu_work_report), Integer.valueOf(R.drawable.menu_work_status), Integer.valueOf(R.drawable.ic_medical_card), Integer.valueOf(R.drawable.menu_vbd)));

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

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityMPHW$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityMPHW.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityMPHW homeScreenActivityMPHW = HomeScreenActivityMPHW.this;
                homeScreenActivityMPHW.changeActivity((String) homeScreenActivityMPHW.items.get(i));
                HomeScreenActivityMPHW.this.processDialog.dismiss();
            }
        }.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityMPHW$$ExternalSyntheticLambda0
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
            case "Learning Management System":
                startActivity(new Intent(this, (Class<?>) LmsCourseListActivity_.class));
                break;
            case "NPCB Screening":
                startActivity(new Intent(this, (Class<?>) NPCBScreeningFhw_.class));
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
                startActivity(new Intent(this, (Class<?>) MyPeopleActivity_.class));
                break;
            case "CFHC":
                checkIfFormIsAccessibleToUser("FHS");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) FHSActivity_.class));
                    break;
                }
                break;
            case "Abha Number":
                Intent intent = new Intent(this, (Class<?>) AbhaNumberActivity_.class);
                intent.putExtra(RelatedPropertyNameConstants.ROLE, GlobalTypes.USER_ROLE_MPHW);
                startActivity(intent);
                break;
            case "Announcement":
                startActivity(new Intent(this, (Class<?>) AnnouncementActivity_.class));
                break;
            case "Surveillance":
                Intent intent2 = new Intent(this, (Class<?>) VBDSActivity_.class);
                intent2.putExtra(RelatedPropertyNameConstants.ROLE, GlobalTypes.USER_ROLE_MPHW);
                startActivity(intent2);
                break;
            case "Work Status":
                startActivity(new Intent(this, (Class<?>) WorkStatusActivity_.class));
                break;
            case "Work Register":
                startActivity(new Intent(this, (Class<?>) WorkRegisterActivity_.class));
                break;
            case "Library":
                startActivity(new Intent(this, (Class<?>) LibraryActivity_.class));
                break;
            case "Your Schedule":
                startActivity(new Intent(this, (Class<?>) NotificationActivity_.class));
                break;
            case "Assign Family":
                checkIfFormIsAccessibleToUser("FHS");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) AssignFamilyActivity_.class));
                    break;
                }
                break;
        }
    }
}
