package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import com.argusoft.sewa.android.app.constants.ActivityConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;

/* loaded from: classes.dex */
public class BaseLineActivity extends MenuActivity {
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        startDynamicFormActivity();
    }

    private void startDynamicFormActivity() {
        showProcessDialog();
        SharedStructureData.relatedPropertyHashTable.clear();
        String username = SewaTransformer.loginBean.getUsername();
        SharedStructureData.relatedPropertyHashTable.put("userName", username);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, username);
        Intent intent = new Intent(this, (Class<?>) DynamicFormActivity_.class);
        intent.putExtra("entity", FormConstants.ILA_BASELINE);
        startActivityForResult(intent, ActivityConstants.ILA_BASELINE_ACTIVITY_REQUEST_CODE);
        hideProcessDialog();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1027) {
            navigateToHomeScreen(false);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        navigateToHomeScreen(false);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        navigateToHomeScreen(false);
        return true;
    }
}
