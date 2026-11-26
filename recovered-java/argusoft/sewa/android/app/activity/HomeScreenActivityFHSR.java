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
public class HomeScreenActivityFHSR extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private String[] items = {LabelConstants.WORK_LOG_TITLE, LabelConstants.LIBRARY_TITLE, LabelConstants.ANNOUNCEMENT_TITLE};
    private int[] images = {R.drawable.menu_work_status, R.drawable.menu_library, R.drawable.menu_announcement};

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
        setCardView(this.context, this.items, this.images, this);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityFHSR$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityFHSR.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityFHSR.this.changeActivity(i);
                HomeScreenActivityFHSR.this.processDialog.dismiss();
            }
        }.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityFHSR.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenActivityFHSR.this.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(int i) {
        SharedStructureData.relatedPropertyHashTable.clear();
        if (i == 0) {
            startActivity(new Intent(this, (Class<?>) WorkLogActivity_.class));
        } else if (i == 1) {
            startActivity(new Intent(this, (Class<?>) LibraryActivity_.class));
        } else {
            if (i != 2) {
                return;
            }
            startActivity(new Intent(this, (Class<?>) AnnouncementActivity_.class));
        }
    }
}
