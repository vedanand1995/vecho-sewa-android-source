package com.argusoft.sewa.android.app.activity;

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
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class HomeScreenActivityLabTechnician extends HomeScreenMenuActivity implements View.OnClickListener, AdapterView.OnItemClickListener {
    private String[] items = {LabelConstants.OPD_TITLE};
    private int[] images = {R.drawable.menu_lab_test};

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedStructureData.relatedPropertyHashTable.clear();
        this.context = this;
        setContentView(R.layout.activity_home_screen);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setActionBarDesign();
        setNavigationView();
        setCardView(this.context, this.items, this.images, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(int i) {
        SharedStructureData.relatedPropertyHashTable.clear();
        if (i == 0) {
            startActivity(new Intent(this, (Class<?>) OPDFacilityActivity_.class));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(GlobalTypes.MSG_CANCEL_APPLICATION), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityLabTechnician.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeScreenActivityLabTechnician.this.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == -1) {
            if (SewaTransformer.loginBean != null) {
                try {
                    SewaTransformer.loginBean.setLoggedIn(false);
                    SewaTransformer.loginBean.setHidden(false);
                    this.loginBeanDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
                } catch (SQLException e) {
                    Logger.getLogger(HomeScreenActivityFHW.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                }
                this.alertDialog.dismiss();
            }
            finish();
            return;
        }
        if (id == -2) {
            try {
                SewaTransformer.loginBean.setLoggedIn(true);
                SewaTransformer.loginBean.setHidden(true);
                this.loginBeanDao.update((Dao<LoginBean, Integer>) SewaTransformer.loginBean);
            } catch (SQLException e2) {
                Logger.getLogger(HomeScreenActivityFHW.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            this.alertDialog.dismiss();
            finish();
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityLabTechnician$2] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityLabTechnician.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityLabTechnician.this.changeActivity(i);
                HomeScreenActivityLabTechnician.this.processDialog.dismiss();
            }
        }.start();
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.menu_refresh).setVisible(false);
        return true;
    }
}
