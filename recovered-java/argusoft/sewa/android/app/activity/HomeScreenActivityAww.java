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
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;

/* loaded from: classes.dex */
public class HomeScreenActivityAww extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private static String[] items = {LabelConstants.FHS_READ_ONLY_TITLE, LabelConstants.MY_PEOPLE_TITLE, LabelConstants.YOUR_SCHEDULE_TITLE, LabelConstants.DAILY_NUTRITION_TITLE, LabelConstants.TAKE_HOME_RATION_TITLE, LabelConstants.WORK_LOG_TITLE, LabelConstants.ANNOUNCEMENT_TITLE, LabelConstants.LIBRARY_TITLE};
    private static int[] images = {R.drawable.menu_fhs, R.drawable.menu_high_risk_mother_child, R.drawable.menu_schedule, R.drawable.menu_ncd_reg, R.drawable.menu_assign_family, R.drawable.menu_work_status, R.drawable.menu_announcement, R.drawable.menu_library};

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        init();
    }

    private void init() {
        setContentView(R.layout.activity_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        setCardView(this.context, items, images, this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (SharedStructureData.isLogin) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
        intent.setFlags(335544320);
        startActivity(intent);
        finish();
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

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityAww$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityAww.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityAww.this.changeActivity(i);
                HomeScreenActivityAww.this.processDialog.dismiss();
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(int i) {
        SharedStructureData.relatedPropertyHashTable.clear();
        switch (i) {
            case 0:
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) FHSAwwActivity_.class));
                    break;
                }
                break;
            case 1:
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) MyPeopleAwwActivity_.class));
                    break;
                }
                break;
            case 2:
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) NotificationAwwActivity_.class));
                    break;
                }
                break;
            case 3:
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) DailyNutritionActivity_.class));
                    break;
                }
                break;
            case 4:
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) TakeHomeRation_.class));
                    break;
                }
                break;
            case 5:
                if (!this.alertDialogShown) {
                    startActivity(new Intent(this, (Class<?>) WorkLogActivity_.class));
                    break;
                }
                break;
            case 6:
                startActivity(new Intent(this, (Class<?>) AnnouncementActivity_.class));
                break;
            case 7:
                startActivity(new Intent(this, (Class<?>) LibraryActivity_.class));
                break;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityAww.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenActivityAww.this.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }
}
