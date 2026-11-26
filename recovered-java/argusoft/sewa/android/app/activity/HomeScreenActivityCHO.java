package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.DailyPresenceReportServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.lms.LmsCourseListActivity_;
import com.argusoft.sewa.android.app.model.DailyPresenceReport;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class HomeScreenActivityCHO extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private int[] array;
    Dao<DailyPresenceReport, Integer> dailyPresenceReportBeanDao;
    DailyPresenceReportServiceImpl dailyPresenceReportService;
    private int markPresenceIconIndex;
    SewaServiceImpl sewaService;
    Dao<VersionBean, Integer> versionBeanDao;
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList(LabelConstants.MARK_PRESENCE_AT_HWC_TITLE, LabelConstants.HIGH_RISK_WOMEN_AND_CHILD_TITLE, LabelConstants.LEARNING_MANAGEMENT_SYSTEM_TITLE, LabelConstants.LMS_PROGRESS_REPORT_TITLE, LabelConstants.LIBRARY_TITLE, LabelConstants.ANNOUNCEMENT_TITLE, LabelConstants.WORK_REGISTER_TITLE, LabelConstants.WORK_STATUS_TITLE, LabelConstants.ABHA_NUMBER, LabelConstants.NPCB_MENU_ICON_TITLE, LabelConstants.LAB_TEST_SCREENING, LabelConstants.FILARIASIS_CAMPAIGN, LabelConstants.LEPROSY_SURVEY));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_absent), Integer.valueOf(R.drawable.menu_high_risk_mother_child), Integer.valueOf(R.drawable.menu_lms), Integer.valueOf(R.drawable.menu_lms_report), Integer.valueOf(R.drawable.menu_library), Integer.valueOf(R.drawable.menu_announcement), Integer.valueOf(R.drawable.menu_work_report), Integer.valueOf(R.drawable.menu_work_status), Integer.valueOf(R.drawable.ic_medical_card), Integer.valueOf(R.drawable.menu_npcb), Integer.valueOf(R.drawable.test), Integer.valueOf(R.drawable.menu_ncd_reg), Integer.valueOf(R.drawable.vhnd)));

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedStructureData.relatedPropertyHashTable.clear();
        this.context = this;
        this.markPresenceIconIndex = this.items.indexOf(LabelConstants.MARK_PRESENCE_AT_HWC_TITLE);
        init();
        checkLastActivity();
    }

    private void init() {
        setContentView(R.layout.activity_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        if (isAdolescentFeatureReleased().booleanValue()) {
            this.items.add(LabelConstants.ADOLESCENT_HEALTH_SCREENING_TITLE);
            this.images.add(Integer.valueOf(R.drawable.ic_adolescent));
        }
        this.array = new int[this.images.size()];
        Iterator<Integer> it = this.images.iterator();
        int i = 0;
        while (it.hasNext()) {
            this.array[i] = it.next().intValue();
            i++;
        }
        setCardView(this.context, (String[]) this.items.toArray(new String[0]), this.array, this);
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

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityCHO.this.changeActivity(i);
                HomeScreenActivityCHO.this.processDialog.dismiss();
            }
        }.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenActivityCHO.this.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(int i) {
        SharedStructureData.relatedPropertyHashTable.clear();
        switch (i) {
            case 0:
                checkNetworkAvailability();
                break;
            case 1:
                checkIfFormIsAccessibleToUser("CHO");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) HighRiskPregnancyActivity_.class));
                    break;
                }
                break;
            case 2:
                startActivity(new Intent(this, (Class<?>) LmsCourseListActivity_.class));
                break;
            case 3:
                startActivity(new Intent(this, (Class<?>) LmsProgressReportActivity_.class));
                break;
            case 4:
                startActivity(new Intent(this, (Class<?>) LibraryActivity_.class));
                break;
            case 5:
                startActivity(new Intent(this, (Class<?>) AnnouncementActivity_.class));
                break;
            case 6:
                startActivity(new Intent(this, (Class<?>) WorkRegisterChoActivity_.class));
                break;
            case 7:
                startActivity(new Intent(this, (Class<?>) WorkStatusActivity_.class));
                break;
            case 8:
                Intent intent = new Intent(this, (Class<?>) AbhaNumberActivity_.class);
                intent.putExtra(RelatedPropertyNameConstants.ROLE, "CHO");
                startActivity(intent);
                break;
            case 9:
                checkIfFormIsAccessibleToUser("CHO_NPCB");
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) NPCBScreeningCHO_.class));
                    break;
                }
                break;
            case 10:
                startActivity(new Intent(this, (Class<?>) LabTestScreeningActivity_.class));
                break;
            case 11:
                startActivity(new Intent(this, (Class<?>) FilariasisCampaignActivity_.class));
                break;
            case 12:
                startActivity(new Intent(this, (Class<?>) LeprosySurveyActivity_.class));
                break;
            case 13:
                startActivity(new Intent(this, (Class<?>) AdolescentEventNotificationActivity_.class));
                break;
        }
    }

    private void checkLastActivity() {
        try {
            this.dailyPresenceReportService.removePreviousReport();
            List<DailyPresenceReport> listQueryForAll = this.dailyPresenceReportBeanDao.queryForAll();
            if (listQueryForAll != null && !listQueryForAll.isEmpty() && listQueryForAll.get(0).getEndTime() == null) {
                SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE = true;
                this.array[this.markPresenceIconIndex] = R.drawable.menu_present;
                setTimer();
            } else {
                if (SharedStructureData.choAttendanceTimer != null) {
                    SharedStructureData.choAttendanceTimer.cancel();
                }
                this.array[this.markPresenceIconIndex] = R.drawable.menu_absent;
                SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE = false;
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    public void checkNetworkAvailability() {
        if (!this.sewaService.isOnline()) {
            this.alertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m217xe620cfcf(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
            this.alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.m218x7a5f3f6e(dialogInterface);
                }
            });
            return;
        }
        checkGps();
    }

    /* renamed from: lambda$checkNetworkAvailability$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityCHO, reason: not valid java name */
    /* synthetic */ void m217xe620cfcf(View view) {
        this.alertDialog.dismiss();
    }

    /* renamed from: lambda$checkNetworkAvailability$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityCHO, reason: not valid java name */
    /* synthetic */ void m218x7a5f3f6e(DialogInterface dialogInterface) {
        this.alertDialog.dismiss();
    }

    public void checkGps() {
        if (!SharedStructureData.gps.isLocationProviderEnabled()) {
            SharedStructureData.gps.showSettingsAlert(this.context);
        } else {
            setVisit();
        }
    }

    public void setVisit() {
        if (Boolean.FALSE.equals(Boolean.valueOf(SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE))) {
            if (this.dailyPresenceReportService.createReport().equals(Boolean.TRUE)) {
                SharedStructureData.CHO_ATTENDANCE_IS_MARKED_PRESENCE = true;
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ((ImageView) ((CardView) ((LinearLayout) HomeScreenActivityCHO.this.adapter.getLayoutAtPosition(HomeScreenActivityCHO.this.markPresenceIconIndex)).getChildAt(0)).findViewById(R.id.card_imageView)).setImageResource(R.drawable.menu_present);
                        HomeScreenActivityCHO.this.setTimer();
                    }
                });
                return;
            }
            return;
        }
        if (this.dailyPresenceReportService.closeReport().equals(Boolean.TRUE)) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO.4
                @Override // java.lang.Runnable
                public void run() {
                    SharedStructureData.choAttendanceTimer.cancel();
                    ((ImageView) ((CardView) ((LinearLayout) HomeScreenActivityCHO.this.adapter.getLayoutAtPosition(HomeScreenActivityCHO.this.markPresenceIconIndex)).getChildAt(0)).findViewById(R.id.card_imageView)).setImageResource(R.drawable.menu_absent);
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 111) {
            checkGps();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimer() {
        if (SharedStructureData.choAttendanceTimer == null) {
            SharedStructureData.choAttendanceTimer = new Timer();
            SharedStructureData.choAttendanceTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityCHO.5
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    HomeScreenActivityCHO.this.dailyPresenceReportService.addLocations();
                }
            }, 0L, UtilBean.HOUR_LONG_VALUE);
        }
    }
}
