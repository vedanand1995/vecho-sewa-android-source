package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;

/* loaded from: classes.dex */
public class AboutActivity extends MenuActivity {
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setContentView(R.layout.activity_about);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        setTitle(UtilBean.getTitleText(LabelConstants.ABOUT_TITLE));
        setSubTitle(null);
        ((TextView) findViewById(R.id.version)).setText("Version : 4.1.5");
        ((TextView) findViewById(R.id.releaseDate)).setText("Release Date : 20th November 2026");
        TextView textView = (TextView) findViewById(R.id.link);
        if (Boolean.TRUE.equals(Boolean.valueOf(SewaUtil.isUserInTraining))) {
            textView.setText(BuildConfig.BASE_URL_TRAINING);
        } else {
            textView.setText(BuildConfig.BASE_URL);
        }
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
