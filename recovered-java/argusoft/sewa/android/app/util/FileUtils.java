package com.argusoft.sewa.android.app.util;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class FileUtils {
    private static final String AUDIO = "audio";
    private static final String IMAGE = "image";
    private static final String PDF = "PDF";
    private static final String VIDEO = "video";
    private static final FileUtils ourInstance = new FileUtils();
    private static Uri contentUri = null;

    public static FileUtils getInstance() {
        return ourInstance;
    }

    public String getPath(Context context, Uri uri) throws Throwable {
        try {
            Uri uri2 = null;
            Cursor cursor = null;
            if (isExternalStorageDocument(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                String str = strArrSplit[0];
                String pathFromExtSD = getPathFromExtSD(strArrSplit);
                if (pathFromExtSD.equals("")) {
                    return null;
                }
                return pathFromExtSD;
            }
            if (isDownloadsDocument(uri)) {
                if (Build.VERSION.SDK_INT >= 23) {
                    try {
                        Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
                        if (cursorQuery != null) {
                            try {
                                if (cursorQuery.moveToFirst()) {
                                    String str2 = Environment.getExternalStorageDirectory().toString() + "/Download/" + cursorQuery.getString(0);
                                    if (!TextUtils.isEmpty(str2)) {
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        return str2;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor = cursorQuery;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        String documentId = DocumentsContract.getDocumentId(uri);
                        if (!TextUtils.isEmpty(documentId)) {
                            if (documentId.startsWith("raw:")) {
                                return documentId.replaceFirst("raw:", "");
                            }
                            try {
                                return getDataColumn(context, ContentUris.withAppendedId(Uri.parse(new String[]{"content://downloads/public_downloads", "content://downloads/my_downloads"}[0]), Long.valueOf(documentId).longValue()), null, null);
                            } catch (NumberFormatException unused) {
                                return uri.getPath().replaceFirst("^/document/raw:", "").replaceFirst("^raw:", "");
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } else {
                    String documentId2 = DocumentsContract.getDocumentId(uri);
                    if (documentId2.startsWith("raw:")) {
                        return documentId2.replaceFirst("raw:", "");
                    }
                    try {
                        contentUri = ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(documentId2));
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                    Uri uri3 = contentUri;
                    if (uri3 != null) {
                        return getDataColumn(context, uri3, null, null);
                    }
                }
            }
            if (isMediaDocument(uri)) {
                String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                String str3 = strArrSplit2[0];
                if ("image".equals(str3)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if (VIDEO.equals(str3)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if (AUDIO.equals(str3)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                return getDataColumn(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
            }
            if (isGoogleDriveUri(uri)) {
                return getDriveFilePath(context, uri);
            }
            if (isWhatsAppFile(uri)) {
                return getFilePathForWhatsApp(context, uri);
            }
            if (FirebaseAnalytics.Param.CONTENT.equalsIgnoreCase(uri.getScheme())) {
                if (isGooglePhotosUri(uri)) {
                    return uri.getLastPathSegment();
                }
                if (isGoogleDriveUri(uri)) {
                    return getDriveFilePath(context, uri);
                }
                return getDataColumn(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
            return null;
        } catch (Exception e2) {
            Log.e("Error: ", "" + e2.getMessage());
            return copyFileToInternalStorage(context, uri, Environment.DIRECTORY_DOWNLOADS);
        }
    }

    private boolean fileExists(String str) {
        return new File(str).exists();
    }

    private String getPathFromExtSD(String[] strArr) {
        String str = strArr[0];
        String str2 = "/" + strArr[1];
        if ("primary".equalsIgnoreCase(str)) {
            String str3 = Environment.getExternalStorageDirectory() + str2;
            if (fileExists(str3)) {
                return str3;
            }
        }
        String str4 = System.getenv("SECONDARY_STORAGE") + str2;
        if (fileExists(str4)) {
            return str4;
        }
        String str5 = System.getenv("EXTERNAL_STORAGE") + str2;
        fileExists(str5);
        return str5;
    }

    private String getDriveFilePath(Context context, Uri uri) throws IOException {
        Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
        int columnIndex = cursorQuery.getColumnIndex("_display_name");
        int columnIndex2 = cursorQuery.getColumnIndex("_size");
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(columnIndex);
        Long.toString(cursorQuery.getLong(columnIndex2));
        File file = new File(context.getCacheDir(), string);
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[Math.min(inputStreamOpenInputStream.available(), 1048576)];
            while (true) {
                int i = inputStreamOpenInputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i);
            }
            Log.e("File Size", "Size " + file.length());
            inputStreamOpenInputStream.close();
            fileOutputStream.close();
            Log.e("File Path", "Path " + file.getPath());
            Log.e("File Size", "Size " + file.length());
        } catch (Exception e) {
            Log.e("Exception", e.getMessage());
        }
        return file.getPath();
    }

    private String copyFileToInternalStorage(Context context, Uri uri, String str) throws IOException {
        File file;
        Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_display_name", "_size"}, null, null, null);
        int columnIndex = cursorQuery.getColumnIndex("_display_name");
        int columnIndex2 = cursorQuery.getColumnIndex("_size");
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(columnIndex);
        Long.toString(cursorQuery.getLong(columnIndex2));
        if (!str.equals("")) {
            File file2 = new File(context.getFilesDir() + "/" + str);
            if (!file2.exists()) {
                file2.mkdir();
            }
            file = new File(context.getFilesDir() + "/" + str + "/" + string);
        } else {
            file = new File(context.getFilesDir() + "/" + string);
        }
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpenInputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i);
            }
            inputStreamOpenInputStream.close();
            fileOutputStream.close();
        } catch (Exception e) {
            Log.e("Exception", e.getMessage());
        }
        return file.getPath();
    }

    private String getFilePathForWhatsApp(Context context, Uri uri) {
        return copyFileToInternalStorage(context, uri, Environment.DIRECTORY_DOWNLOADS);
    }

    private String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    private boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    private boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    private boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public boolean isWhatsAppFile(Uri uri) {
        return "com.whatsapp.provider.media".equals(uri.getAuthority());
    }

    private boolean isGoogleDriveUri(Uri uri) {
        return "com.google.android.apps.docs.storage".equals(uri.getAuthority()) || "com.google.android.apps.docs.storage.legacy".equals(uri.getAuthority());
    }

    public String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }

    public String convertBitmapToFile(Bitmap bitmap, String str) throws IOException {
        File file = new File(str);
        try {
            file.createNewFile();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 80, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArray);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file.getPath();
        } catch (IOException e) {
            e.printStackTrace();
            SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_CAMERA);
            return null;
        }
    }

    public void removeFile(String str) {
        new File(str).deleteOnExit();
    }

    public String convertBase64(String str) {
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapDecodeFile.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String convertAnyFileToBase64(android.content.Context r6, java.lang.String r7, java.lang.String r8) throws java.io.IOException {
        /*
            r5 = this;
            r6 = 0
            if (r7 == 0) goto Laa
            if (r8 == 0) goto Laa
            r8.hashCode()
            int r0 = r8.hashCode()
            r1 = 0
            r2 = -1
            r3 = 2
            switch(r0) {
                case 79058: goto L35;
                case 93166550: goto L2a;
                case 100313435: goto L1f;
                case 112202875: goto L14;
                default: goto L12;
            }
        L12:
            r8 = -1
            goto L3f
        L14:
            java.lang.String r0 = "video"
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L1d
            goto L12
        L1d:
            r8 = 3
            goto L3f
        L1f:
            java.lang.String r0 = "image"
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L28
            goto L12
        L28:
            r8 = 2
            goto L3f
        L2a:
            java.lang.String r0 = "audio"
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L33
            goto L12
        L33:
            r8 = 1
            goto L3f
        L35:
            java.lang.String r0 = "PDF"
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L3e
            goto L12
        L3e:
            r8 = 0
        L3f:
            r0 = 1024(0x400, float:1.435E-42)
            switch(r8) {
                case 0: goto L87;
                case 1: goto L63;
                case 2: goto L45;
                case 3: goto L45;
                default: goto L44;
            }
        L44:
            goto Laa
        L45:
            java.io.File r8 = new java.io.File
            r8.<init>(r7)
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.io.IOException -> L5e
            r7.<init>(r8)     // Catch: java.io.IOException -> L5e
            long r0 = r8.length()     // Catch: java.io.IOException -> L5e
            int r8 = (int) r0     // Catch: java.io.IOException -> L5e
            byte[] r8 = new byte[r8]     // Catch: java.io.IOException -> L5e
            r7.read(r8)     // Catch: java.io.IOException -> L5e
            java.lang.String r6 = android.util.Base64.encodeToString(r8, r3)     // Catch: java.io.IOException -> L5e
            return r6
        L5e:
            r7 = move-exception
            r7.printStackTrace()
            return r6
        L63:
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.io.IOException -> L82
            r8.<init>(r7)     // Catch: java.io.IOException -> L82
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L82
            r7.<init>()     // Catch: java.io.IOException -> L82
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> L82
        L6f:
            int r4 = r8.read(r0)     // Catch: java.io.IOException -> L82
            if (r4 == r2) goto L79
            r7.write(r0, r1, r4)     // Catch: java.io.IOException -> L82
            goto L6f
        L79:
            byte[] r7 = r7.toByteArray()     // Catch: java.io.IOException -> L82
            java.lang.String r6 = android.util.Base64.encodeToString(r7, r3)     // Catch: java.io.IOException -> L82
            return r6
        L82:
            r7 = move-exception
            r7.printStackTrace()
            goto Laa
        L87:
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.io.IOException -> La6
            r8.<init>(r7)     // Catch: java.io.IOException -> La6
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> La6
            r7.<init>()     // Catch: java.io.IOException -> La6
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> La6
        L93:
            int r4 = r8.read(r0)     // Catch: java.io.IOException -> La6
            if (r4 == r2) goto L9d
            r7.write(r0, r1, r4)     // Catch: java.io.IOException -> La6
            goto L93
        L9d:
            byte[] r7 = r7.toByteArray()     // Catch: java.io.IOException -> La6
            java.lang.String r6 = android.util.Base64.encodeToString(r7, r3)     // Catch: java.io.IOException -> La6
            return r6
        La6:
            r7 = move-exception
            r7.printStackTrace()
        Laa:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FileUtils.convertAnyFileToBase64(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String getFileTypeFromPath(String str) {
        String[] strArrSplit;
        if (str == null) {
            return null;
        }
        strArrSplit = str.split("\\.");
        String str2 = strArrSplit[strArrSplit.length - 1];
        str2.hashCode();
        switch (str2) {
            case "3gp":
            case "mp4":
                return VIDEO;
            case "amr":
            case "mp3":
                return AUDIO;
            case "jpg":
            case "png":
                return "image";
            case "pdf":
                return "pdf";
            default:
                return strArrSplit[strArrSplit.length - 1];
        }
    }

    public static String getFileNameFromPath(String str) {
        if (str == null) {
            return null;
        }
        return str.split("/")[r1.length - 1];
    }
}
