package com.argusoft.sewa.android.app.util;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.core.content.FileProvider;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import java.io.File;

/* loaded from: classes.dex */
public class BackgroundDownloadUtils {
    private static final String TAG = "BackgroundDownloadUtils";
    private static MyAlertDialog myDialog;
    private static BroadcastReceiver receiver;

    private BackgroundDownloadUtils() {
        throw new IllegalStateException("Utility Class");
    }

    public static boolean isApkExistsOnLocal(Context context, String str) {
        File file = new File(SewaConstants.DIR_APK_DOWNLOADED, str);
        Log.d(TAG, "Checking file exists : " + file);
        return file.exists();
    }

    public static boolean isDownloadNotInProgress(Context context, String str) {
        long j;
        try {
            j = context.getSharedPreferences(SewaConstants.DOWNLOAD_PREFS_NAME, 0).getLong(FieldNameConstants.DOWNLOAD_ID, 0L);
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
        if (j == 0) {
            return true;
        }
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        DownloadManager.Query query = new DownloadManager.Query();
        query.setFilterById(j);
        Cursor cursorQuery = downloadManager.query(query);
        if (cursorQuery.moveToFirst()) {
            int i = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
            if (i == 1) {
                Log.i(TAG, j + " *** pending ****");
                return false;
            }
            if (i == 2) {
                Log.i(TAG, j + " *** running ****");
                return false;
            }
            if (i == 4) {
                Log.i(TAG, j + " *** paused ****");
                return false;
            }
            if (i == 8) {
                Log.i(TAG, "Download Completed. Success. : " + str);
                File file = new File(SewaConstants.DIR_APK_DOWNLOADED_TEMP, str);
                if (!file.exists()) {
                    File file2 = new File(SewaConstants.DIR_APK_DOWNLOADED, str);
                    Log.i(TAG, "Temp File not found!");
                    return !file2.exists();
                }
                Log.i(TAG, "Moving file from Temp to techo_app Directory");
                file.renameTo(new File(SewaConstants.DIR_APK_DOWNLOADED, str));
                Log.i(TAG, "File moved!");
                return true;
            }
            if (i == 16) {
                Log.i(TAG, j + " *** failed ****");
                deleteAllFiles(context, new File(SewaConstants.DIR_APK_DOWNLOADED));
                return true;
            }
        }
        cursorQuery.close();
        deleteAllFiles(context, new File(SewaConstants.DIR_APK_DOWNLOADED));
        return true;
    }

    public static void showAlert(final Context context, final String str, final View.OnClickListener onClickListener, final int i) {
        ((Activity) context).runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.util.BackgroundDownloadUtils.1
            @Override // java.lang.Runnable
            public void run() {
                Log.i(BackgroundDownloadUtils.TAG, "Show Alert called!");
                MyAlertDialog unused = BackgroundDownloadUtils.myDialog = new MyAlertDialog(context, false, str, onClickListener, i);
                BackgroundDownloadUtils.myDialog.show();
            }
        });
    }

    public static void deleteAllFiles(Context context, File file) {
        clearSharedPref(context);
        if (file.exists() && file.isDirectory()) {
            for (String str : file.list()) {
                File file2 = new File(file, str);
                if (!file2.isDirectory()) {
                    file2.delete();
                } else {
                    deleteAllFiles(context, file2);
                }
            }
        }
    }

    public static void clearSharedPref(Context context) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(SewaConstants.DOWNLOAD_PREFS_NAME, 0).edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    public static void startAppDownloading(Context context, String str, String str2) {
        Log.i(TAG, "Starting to Download latest App");
        if (str2 == null) {
            return;
        }
        Uri uri = Uri.parse(str2);
        Log.i(TAG, "************Downloading started ***********");
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        DownloadManager.Request request = new DownloadManager.Request(uri);
        request.setMimeType("application/vnd.android.package-archive");
        request.setAllowedNetworkTypes(3).setAllowedOverRoaming(true).setDestinationUri(Uri.parse("file://" + SewaConstants.DIR_APK_DOWNLOADED_TEMP + str));
        long jEnqueue = downloadManager.enqueue(request);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(SewaConstants.DOWNLOAD_PREFS_NAME, 0).edit();
        editorEdit.putLong(FieldNameConstants.DOWNLOAD_ID, jEnqueue);
        editorEdit.apply();
        Log.i(TAG, "Registering the Broadcast");
        registerBroadcastReceiver(context);
    }

    public static void registerBroadcastReceiver(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.argusoft.sewa.android.app.util.BackgroundDownloadUtils.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Log.i(BackgroundDownloadUtils.TAG, "#### Received the Download Broadcast");
                if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
                    Log.i(BackgroundDownloadUtils.TAG, "Broadcast Receiver : ACTION_DOWNLOAD_COMPLETE.");
                    DownloadManager downloadManager = (DownloadManager) context2.getSystemService("download");
                    DownloadManager.Query query = new DownloadManager.Query();
                    query.setFilterById(context2.getSharedPreferences(SewaConstants.DOWNLOAD_PREFS_NAME, 0).getLong(FieldNameConstants.DOWNLOAD_ID, 0L));
                    Cursor cursorQuery = downloadManager.query(query);
                    if (cursorQuery.moveToFirst()) {
                        int columnIndex = cursorQuery.getColumnIndex("status");
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex(FieldNameConstants.TITLE));
                        Log.i(BackgroundDownloadUtils.TAG, "#### Downloaded file name: " + string);
                        if (8 == cursorQuery.getInt(columnIndex)) {
                            Log.i(BackgroundDownloadUtils.TAG, "#### Downloaded successful!" + string);
                            File file = new File(SewaConstants.DIR_APK_DOWNLOADED_TEMP, string);
                            if (file.exists()) {
                                file.renameTo(new File(SewaConstants.DIR_APK_DOWNLOADED, string));
                            }
                        } else if (16 == cursorQuery.getInt(columnIndex)) {
                            Log.i(BackgroundDownloadUtils.TAG, "#### Download failed, Deleting all the files");
                            BackgroundDownloadUtils.deleteAllFiles(context2, new File(SewaConstants.DIR_APK_DOWNLOADED));
                        }
                        if (BackgroundDownloadUtils.receiver != null) {
                            context2.unregisterReceiver(BackgroundDownloadUtils.receiver);
                        }
                    }
                    cursorQuery.close();
                }
            }
        };
        receiver = broadcastReceiver;
        context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
    }

    public static void showInstallAppDialog(final Context context, final String str) {
        Log.i(TAG, "Install App Popup called!");
        showAlert(context, UtilBean.getMyLabel(LabelConstants.NEW_APPLICATION_AVAILABLE), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.util.BackgroundDownloadUtils.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((Activity) context).runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.util.BackgroundDownloadUtils.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BackgroundDownloadUtils.myDialog.dismiss();
                        File file = new File(SewaConstants.DIR_APK_DOWNLOADED, str);
                        Uri uriFromFile = Uri.fromFile(file);
                        if (Build.VERSION.SDK_INT >= 24) {
                            uriFromFile = FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + ".provider", file);
                        }
                        Intent intent = new Intent("android.intent.action.VIEW", uriFromFile);
                        intent.putExtra("android.intent.extra.NOT_UNKNOWN_SOURCE", true);
                        intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
                        intent.setFlags(268468224);
                        intent.addFlags(1);
                        context.startActivity(intent);
                        ((Activity) context).finish();
                    }
                });
            }
        }, DynamicUtils.BUTTON_OK);
    }
}
