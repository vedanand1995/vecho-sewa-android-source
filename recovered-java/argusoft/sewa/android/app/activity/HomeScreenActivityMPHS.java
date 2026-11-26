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
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.j256.ormlite.dao.Dao;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class HomeScreenActivityMPHS extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    SewaServiceImpl sewaService;
    Dao<VersionBean, Integer> versionBeanDao;
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList(LabelConstants.LAB_TEST, LabelConstants.CHLORINATION_STATUS));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_lab_test), Integer.valueOf(R.drawable.menu_vbd)));

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

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityMPHS$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityMPHS.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityMPHS.this.changeActivity(i);
                HomeScreenActivityMPHS.this.processDialog.dismiss();
                HomeScreenActivityMPHS.this.setRequestedOrientation(-1);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeActivity(int i) {
        SharedStructureData.relatedPropertyHashTable.clear();
        if (i == 0) {
            if (this.sewaService.isOnline()) {
                startActivity(new Intent(this, (Class<?>) LabTestActivity_.class));
            }
        } else if (i == 1) {
            startActivity(new Intent(this, (Class<?>) ChlorinationStatusActivity_.class));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this, GlobalTypes.MSG_CANCEL_APPLICATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityMPHS$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.logoutAlertDialogClick(view);
            }
        }, DynamicUtils.BUTTON_HIDE_LOGOUT);
        this.alertDialog.show();
    }
}
