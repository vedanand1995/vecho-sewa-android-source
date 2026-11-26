package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RIInventoryConstants;
import com.argusoft.sewa.android.app.core.impl.CampaignSessionServiceImpl;
import com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;

/* loaded from: classes.dex */
public class RiInventoryDetailsActivity extends MenuActivity {
    private LinearLayout bodyLayoutContainer;
    CampaignSessionServiceImpl campaignSessionService;
    private LinearLayout globalPanel;
    private RISessionInventoryBean inventoryBean;
    private Integer newVialsReceived;
    private Integer openVialsReceived;
    RoutineImmunisationServiceImpl routineImmunisationService;
    private final Context context = this;
    private int i = 0;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().hasExtra("SESSION_ID")) {
            RISessionInventoryBean riInventoryByCampaignSessionId = this.campaignSessionService.getRiInventoryByCampaignSessionId(getIntent().getStringExtra("SESSION_ID"));
            this.inventoryBean = riInventoryByCampaignSessionId;
            if (riInventoryByCampaignSessionId == null) {
                finish();
                return;
            } else {
                initView();
                return;
            }
        }
        finish();
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, null);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setContentView(linearLayoutGenerateDynamicScreenTemplate);
        ((LinearLayout) this.globalPanel.findViewById(R.id.footerLayout)).setVisibility(8);
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(R.id.bodyLayoutContainer);
        setSupportActionBar((Toolbar) this.globalPanel.findViewById(R.id.my_toolbar));
        setTitle(UtilBean.getTitleText(LabelConstants.TALLY_SHEET_TITLE));
        showCountOfVaccines();
        this.i = 0;
    }

    private void showCountOfVaccines() {
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout("BCG"));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout("MR"));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.DPT));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.TD));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.PENTAVALENT));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.FIPV));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.PCV));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.OPV));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.ROTA_VIRUS));
        this.bodyLayoutContainer.addView(getInventoryDetailsLayout(RIInventoryConstants.HEP_B));
    }

    private LinearLayout getInventoryDetailsLayout(String str) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.activity_ri_inventory_details, (ViewGroup) null);
        TableLayout tableLayout = (TableLayout) linearLayout.findViewById(R.id.tableLayout);
        TableRow tableRow = (TableRow) linearLayout.findViewById(R.id.header_title);
        if (this.i > 0) {
            tableLayout.removeView(tableRow);
        }
        if (tableRow != null) {
            this.i++;
        }
        ((TextView) tableLayout.findViewById(R.id.vaccineName)).setText(UtilBean.getMyLabel(RIInventoryConstants.getFullFormOfInventoryVaccines(str)));
        getVialsCount(str);
        ((TextView) tableLayout.findViewById(R.id.newVialsReceived)).setText(String.valueOf(this.newVialsReceived));
        ((TextView) tableLayout.findViewById(R.id.openVialsReceived)).setText(String.valueOf(this.openVialsReceived));
        return linearLayout;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void getVialsCount(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.RiInventoryDetailsActivity.getVialsCount(java.lang.String):void");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        finish();
        return true;
    }
}
