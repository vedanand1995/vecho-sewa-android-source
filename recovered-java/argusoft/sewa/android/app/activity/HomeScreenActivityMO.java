package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class HomeScreenActivityMO extends HomeScreenMenuActivity implements AdapterView.OnItemClickListener {
    private final LinkedList<String> items = new LinkedList<>(Arrays.asList(LabelConstants.HIGH_RISK_WOMEN_AND_CHILD_TITLE, LabelConstants.WORK_LOG_TITLE));
    private final LinkedList<Integer> images = new LinkedList<>(Arrays.asList(Integer.valueOf(R.drawable.menu_high_risk_mother_child), Integer.valueOf(R.drawable.menu_work_status)));

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedStructureData.relatedPropertyHashTable.clear();
        init();
    }

    private void init() {
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

    /* JADX WARN: Type inference failed for: r1v3, types: [com.argusoft.sewa.android.app.activity.HomeScreenActivityMO$1] */
    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long j) {
        this.processDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
        this.processDialog.show();
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityMO.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HomeScreenActivityMO.this.changeActivity(i);
                HomeScreenActivityMO.this.processDialog.dismiss();
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
            if (this.alertDialogShown) {
                return;
            }
            startActivity(new Intent(this, (Class<?>) HighRiskPregnancyActivity_.class));
        }
    }
}
