package com.argusoft.sewa.android.app.activity;

import android.app.DownloadManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.BackgroundDownloadUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class DownloadProgressActivity extends AppCompatActivity {
    private Context context = this;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [com.argusoft.sewa.android.app.activity.DownloadProgressActivity$1] */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_download_progress);
        final DownloadManager downloadManager = (DownloadManager) getSystemService("download");
        final long j = getSharedPreferences(SewaConstants.DOWNLOAD_PREFS_NAME, 0).getLong(FieldNameConstants.DOWNLOAD_ID, 0L);
        if (j == 0) {
            return;
        }
        final ProgressBar progressBar = (ProgressBar) findViewById(R.id.progressbar);
        final ProgressBar progressBar2 = (ProgressBar) findViewById(R.id.roundProgressBar);
        final TextView textView = (TextView) findViewById(R.id.percent);
        textView.setText(LabelConstants.HELLO);
        new Thread() { // from class: com.argusoft.sewa.android.app.activity.DownloadProgressActivity.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Exception e;
                boolean z = true;
                while (z) {
                    DownloadManager.Query query = new DownloadManager.Query();
                    boolean z2 = false;
                    query.setFilterById(j);
                    Cursor cursorQuery = downloadManager.query(query);
                    cursorQuery.moveToFirst();
                    final int i = (int) ((cursorQuery.getInt(cursorQuery.getColumnIndex("bytes_so_far")) * 100) / cursorQuery.getInt(cursorQuery.getColumnIndex("total_size")));
                    DownloadProgressActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DownloadProgressActivity.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            progressBar.setProgress(i);
                            progressBar2.setProgress(i);
                            textView.setText(UtilBean.getMyLabel("Please wait, download in progress") + ": " + i + GlobalTypes.BENEFICIARY_SEPARATOR);
                        }
                    });
                    try {
                        if (cursorQuery.getInt(cursorQuery.getColumnIndex("status")) == 8) {
                            try {
                                DownloadProgressActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DownloadProgressActivity.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        progressBar.setProgress(i);
                                        progressBar2.setProgress(i);
                                        textView.setText(UtilBean.getMyLabel("Download completed") + ": " + i + "% ");
                                    }
                                });
                                Logger.getLogger(DownloadProgressActivity.class.getName()).log(Level.INFO, "#### Download Completed. Showing App Install Dialog. (DPA)");
                                DownloadProgressActivity.this.showAppInstallDialog();
                                z = false;
                            } catch (Exception e2) {
                                e = e2;
                                Logger.getLogger(DownloadProgressActivity.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                                z = z2;
                                cursorQuery.close();
                                sleep(1000L);
                            }
                        }
                    } catch (Exception e3) {
                        z2 = z;
                        e = e3;
                    }
                    cursorQuery.close();
                    try {
                        sleep(1000L);
                    } catch (InterruptedException e4) {
                        Logger.getLogger(DownloadProgressActivity.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAppInstallDialog() {
        String strReplace = SharedStructureData.sewaService.getAndroidVersion().split(GlobalTypes.KEY_VALUE_SEPARATOR)[0];
        if (strReplace.contains("M") || strReplace.contains("m")) {
            strReplace = strReplace.replace("M", "").replace("m", "");
        }
        String str = "techo_app_" + strReplace + LabelConstants.APK_EXTENSTION;
        if (BackgroundDownloadUtils.isDownloadNotInProgress(this, str)) {
            BackgroundDownloadUtils.showInstallAppDialog(this, str);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setTitle(UtilBean.getMyLabel(LabelConstants.NEW_APLLICATION_DOWNLOADER));
    }

    private void setTitle(String str) {
        MaterialTextView materialTextView = (MaterialTextView) findViewById(R.id.toolbar_title);
        if (materialTextView != null) {
            materialTextView.setText(UtilBean.getMyLabel(str));
            materialTextView.setTextAppearance(this.context, R.style.ToolbarTitle);
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(false);
            supportActionBar.setDisplayShowCustomEnabled(false);
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
        setSubTitle();
    }

    private void setSubTitle() {
        final String username = SewaTransformer.loginBean.getUsername();
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DownloadProgressActivity.2
            @Override // java.lang.Runnable
            public void run() {
                MaterialTextView materialTextView = (MaterialTextView) DownloadProgressActivity.this.findViewById(R.id.toolbar_subtitle);
                if (materialTextView != null) {
                    String str = username;
                    if (str == null || str.trim().isEmpty()) {
                        materialTextView.setVisibility(8);
                        return;
                    }
                    materialTextView.setVisibility(0);
                    materialTextView.setText(UtilBean.getMyLabel(username));
                    materialTextView.setTextAppearance(DownloadProgressActivity.this.context, R.style.ToolbarSubtitle);
                }
            }
        });
    }
}
