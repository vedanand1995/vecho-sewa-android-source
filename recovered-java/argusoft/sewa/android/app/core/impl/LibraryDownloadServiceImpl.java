package com.argusoft.sewa.android.app.core.impl;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.LibraryDownloadService;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class LibraryDownloadServiceImpl implements LibraryDownloadService {
    public static final String INACTIVE = "INACTIVE";
    Context context;
    Dao<LibraryBean, Integer> libraryBeanDao;

    private boolean isFileExistsOnLocal(String str, Long l) {
        File file = new File(SewaConstants.DIR_LIBRARY_TEMP, str);
        if (file.exists()) {
            moveFile(file, str, l);
        }
        return new File(SewaConstants.DIR_LIBRARY, str).exists();
    }

    private static void clearSharedPref(Context context) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(SewaConstants.LIBRARY_DOWNLOAD_PREFS_NAME, 0).edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    @Override // com.argusoft.sewa.android.app.core.LibraryDownloadService
    public void deleteFile(String str, Long l) {
        Log.e("LibraryDownloadService", "deleteFile called for File : " + str);
        File file = new File(SewaConstants.DIR_LIBRARY, str);
        if (file.exists()) {
            file.delete();
        }
        try {
            LibraryBean libraryBeanQueryForFirst = this.libraryBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            if (libraryBeanQueryForFirst != null) {
                libraryBeanQueryForFirst.setIsDownloaded(false);
                this.libraryBeanDao.update((Dao<LibraryBean, Integer>) libraryBeanQueryForFirst);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        clearSharedPref(this.context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveFile(File file, String str, Long l) {
        file.renameTo(new File(SewaConstants.DIR_LIBRARY, str));
        Log.i(getClass().getSimpleName(), "#### File moved to " + SewaConstants.DIR_LIBRARY);
        try {
            LibraryBean libraryBeanQueryForFirst = this.libraryBeanDao.queryBuilder().where().eq("actualId", l).queryForFirst();
            if (libraryBeanQueryForFirst != null) {
                libraryBeanQueryForFirst.setIsDownloaded(true);
                this.libraryBeanDao.update((Dao<LibraryBean, Integer>) libraryBeanQueryForFirst);
            } else {
                Log.e(getClass().getSimpleName(), "moveFile: no LibraryBean found for actualId=" + l + ", skipping DB update");
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        clearSharedPref(this.context);
    }

    private void startFileDownloading(Context context, LibraryBean libraryBean) {
        String strReplaceAll;
        String str = WSConstants.REST_TECHO_SERVICE_URL + "downloadlibraryfile?fileId=" + libraryBean.getActualId().toString().replace(" ", "%20");
        Log.i(getClass().getSimpleName(), "##### Download URL : " + str);
        Uri uri = Uri.parse(str);
        Uri uri2 = Uri.parse("file://" + SewaConstants.DIR_LIBRARY_TEMP + libraryBean.getActualId() + GlobalTypes.DOT_SEPARATOR + libraryBean.getFileType());
        Log.i(getClass().getSimpleName(), "************Downloading started ***********");
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        DownloadManager.Request request = new DownloadManager.Request(uri);
        request.setMimeType("application/vnd.android.package-archive");
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(GlobalTypes.ISO_8601_DATE_TIME_FORMAT, Locale.getDefault());
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            strReplaceAll = simpleDateFormat.format(new Date()).replaceAll("([+-]\\d{2})(\\d{2})$", "$1:$2");
        } catch (Exception e) {
            e.printStackTrace();
            strReplaceAll = null;
        }
        if (strReplaceAll != null) {
            request.addRequestHeader("X-Client-Date-Time", strReplaceAll);
        }
        request.setAllowedNetworkTypes(3).setAllowedOverRoaming(true).setDestinationUri(uri2);
        request.setTitle(UtilBean.getMyLabel(BuildConfig.HOME_TITLE_LIVE) + " - " + UtilBean.getMyLabel("Downloading Library files"));
        request.setDescription(libraryBean.getActualId() + GlobalTypes.DOT_SEPARATOR + libraryBean.getFileType());
        long jEnqueue = downloadManager.enqueue(request);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(SewaConstants.LIBRARY_DOWNLOAD_PREFS_NAME, 0).edit();
        editorEdit.putLong(FieldNameConstants.DOWNLOAD_ID, jEnqueue);
        editorEdit.putLong("actualId", libraryBean.getActualId().longValue());
        editorEdit.putString(FieldNameConstants.FILE_NAME, libraryBean.getActualId().toString() + GlobalTypes.DOT_SEPARATOR + libraryBean.getFileType());
        editorEdit.apply();
        Log.i(getClass().getSimpleName(), "#### Registering the Broadcast");
        registerBroadcastReceiver(context);
    }

    private void registerBroadcastReceiver(Context context) {
        context.registerReceiver(new BroadcastReceiver() { // from class: com.argusoft.sewa.android.app.core.impl.LibraryDownloadServiceImpl.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Log.i(getClass().getSimpleName(), "#### Received the Download Broadcast");
                if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
                    Log.i(getClass().getSimpleName(), "#### RB: download completed.");
                    DownloadManager downloadManager = (DownloadManager) context2.getSystemService("download");
                    DownloadManager.Query query = new DownloadManager.Query();
                    SharedPreferences sharedPreferences = context2.getSharedPreferences(SewaConstants.LIBRARY_DOWNLOAD_PREFS_NAME, 0);
                    long j = sharedPreferences.getLong(FieldNameConstants.DOWNLOAD_ID, 0L);
                    long j2 = sharedPreferences.getLong("actualId", 0L);
                    String string = sharedPreferences.getString(FieldNameConstants.FILE_NAME, null);
                    if (j != intent.getLongExtra("extra_download_id", -1L)) {
                        Log.i(getClass().getSimpleName(), "#### DOWNLOAD IDs ARE NOT SAME.");
                        return;
                    }
                    query.setFilterById(j);
                    Cursor cursorQuery = downloadManager.query(query);
                    if (cursorQuery.moveToFirst()) {
                        int columnIndex = cursorQuery.getColumnIndex("status");
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("description"));
                        Log.i(getClass().getSimpleName(), "#### Downloaded file name: " + string2);
                        int i = cursorQuery.getInt(columnIndex);
                        if (i == 8) {
                            Log.i(getClass().getSimpleName(), "#### Downloaded successful ! " + string2);
                            File file = new File(SewaConstants.DIR_LIBRARY_TEMP, string2);
                            if (file.exists()) {
                                LibraryDownloadServiceImpl.this.moveFile(file, string2, Long.valueOf(j2));
                                LibraryDownloadServiceImpl.this.retrieveNotDownloadedAndStartDownload();
                            }
                        } else if (i == 16) {
                            Log.i(getClass().getSimpleName(), "#### Download failed, Deleting all the files");
                            LibraryDownloadServiceImpl.this.deleteFile(string, Long.valueOf(j2));
                            LibraryDownloadServiceImpl.this.retrieveNotDownloadedAndStartDownload();
                        }
                        cursorQuery.close();
                    }
                }
            }
        }, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
    }

    @Override // com.argusoft.sewa.android.app.core.LibraryDownloadService
    public void retrieveNotDownloadedAndStartDownload() {
        try {
            List<LibraryBean> listQuery = this.libraryBeanDao.queryBuilder().where().eq(FieldNameConstants.IS_DOWNLOADED, false).query();
            if (listQuery != null && !listQuery.isEmpty()) {
                LibraryBean libraryBean = listQuery.get(0);
                if (!isFileExistsOnLocal(libraryBean.getActualId() + GlobalTypes.DOT_SEPARATOR + libraryBean.getFileType(), libraryBean.getActualId())) {
                    startFileDownloading(this.context, libraryBean);
                } else {
                    libraryBean.setIsDownloaded(true);
                    this.libraryBeanDao.update((Dao<LibraryBean, Integer>) libraryBean);
                    retrieveNotDownloadedAndStartDownload();
                }
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x004e A[Catch: SQLException -> 0x008d, TryCatch #0 {SQLException -> 0x008d, blocks: (B:4:0x000e, B:6:0x0014, B:9:0x006e, B:11:0x0074, B:12:0x0078, B:14:0x007e, B:7:0x004e), top: B:19:0x000e }] */
    @Override // com.argusoft.sewa.android.app.core.LibraryDownloadService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.argusoft.sewa.android.app.databean.LibraryDataBean> retrieveLibraryBeansByCategory(java.lang.String r7) {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 1
            java.lang.String r2 = "isDownloaded"
            java.lang.String r3 = "INACTIVE"
            java.lang.String r4 = "state"
            if (r7 == 0) goto L4e
            boolean r5 = r7.isEmpty()     // Catch: java.sql.SQLException -> L8d
            if (r5 != 0) goto L4e
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.LibraryBean, java.lang.Integer> r5 = r6.libraryBeanDao     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.QueryBuilder r5 = r5.queryBuilder()     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r5 = r5.where()     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r3 = r5.ne(r4, r3)     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r3 = r3.and()     // Catch: java.sql.SQLException -> L8d
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r1 = r3.eq(r2, r1)     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r1 = r1.and()     // Catch: java.sql.SQLException -> L8d
            java.lang.String r2 = "category"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.sql.SQLException -> L8d
            r3.<init>()     // Catch: java.sql.SQLException -> L8d
            r3.append(r7)     // Catch: java.sql.SQLException -> L8d
            java.lang.String r7 = "%"
            r3.append(r7)     // Catch: java.sql.SQLException -> L8d
            java.lang.String r7 = r3.toString()     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r7 = r1.like(r2, r7)     // Catch: java.sql.SQLException -> L8d
            java.util.List r7 = r7.query()     // Catch: java.sql.SQLException -> L8d
            goto L6c
        L4e:
            com.j256.ormlite.dao.Dao<com.argusoft.sewa.android.app.model.LibraryBean, java.lang.Integer> r7 = r6.libraryBeanDao     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.QueryBuilder r7 = r7.queryBuilder()     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r7 = r7.where()     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r7 = r7.ne(r4, r3)     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r7 = r7.and()     // Catch: java.sql.SQLException -> L8d
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: java.sql.SQLException -> L8d
            com.j256.ormlite.stmt.Where r7 = r7.eq(r2, r1)     // Catch: java.sql.SQLException -> L8d
            java.util.List r7 = r7.query()     // Catch: java.sql.SQLException -> L8d
        L6c:
            if (r7 == 0) goto L9a
            boolean r1 = r7.isEmpty()     // Catch: java.sql.SQLException -> L8d
            if (r1 != 0) goto L9a
            java.util.Iterator r7 = r7.iterator()     // Catch: java.sql.SQLException -> L8d
        L78:
            boolean r1 = r7.hasNext()     // Catch: java.sql.SQLException -> L8d
            if (r1 == 0) goto L9a
            java.lang.Object r1 = r7.next()     // Catch: java.sql.SQLException -> L8d
            com.argusoft.sewa.android.app.model.LibraryBean r1 = (com.argusoft.sewa.android.app.model.LibraryBean) r1     // Catch: java.sql.SQLException -> L8d
            com.argusoft.sewa.android.app.databean.LibraryDataBean r2 = new com.argusoft.sewa.android.app.databean.LibraryDataBean     // Catch: java.sql.SQLException -> L8d
            r2.<init>(r1)     // Catch: java.sql.SQLException -> L8d
            r0.add(r2)     // Catch: java.sql.SQLException -> L8d
            goto L78
        L8d:
            r7 = move-exception
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r2 = 0
            android.util.Log.e(r1, r2, r7)
        L9a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.LibraryDownloadServiceImpl.retrieveLibraryBeansByCategory(java.lang.String):java.util.List");
    }
}
