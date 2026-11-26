package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.AbhaCreationServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AbhaNumberManagementActivity extends MenuActivity {
    AbhaCreationServiceImpl abhaCreationService;
    private LinearLayout bodyLayoutContainer;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    private MyAlertDialog myAlertDialog;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this.context, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.HEALTH_ID_MANAGEMENT));
        setChoiceSelectionScreen();
    }

    private void initView() {
        showProcessDialog();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, null);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setChoiceSelectionScreen();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this.context, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_HEALTH_ID_CREATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberManagementActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    AbhaNumberManagementActivity.this.myAlertDialog.dismiss();
                    AbhaNumberManagementActivity.this.navigateToHomeScreen(false);
                    AbhaNumberManagementActivity.this.finish();
                    return;
                }
                AbhaNumberManagementActivity.this.myAlertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    public void setChoiceSelectionScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this, UtilBean.getMyLabel(LabelConstants.WHAT_DO_YOU_WANT_TO_DO)));
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel(LabelConstants.CREATE_HEALTH_ID_FOR_NEW_MEMBER));
        arrayList.add(UtilBean.getMyLabel(LabelConstants.CREATE_HEALTH_ID_FOR_EXISTING_MEMBER));
        this.bodyLayoutContainer.addView(MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.AbhaNumberManagementActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Intent intent;
                int i2;
                if (i == 0) {
                    if (SharedStructureData.sewaService.isOnline()) {
                        intent = new Intent(AbhaNumberManagementActivity.this.context, (Class<?>) NDHMHealthIdManagementActivity_.class);
                        intent.putExtra("isForNonExistingMember", true);
                        intent.putExtra("featureName", "ABHA_NUMBER");
                        i2 = 1020;
                    } else {
                        intent = new Intent(AbhaNumberManagementActivity.this.context, (Class<?>) NDHMOfflineHealthIdManagementActivity_.class);
                        i2 = 1021;
                    }
                    AbhaNumberManagementActivity.this.startActivityForResult(intent, i2);
                    return;
                }
                AbhaNumberManagementActivity.this.context.startActivity(new Intent(AbhaNumberManagementActivity.this.context, (Class<?>) AbhaNumberActivity_.class));
            }
        }));
        this.footerLayout.setVisibility(8);
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1020) {
            if (intent != null && intent.getStringExtra("healthIdNumber") != null && intent.getBooleanExtra("isFromOffline", false)) {
                this.abhaCreationService.createMigrationForOfflineAbha(intent.getStringExtra("healthIdNumber"), null);
            }
        } else if (i == 1021 && intent != null && intent.getStringExtra("OfflineHealthIdBean") != null) {
            this.abhaCreationService.createMigrationForOfflineAbha(intent.getStringExtra("OfflineHealthIdBean"), null);
        }
        setChoiceSelectionScreen();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        navigateToHomeScreen(false);
        return true;
    }
}
