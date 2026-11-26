package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.support.SupportStore_;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.BackgroundDownloadUtils;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.io.File;
import java.util.Calendar;

/* loaded from: classes.dex */
public class MenuActivity extends AppCompatActivity {
    public MyAlertDialog alertDialog;
    private Boolean alertRequired;
    public Context context = this;
    public MyProcessDialog processDialog;
    public SewaServiceRestClientImpl serviceRestClient;
    public TechoServiceImpl techoService;

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(SewaUtil.CURRENT_THEME);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedStructureData.isOnlineSearch = false;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_home) {
            onHomePressed();
            return true;
        }
        if (menuItem.getItemId() == R.id.menu_refresh) {
            MyProcessDialog myProcessDialog = new MyProcessDialog(this, GlobalTypes.PLEASE_WAIT);
            this.processDialog = myProcessDialog;
            myProcessDialog.show();
            doUpdate(true);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void resumeActivity() {
        if (SharedStructureData.isLogin) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
        intent.setFlags(335544320);
        startActivity(intent);
        finish();
    }

    public void setAlertRequired(Boolean bool) {
        this.alertRequired = bool;
    }

    private void onHomePressed() {
        if (!Boolean.TRUE.equals(this.alertRequired)) {
            navigateToHomeScreen(false);
            return;
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.WANT_TO_GO_BACK_TO_HOME_SCREEN, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == -1) {
                    MenuActivity.this.alertDialog.dismiss();
                    MenuActivity.this.navigateToHomeScreen(false);
                    MenuActivity.this.finish();
                    return;
                }
                MenuActivity.this.alertDialog.dismiss();
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.menu_refresh).setVisible(false);
        menu.findItem(R.id.menu_about).setVisible(false);
        menu.findItem(R.id.menu_home).setVisible(true);
        super.onPrepareOptionsMenu(menu);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void navigateToHomeScreen(boolean r3) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.MenuActivity.navigateToHomeScreen(boolean):void");
    }

    public void showProcessDialog() {
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || !myProcessDialog.isShowing()) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    MenuActivity.this.processDialog = new MyProcessDialog(MenuActivity.this, UtilBean.getMyLabel(LabelConstants.PROCESSING));
                    MenuActivity.this.processDialog.show();
                }
            });
        }
    }

    protected void hideProcessDialog() {
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || !myProcessDialog.isShowing()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.3
            @Override // java.lang.Runnable
            public void run() {
                MenuActivity.this.processDialog.dismiss();
            }
        });
    }

    protected void setTitle(String str) {
        MaterialTextView materialTextView = (MaterialTextView) findViewById(R.id.toolbar_title);
        if (materialTextView != null) {
            materialTextView.setText(UtilBean.getMyLabel(str));
            materialTextView.setTextAppearance(this.context, R.style.ToolbarTitle);
            materialTextView.setAutoSizeTextTypeUniformWithConfiguration(8, 15, 1, 2);
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeAsUpIndicator(R.drawable.ic_menu_back);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowCustomEnabled(false);
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
        setSubTitle(null);
    }

    protected void setSubTitle(final String str) {
        if (str == null && SewaTransformer.loginBean != null) {
            str = SewaTransformer.loginBean.getUsername();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.4
            @Override // java.lang.Runnable
            public void run() {
                MaterialTextView materialTextView = (MaterialTextView) MenuActivity.this.findViewById(R.id.toolbar_subtitle);
                if (materialTextView != null) {
                    String str2 = str;
                    if (str2 == null || str2.trim().isEmpty()) {
                        materialTextView.setVisibility(8);
                        return;
                    }
                    materialTextView.setVisibility(0);
                    materialTextView.setText(UtilBean.getMyLabel(str));
                    materialTextView.setTextAppearance(MenuActivity.this.context, R.style.ToolbarSubtitle);
                }
            }
        });
    }

    public void showAlertAndFinish(final String str) {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.5
            @Override // java.lang.Runnable
            public void run() {
                MenuActivity.this.alertDialog = new MyAlertDialog(MenuActivity.this, false, UtilBean.getMyLabel(str), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.5.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MenuActivity.this.alertDialog.dismiss();
                        MenuActivity.this.finish();
                    }
                }, DynamicUtils.BUTTON_OK);
                MenuActivity.this.alertDialog.show();
            }
        });
    }

    private MaterialTextView getLastUpdateLabelView(String str, SewaServiceImpl sewaServiceImpl, LinearLayout linearLayout) {
        VersionBean versionBean = new VersionBean();
        versionBean.setKey(str);
        VersionBean sheetStatusByFiletr = sewaServiceImpl.getSheetStatusByFiletr(versionBean);
        long j = sheetStatusByFiletr != null ? Long.parseLong(sheetStatusByFiletr.getValue()) : 0L;
        MaterialTextView materialTextView = new MaterialTextView(this.context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int paddingBottom = linearLayout.getPaddingBottom() * (-1);
        layoutParams.setMargins(paddingBottom, paddingBottom, paddingBottom, 0);
        materialTextView.setLayoutParams(layoutParams);
        materialTextView.setTextAppearance(this.context, R.style.LastUpdateLabel);
        materialTextView.setText(UtilBean.getLastUpdatedTime(j));
        materialTextView.setTextAlignment(4);
        materialTextView.setBackgroundColor(ContextCompat.getColor(this.context, R.color.lastUpdateLabelBackground));
        materialTextView.setPadding(10, 10, 10, 10);
        return materialTextView;
    }

    public MaterialTextView lastUpdateLabelView(SewaServiceImpl sewaServiceImpl, LinearLayout linearLayout) {
        return getLastUpdateLabelView(SewaConstants.TIME_STAMP_LAST_REFRESH, sewaServiceImpl, linearLayout);
    }

    public MaterialTextView fhsLastUpdateLabelView(SewaServiceImpl sewaServiceImpl, LinearLayout linearLayout) {
        return getLastUpdateLabelView(GlobalTypes.VERSION_FHS_LAST_UPDATE_TIME, sewaServiceImpl, linearLayout);
    }

    public void addDataNotSyncedMsg(final LinearLayout linearLayout, final Button button) {
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.6
            @Override // java.lang.Runnable
            public void run() {
                linearLayout.addView(MyStaticComponents.generateInstructionView(MenuActivity.this.context, UtilBean.getMyLabel(LabelConstants.DATA_NOT_SYNCED_ALERT)));
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.6.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MenuActivity.this.navigateToHomeScreen(false);
                    }
                };
                button.setText(UtilBean.getMyLabel("Okay"));
                button.setOnClickListener(onClickListener);
                MenuActivity.this.hideProcessDialog();
            }
        });
    }

    private void syncGetHelp() {
        try {
            SupportStore_.getInstance_(this).sync(this, SewaTransformer.loginBean == null ? null : SewaTransformer.loginBean.getUserID());
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), "Get Help sync failed", e);
        }
    }

    public void doUpdate(Boolean bool) {
        if (SharedStructureData.sewaService != null && SharedStructureData.sewaService.isOnline()) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m264x53f0c942();
                }
            });
            try {
                try {
                    SharedStructureData.sewaService.revalidateUserTokenForUser();
                    SharedStructureData.sewaService.doAfterSuccessfulLogin(false);
                    hideProcessDialog();
                    SharedStructureData.sewaService.uploadAllMediaToServer();
                    syncGetHelp();
                } catch (Exception e) {
                    SharedStructureData.NETWORK_MESSAGE = SewaConstants.NETWORK_NOT_PROPER;
                    Log.e(getClass().getName(), "Exception", e);
                }
                hideProcessDialog();
                if (!SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.NETWORK_AVAILABLE)) {
                    if (SharedStructureData.NETWORK_MESSAGE.equalsIgnoreCase(SewaConstants.SQL_EXCEPTION)) {
                        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m266x6e662c44();
                            }
                        });
                    } else {
                        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m267xfba0ddc5();
                            }
                        });
                    }
                } else {
                    VersionBean versionBean = new VersionBean();
                    versionBean.setKey(SewaConstants.TIME_STAMP_LAST_REFRESH);
                    VersionBean sheetStatusByFiletr = SharedStructureData.sewaService.getSheetStatusByFiletr(versionBean);
                    if (sheetStatusByFiletr == null) {
                        sheetStatusByFiletr = new VersionBean();
                        sheetStatusByFiletr.setKey(SewaConstants.TIME_STAMP_LAST_REFRESH);
                    }
                    sheetStatusByFiletr.setValue(Calendar.getInstance().getTimeInMillis() + "");
                    SharedStructureData.sewaService.updateVersionBean(sheetStatusByFiletr);
                }
                onCheckUpdateComplete();
                if (Boolean.TRUE.equals(bool)) {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity.7
                        @Override // java.lang.Runnable
                        public void run() {
                            MenuActivity.this.finish();
                            System.out.println("Intent-" + MenuActivity.this.getIntent());
                            MenuActivity menuActivity = MenuActivity.this;
                            menuActivity.startActivity(menuActivity.getIntent());
                        }
                    });
                    return;
                }
                return;
            } catch (Throwable th) {
                hideProcessDialog();
                throw th;
            }
        }
        showAlert(LabelConstants.NETWORK, LabelConstants.INTERNET_CONNECTION_REQUIRED_TO_REFRESH, null, DynamicUtils.BUTTON_OK);
    }

    /* renamed from: lambda$doUpdate$0$com-argusoft-sewa-android-app-activity-MenuActivity, reason: not valid java name */
    /* synthetic */ void m264x53f0c942() {
        TextView textView;
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || (textView = (TextView) myProcessDialog.findViewById(10000)) == null) {
            return;
        }
        textView.setText(UtilBean.getMyLabel(GlobalTypes.MSG_LOAD_DATA_FROM_SERVER));
    }

    /* renamed from: lambda$doUpdate$2$com-argusoft-sewa-android-app-activity-MenuActivity, reason: not valid java name */
    /* synthetic */ void m266x6e662c44() {
        showAlert(LabelConstants.NETWORK, LabelConstants.APP_DATA_ERROR, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m265xe12b7ac3(view);
            }
        }, DynamicUtils.BUTTON_OK);
    }

    /* renamed from: lambda$doUpdate$1$com-argusoft-sewa-android-app-activity-MenuActivity, reason: not valid java name */
    /* synthetic */ void m265xe12b7ac3(View view) {
        this.techoService.deleteDatabaseFileFromLocal(this.context);
        UtilBean.restartApplication(this.context);
    }

    /* renamed from: lambda$doUpdate$3$com-argusoft-sewa-android-app-activity-MenuActivity, reason: not valid java name */
    /* synthetic */ void m267xfba0ddc5() {
        showAlert(LabelConstants.NETWORK, SharedStructureData.NETWORK_MESSAGE, null, DynamicUtils.BUTTON_OK);
    }

    private void onCheckUpdateComplete() {
        final String systemConfigurationByKey;
        Log.i(getClass().getSimpleName(), "#### onCheckUpdateComplete called from MenuActivity");
        String androidVersion = SharedStructureData.sewaService.getAndroidVersion();
        if (androidVersion == null) {
            return;
        }
        boolean z = false;
        String strReplace = androidVersion.split(GlobalTypes.KEY_VALUE_SEPARATOR)[0];
        if (strReplace == null) {
            return;
        }
        Log.i(getClass().getSimpleName(), "#### DB SEWA APP VERSION :" + strReplace);
        if (strReplace.contains("M") || strReplace.contains("m")) {
            strReplace = strReplace.replace("M", "").replace("m", "");
            z = true;
        }
        final String str = "techo_app_" + strReplace + LabelConstants.APK_EXTENSTION;
        if (checkAuthenticityOfCurrentVersion(androidVersion, str)) {
            if (Integer.parseInt(strReplace) > 192) {
                Log.i(getClass().getName(), "#### APP NAME (apk name): " + str);
                Log.i(getClass().getName(), "#### Current Version :" + strReplace + " & Config Local Version : 192");
                if (BackgroundDownloadUtils.isApkExistsOnLocal(this.context, str)) {
                    hideProcessDialog();
                    BackgroundDownloadUtils.showInstallAppDialog(this, str);
                    return;
                }
                if (BackgroundDownloadUtils.isDownloadNotInProgress(this, str)) {
                    try {
                        systemConfigurationByKey = this.serviceRestClient.getSystemConfigurationByKey("ANDROID_APP_LINK");
                    } catch (RestHttpException e) {
                        Log.e(getClass().getSimpleName(), e.getMessage(), e);
                        systemConfigurationByKey = null;
                    }
                    if (systemConfigurationByKey == null) {
                        return;
                    }
                    if (z) {
                        showAlert(UtilBean.getMyLabel(LabelConstants.APP_UPDATE_STATUS), UtilBean.getMyLabel(LabelConstants.NEW_APPLICATION_AVAILABLE), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity$$ExternalSyntheticLambda1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.m268x331bd4e3(str, systemConfigurationByKey, view);
                            }
                        }, DynamicUtils.BUTTON_OK);
                        return;
                    } else {
                        BackgroundDownloadUtils.deleteAllFiles(this.context, new File(SewaConstants.getDirectoryPath(this.context, SewaConstants.DIR_APK_DOWNLOADED)));
                        BackgroundDownloadUtils.startAppDownloading(this.context, str, systemConfigurationByKey);
                        return;
                    }
                }
                return;
            }
            Log.i(getClass().getName(), "#### Latest version.... So, Deleting all the files");
            BackgroundDownloadUtils.deleteAllFiles(this, new File(SewaConstants.getDirectoryPath(this.context, SewaConstants.DIR_APK_DOWNLOADED)));
        }
    }

    /* renamed from: lambda$onCheckUpdateComplete$4$com-argusoft-sewa-android-app-activity-MenuActivity, reason: not valid java name */
    /* synthetic */ void m268x331bd4e3(String str, String str2, View view) {
        this.alertDialog.dismiss();
        BackgroundDownloadUtils.deleteAllFiles(this.context, new File(SewaConstants.getDirectoryPath(this.context, SewaConstants.DIR_APK_DOWNLOADED)));
        BackgroundDownloadUtils.startAppDownloading(this.context, str, str2);
        startActivity(new Intent(this.context, (Class<?>) DownloadProgressActivity.class));
        finish();
    }

    public void showAlert(String str, String str2, View.OnClickListener onClickListener, int i) {
        hideProcessDialog();
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, false, str2, onClickListener, i);
        this.alertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    private boolean checkAuthenticityOfCurrentVersion(String str, final String str2) throws NumberFormatException {
        final String systemConfigurationByKey;
        String[] strArrSplit = str.split(GlobalTypes.KEY_VALUE_SEPARATOR);
        if (strArrSplit.length == 1) {
            return true;
        }
        int i = Integer.parseInt(strArrSplit[1]);
        if (BackgroundDownloadUtils.isApkExistsOnLocal(this.context, str2)) {
            hideProcessDialog();
            BackgroundDownloadUtils.showInstallAppDialog(this.context, str2);
        } else if (192 < i) {
            try {
                systemConfigurationByKey = this.serviceRestClient.getSystemConfigurationByKey("ANDROID_APP_LINK");
            } catch (RestHttpException e) {
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
                systemConfigurationByKey = null;
            }
            if (systemConfigurationByKey == null) {
                return true;
            }
            showAlert(UtilBean.getMyLabel(LabelConstants.APP_UPDATE_STATUS), UtilBean.getMyLabel(LabelConstants.NEW_APPLICATION_AVAILABLE), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.MenuActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m263x5b45de08(str2, systemConfigurationByKey, view);
                }
            }, DynamicUtils.BUTTON_OK);
            return false;
        }
        return true;
    }

    /* renamed from: lambda$checkAuthenticityOfCurrentVersion$5$com-argusoft-sewa-android-app-activity-MenuActivity, reason: not valid java name */
    /* synthetic */ void m263x5b45de08(String str, String str2, View view) {
        this.alertDialog.dismiss();
        BackgroundDownloadUtils.deleteAllFiles(this.context, new File(SewaConstants.getDirectoryPath(this.context, SewaConstants.DIR_APK_DOWNLOADED)));
        BackgroundDownloadUtils.startAppDownloading(this.context, str, str2);
        startActivity(new Intent(this.context, (Class<?>) DownloadProgressActivity.class));
        finish();
    }
}
