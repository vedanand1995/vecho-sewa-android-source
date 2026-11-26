package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.DailyPresenceReportServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
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
public class HomeScreenActivityRBSK extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private int[] array;
    Dao<DailyPresenceReport, Integer> dailyPresenceReportBeanDao;
    DailyPresenceReportServiceImpl dailyPresenceReportService;
    private int markPresenceIconIndex;
    SewaServiceImpl sewaService;
    Dao<VersionBean, Integer> versionBeanDao;
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList(LabelConstants.MARK_PRESENCE, LabelConstants.HEAD_TO_TOE_SCREENING_TITLE, LabelConstants.WORK_LOG_TITLE, LabelConstants.AMRUTPAN_SUPERVISION));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_absent), Integer.valueOf(R.drawable.menu_head_to_toe_screening), Integer.valueOf(R.drawable.menu_schedule), Integer.valueOf(R.drawable.menu_reverification)));

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.markPresenceIconIndex = this.items.indexOf(LabelConstants.MARK_PRESENCE);
        setContentView(R.layout.activity_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        this.array = new int[this.images.size()];
        Iterator<Integer> it = this.images.iterator();
        int i = 0;
        while (it.hasNext()) {
            this.array[i] = it.next().intValue();
            i++;
        }
        setCardView(this.context, (String[]) this.items.toArray(new String[0]), this.array, this);
        checkLastActivity();
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.menu_refresh).setVisible(true);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        super.onPause();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityRBSK.this.changeActivity(i);
                HomeScreenActivityRBSK.this.processDialog.dismiss();
                HomeScreenActivityRBSK.this.setRequestedOrientation(-1);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(int i) {
        SharedStructureData.relatedPropertyHashTable.clear();
        if (i == 0) {
            checkNetworkAvailability();
            return;
        }
        if (i == 1) {
            startActivity(new Intent(this, (Class<?>) HeadToToeScreeningActivity_.class));
        } else if (i == 2) {
            startActivity(new Intent(this, (Class<?>) RBSKWorkStatusActivity_.class));
        } else {
            if (i != 3) {
                return;
            }
            startActivity(new Intent(this, (Class<?>) AmrutpanSupervisionMOActivity_.class));
        }
    }

    private void checkLastActivity() {
        try {
            this.dailyPresenceReportService.removePreviousReport();
            List<DailyPresenceReport> listQueryForAll = this.dailyPresenceReportBeanDao.queryForAll();
            if (listQueryForAll != null && !listQueryForAll.isEmpty() && listQueryForAll.get(0).getEndTime() == null) {
                SharedStructureData.RBSK_ATTENDANCE_IS_MARKED_PRESENCE = true;
                this.array[this.markPresenceIconIndex] = R.drawable.menu_present;
                setTimer();
            } else {
                if (SharedStructureData.rbskAttendanceTimer != null) {
                    SharedStructureData.rbskAttendanceTimer.cancel();
                }
                this.array[this.markPresenceIconIndex] = R.drawable.menu_absent;
                SharedStructureData.RBSK_ATTENDANCE_IS_MARKED_PRESENCE = false;
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    public void checkNetworkAvailability() {
        if (!this.sewaService.isOnline()) {
            this.alertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HomeScreenActivityRBSK.this.alertDialog.dismiss();
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
            this.alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    HomeScreenActivityRBSK.this.alertDialog.dismiss();
                }
            });
            return;
        }
        checkGps();
    }

    public void checkGps() {
        if (!SharedStructureData.gps.isLocationProviderEnabled()) {
            SharedStructureData.gps.showSettingsAlert(this.context);
        } else {
            setVisit();
        }
    }

    public void setVisit() {
        if (Boolean.FALSE.equals(Boolean.valueOf(SharedStructureData.RBSK_ATTENDANCE_IS_MARKED_PRESENCE))) {
            if (this.dailyPresenceReportService.createReport().equals(Boolean.TRUE)) {
                SharedStructureData.RBSK_ATTENDANCE_IS_MARKED_PRESENCE = true;
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ((ImageView) ((CardView) ((LinearLayout) HomeScreenActivityRBSK.this.adapter.getLayoutAtPosition(HomeScreenActivityRBSK.this.markPresenceIconIndex)).getChildAt(0)).findViewById(R.id.card_imageView)).setImageResource(R.drawable.menu_present);
                        HomeScreenActivityRBSK.this.setTimer();
                    }
                });
                return;
            }
            return;
        }
        if (this.dailyPresenceReportService.closeReport().equals(Boolean.TRUE)) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK.5
                @Override // java.lang.Runnable
                public void run() {
                    SharedStructureData.rbskAttendanceTimer.cancel();
                    ((ImageView) ((CardView) ((LinearLayout) HomeScreenActivityRBSK.this.adapter.getLayoutAtPosition(HomeScreenActivityRBSK.this.markPresenceIconIndex)).getChildAt(0)).findViewById(R.id.card_imageView)).setImageResource(R.drawable.menu_absent);
                }
            });
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, GlobalTypes.MSG_CANCEL_APPLICATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenActivityRBSK.this.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimer() {
        if (SharedStructureData.rbskAttendanceTimer == null) {
            SharedStructureData.rbskAttendanceTimer = new Timer();
            SharedStructureData.rbskAttendanceTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityRBSK.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    HomeScreenActivityRBSK.this.dailyPresenceReportService.addLocations();
                }
            }, 0L, UtilBean.HOUR_LONG_VALUE);
        }
    }
}
