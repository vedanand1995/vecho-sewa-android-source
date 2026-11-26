package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
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
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class HomeScreenActivityOA extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    Dao<DailyPresenceReport, Integer> dailyPresenceReportBeanDao;
    DailyPresenceReportServiceImpl dailyPresenceReportService;
    SewaServiceImpl sewaService;
    Dao<VersionBean, Integer> versionBeanDao;
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList(LabelConstants.NPCB_MENU_ICON_TITLE, LabelConstants.WORK_STATUS_TITLE));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_npcb), Integer.valueOf(R.drawable.menu_work_status)));

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        int[] iArr = new int[this.images.size()];
        Iterator<Integer> it = this.images.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        setCardView(this.context, (String[]) this.items.toArray(new String[0]), iArr, this);
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

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityOA$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityOA.this.changeActivity(i);
                HomeScreenActivityOA.this.processDialog.dismiss();
                HomeScreenActivityOA.this.setRequestedOrientation(-1);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(int i) {
        SharedStructureData.relatedPropertyHashTable.clear();
        if (i != 0) {
            if (i != 1) {
                return;
            }
            startActivity(new Intent(this, (Class<?>) WorkLogActivity_.class));
        } else {
            checkIfFormIsAccessibleToUser("OA_NPCB");
            if (this.alertDialogShown) {
                return;
            }
            startActivity(new Intent(this, (Class<?>) NPCBScreeningOA_.class));
        }
    }

    public void checkNetworkAvailability() {
        if (!this.sewaService.isOnline()) {
            this.alertDialog = new MyAlertDialog(this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m219x72c741ed(view);
                }
            }, DynamicUtils.BUTTON_OK);
            this.alertDialog.show();
            this.alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.m220x2d3ce26e(dialogInterface);
                }
            });
            return;
        }
        checkGps();
    }

    /* renamed from: lambda$checkNetworkAvailability$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityOA, reason: not valid java name */
    /* synthetic */ void m219x72c741ed(View view) {
        this.alertDialog.dismiss();
    }

    /* renamed from: lambda$checkNetworkAvailability$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityOA, reason: not valid java name */
    /* synthetic */ void m220x2d3ce26e(DialogInterface dialogInterface) {
        this.alertDialog.dismiss();
    }

    public void checkGps() {
        if (SharedStructureData.gps.isLocationProviderEnabled()) {
            return;
        }
        SharedStructureData.gps.showSettingsAlert(this.context);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, GlobalTypes.MSG_CANCEL_APPLICATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }
}
