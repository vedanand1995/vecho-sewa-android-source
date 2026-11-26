package com.argusoft.sewa.android.app.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.webkit.MimeTypeMap;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.work.Data;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: FileUtilsNew.kt */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0001\u001a\u000e\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\u0006\u001a\u0014\u0010\r\u001a\u0004\u0018\u00010\u0006*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0001\u001a\u001a\u0010\u0010\u001a\u00020\u0006*\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0001\u001a\u0012\u0010\u0012\u001a\u00020\u0006*\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u001a\u0010\u0014\u001a\u00020\u0006*\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u0012\u0010\u0015\u001a\u00020\u0006*\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u0012\u0010\u0016\u001a\u00020\u0006*\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u001c\u0010\u0017\u001a\u00020\u0006*\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00012\b\b\u0002\u0010\u0018\u001a\u00020\u0001\u001a\u0012\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0001\u001a5\u0010\u001b\u001a\u0004\u0018\u00010\u0001*\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00012\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010 ¢\u0006\u0002\u0010!\u001a\n\u0010\"\u001a\u00020\u0006*\u00020\u000e\u001a\f\u0010#\u001a\u0004\u0018\u00010\u0006*\u00020\u000e\u001a\u0014\u0010$\u001a\u0004\u0018\u00010\u0006*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0006\u001a\u0012\u0010%\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d\u001a\n\u0010%\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010&\u001a\u00020'*\u00020\u0006\u001a\n\u0010(\u001a\u00020\u0001*\u00020\u0006\u001a\u0014\u0010)\u001a\u0004\u0018\u00010\u0001*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d\u001a\n\u0010*\u001a\u00020\u0001*\u00020\u0006\u001a\u0014\u0010+\u001a\u00020\u0001*\u00020\u00062\b\b\u0002\u0010,\u001a\u00020\u001a\u001a\u0012\u0010-\u001a\u00020\u001d*\u00020\u000e2\u0006\u0010.\u001a\u00020\u0006\u001a\u0012\u0010/\u001a\u000200*\u00020\u000e2\u0006\u0010.\u001a\u00020\u0006\u001a\n\u00101\u001a\u00020\u001a*\u00020\u001d\u001a\n\u00102\u001a\u00020\u001a*\u00020\u001d\u001a\u0012\u00103\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0001\u001a\f\u00104\u001a\u00020\u001a*\u00020\u000eH\u0002\u001a\n\u00105\u001a\u00020\u001a*\u00020\u001d\u001a\n\u00106\u001a\u00020\u001a*\u00020\u001d\u001a\n\u00107\u001a\u00020\u001a*\u00020\u0006\u001a\n\u00107\u001a\u00020\u001a*\u00020\u0001\u001a\n\u00108\u001a\u00020\u001a*\u00020\u001d\u001a\n\u00109\u001a\u00020\u001a*\u00020\u001d\u001a\f\u0010:\u001a\u0004\u0018\u00010;*\u00020\u0001\u001a\u001a\u0010<\u001a\u00020=*\u00020\u001d2\u0006\u0010>\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082D¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"AUTHORITY", "", "DOCUMENTS_DIR", "HIDDEN_PREFIX", "TAG", "generateFileName", "Ljava/io/File;", "directory", "name", "getFileExtension", "path", "createBitmapFromFile", "Landroid/graphics/Bitmap;", "createFile", "Landroid/content/Context;", "filePath", "createFileFromBitmap", "bitmap", "createFileInCache", FieldNameConstants.FILE_NAME, "createFileInCacheFromBitmap", "createFileInExternalStorage", "createFileInInternalStorage", "createTempImageFile", "extension", "deleteFile", "", "getDataColumn", "uri", "Landroid/net/Uri;", "selection", "selectionArgs", "", "(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;", "getDocumentCacheDir", "getDownloadDir", "getFile", "getFileName", "getFileSize", "", "getMimeType", "getPath", "getPathWithoutFileName", "getReadableFileSize", "addSuffix", "getUri", "file", "getViewIntent", "Landroid/content/Intent;", "isDownloadsDocument", "isExternalStorageDocument", "isFileExists", "isFilePermissionGiven", "isGooglePhotosContentProviderUri", "isGooglePhotosUri", "isLocal", "isLocalStorageDocument", "isMediaDocument", "readBytesFromFile", "", "saveFileFromUri", "", "context", "destinationPath", "20Nov-TeCHO+(4.1.5)_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes.dex */
public final class FileUtilsNewKt {
    private static final String AUTHORITY = "com.argusoft.sewa.android.app.fileprovider";
    private static final String DOCUMENTS_DIR = "documents";
    private static final String HIDDEN_PREFIX = ".";
    private static final String TAG = "FileUtils";

    private static final boolean isFilePermissionGiven(Context context) throws Exception {
        if (ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        throw new Exception();
    }

    public static final File createFile(Context context, String filePath) throws IOException {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        if (!isFilePermissionGiven(context)) {
            return null;
        }
        File file = new File(filePath);
        file.createNewFile();
        return file;
    }

    public static final boolean isFileExists(Context context, String filePath) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        if (isFilePermissionGiven(context)) {
            return new File(filePath).exists();
        }
        return false;
    }

    public static final boolean deleteFile(Context context, String filePath) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        if (isFilePermissionGiven(context)) {
            return new File(filePath).delete();
        }
        return false;
    }

    public static final File createFileInCache(Context context, String fileName) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        File file = new File(context.getCacheDir(), fileName);
        if (file.createNewFile()) {
            return file;
        }
        throw null;
    }

    public static final File createFileInCacheFromBitmap(Context context, Bitmap bitmap, String fileName) throws IOException {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        File file = new File(context.getCacheDir(), fileName);
        file.createNewFile();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "byteArrayOutputStream.toByteArray()");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(byteArray);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file;
    }

    public static final File createFileFromBitmap(Context context, Bitmap bitmap, String filePath) throws IOException {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        if (isFilePermissionGiven(context)) {
            File file = new File(filePath);
            file.createNewFile();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "byteArrayOutputStream.toByteArray()");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArray);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file;
        }
        throw new IOException();
    }

    public static final Bitmap createBitmapFromFile(File file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (!file.exists()) {
            file.createNewFile();
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), new BitmapFactory.Options());
        Intrinsics.checkNotNullExpressionValue(bitmapDecodeFile, "decodeFile(absolutePath, bmOption)");
        return bitmapDecodeFile;
    }

    public static final File createFileInInternalStorage(Context context, String fileName) throws IOException {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        File file = new File(context.getFilesDir(), fileName);
        file.createNewFile();
        return file;
    }

    public static final File createFileInExternalStorage(Context context, String fileName) throws IOException {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        File externalFilesDir = context.getExternalFilesDir(null);
        Intrinsics.checkNotNull(externalFilesDir);
        File file = new File(externalFilesDir.getAbsolutePath(), fileName);
        file.createNewFile();
        return file;
    }

    public static final String getPath(Context context, Uri uri) throws Throwable {
        List listEmptyList;
        FileOutputStream fileOutputStreamOpenInputStream;
        String dataColumn;
        List listEmptyList2;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isLocalStorageDocument(uri)) {
                return DocumentsContract.getDocumentId(uri);
            }
            if (isExternalStorageDocument(uri)) {
                String docId = DocumentsContract.getDocumentId(uri);
                Intrinsics.checkNotNullExpressionValue(docId, "docId");
                List<String> listSplit = new Regex(":").split(docId, 0);
                if (!listSplit.isEmpty()) {
                    ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                    while (listIterator.hasPrevious()) {
                        if (listIterator.previous().length() != 0) {
                            listEmptyList2 = CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                    listEmptyList2 = CollectionsKt.emptyList();
                } else {
                    listEmptyList2 = CollectionsKt.emptyList();
                }
                String[] strArr = (String[]) listEmptyList2.toArray(new String[0]);
                String str = strArr[0];
                if ("primary".equals(str)) {
                    return Environment.getExternalStorageDirectory() + '/' + strArr[1];
                }
                return "/storage/" + str + '/' + strArr[1];
            }
            if (isDownloadsDocument(uri)) {
                String id = DocumentsContract.getDocumentId(uri);
                File fileGenerateFileName = generateFileName(getDocumentCacheDir(context), getFileName(context, uri));
                if (id != null && (StringsKt.startsWith$default(id, "msf:", false, 2, (Object) null) || StringsKt.startsWith$default(id, "raw:", false, 2, (Object) null))) {
                    try {
                        fileOutputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                        try {
                            InputStream inputStream = fileOutputStreamOpenInputStream;
                            fileOutputStreamOpenInputStream = new FileOutputStream(fileGenerateFileName);
                            try {
                                FileOutputStream fileOutputStream = fileOutputStreamOpenInputStream;
                                byte[] bArr = new byte[Data.MAX_DATA_BYTES];
                                while (true) {
                                    Integer numValueOf = inputStream != null ? Integer.valueOf(inputStream.read(bArr)) : null;
                                    int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
                                    if (numValueOf != null && numValueOf.intValue() == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, iIntValue);
                                }
                                fileOutputStream.flush();
                                String absolutePath = fileGenerateFileName != null ? fileGenerateFileName.getAbsolutePath() : null;
                                CloseableKt.closeFinally(fileOutputStreamOpenInputStream, null);
                                CloseableKt.closeFinally(fileOutputStreamOpenInputStream, null);
                                return absolutePath;
                            } finally {
                            }
                        } finally {
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                String[] strArr2 = {"content://downloads/public_downloads", "content://downloads/my_downloads"};
                for (int i = 0; i < 2; i++) {
                    Uri uri3 = Uri.parse(strArr2[i]);
                    Intrinsics.checkNotNullExpressionValue(id, "id");
                    try {
                        dataColumn = getDataColumn(context, ContentUris.withAppendedId(uri3, Long.parseLong(id)), null, null);
                    } catch (Exception unused) {
                    }
                    if (dataColumn != null) {
                        return dataColumn;
                    }
                }
                if (fileGenerateFileName == null) {
                    return null;
                }
                String absolutePath2 = fileGenerateFileName.getAbsolutePath();
                saveFileFromUri(uri, context, absolutePath2);
                return absolutePath2;
            }
            if (isMediaDocument(uri)) {
                String docId2 = DocumentsContract.getDocumentId(uri);
                Intrinsics.checkNotNullExpressionValue(docId2, "docId");
                List<String> listSplit2 = new Regex(":").split(docId2, 0);
                if (!listSplit2.isEmpty()) {
                    ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                    while (listIterator2.hasPrevious()) {
                        if (listIterator2.previous().length() != 0) {
                            listEmptyList = CollectionsKt.take(listSplit2, listIterator2.nextIndex() + 1);
                            break;
                        }
                    }
                    listEmptyList = CollectionsKt.emptyList();
                } else {
                    listEmptyList = CollectionsKt.emptyList();
                }
                String[] strArr3 = (String[]) listEmptyList.toArray(new String[0]);
                String str2 = strArr3[0];
                if (Intrinsics.areEqual(AadharScanUtil.IMAGE, str2)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if (Intrinsics.areEqual("video", str2)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if (Intrinsics.areEqual("audio", str2)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                } else {
                    try {
                        File cacheDir = context.getCacheDir();
                        Intrinsics.checkNotNullExpressionValue(cacheDir, "cacheDir");
                        File fileGenerateFileName2 = generateFileName(cacheDir, getFileName(context, uri));
                        fileOutputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                        try {
                            InputStream inputStream2 = fileOutputStreamOpenInputStream;
                            fileOutputStreamOpenInputStream = new FileOutputStream(fileGenerateFileName2);
                            try {
                                FileOutputStream fileOutputStream2 = fileOutputStreamOpenInputStream;
                                byte[] bArr2 = new byte[Data.MAX_DATA_BYTES];
                                while (true) {
                                    Integer numValueOf2 = inputStream2 != null ? Integer.valueOf(inputStream2.read(bArr2)) : null;
                                    int iIntValue2 = numValueOf2 != null ? numValueOf2.intValue() : 0;
                                    if (numValueOf2 != null && numValueOf2.intValue() == -1) {
                                        break;
                                    }
                                    fileOutputStream2.write(bArr2, 0, iIntValue2);
                                }
                                fileOutputStream2.flush();
                                String absolutePath3 = fileGenerateFileName2 != null ? fileGenerateFileName2.getAbsolutePath() : null;
                                CloseableKt.closeFinally(fileOutputStreamOpenInputStream, null);
                                CloseableKt.closeFinally(fileOutputStreamOpenInputStream, null);
                                return absolutePath3;
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                return getDataColumn(context, uri2, "_id=?", new String[]{strArr3[1]});
            }
        } else {
            String scheme = uri.getScheme();
            Intrinsics.checkNotNull(scheme);
            if (StringsKt.equals(FirebaseAnalytics.Param.CONTENT, scheme, true)) {
                if (isGooglePhotosUri(uri)) {
                    return uri.getLastPathSegment();
                }
                if (isGooglePhotosContentProviderUri(uri)) {
                    return null;
                }
                return getDataColumn(context, uri, null, null);
            }
            if (StringsKt.equals("file", uri.getScheme(), true)) {
                return uri.getPath();
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x006f A[Catch: IOException -> 0x006b, TRY_LEAVE, TryCatch #8 {IOException -> 0x006b, blocks: (B:36:0x0067, B:40:0x006f), top: B:47:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void saveFileFromUri(android.net.Uri r3, android.content.Context r4, java.lang.String r5) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "destinationPath"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            r0 = 0
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
            java.io.InputStream r3 = r4.openInputStream(r3)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
            java.io.BufferedOutputStream r4 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4d
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4d
            r2 = 0
            r1.<init>(r5, r2)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4d
            java.io.OutputStream r1 = (java.io.OutputStream) r1     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4d
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4d
            r5 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r5]     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L47
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L47
            r3.read(r5)     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L47
        L2f:
            r4.write(r5)     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L47
            int r0 = r3.read(r5)     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L47
            r1 = -1
            if (r0 != r1) goto L2f
            r3.close()     // Catch: java.io.IOException -> L40
            r4.close()     // Catch: java.io.IOException -> L40
            goto L63
        L40:
            r3 = move-exception
            r3.printStackTrace()
            goto L63
        L45:
            r5 = move-exception
            goto L4b
        L47:
            r5 = move-exception
            goto L4f
        L49:
            r5 = move-exception
            r4 = r0
        L4b:
            r0 = r3
            goto L65
        L4d:
            r5 = move-exception
            r4 = r0
        L4f:
            r0 = r3
            goto L56
        L51:
            r5 = move-exception
            r4 = r0
            goto L65
        L54:
            r5 = move-exception
            r4 = r0
        L56:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L64
            if (r0 == 0) goto L5e
            r0.close()     // Catch: java.io.IOException -> L40
        L5e:
            if (r4 == 0) goto L63
            r4.close()     // Catch: java.io.IOException -> L40
        L63:
            return
        L64:
            r5 = move-exception
        L65:
            if (r0 == 0) goto L6d
            r0.close()     // Catch: java.io.IOException -> L6b
            goto L6d
        L6b:
            r3 = move-exception
            goto L73
        L6d:
            if (r4 == 0) goto L76
            r4.close()     // Catch: java.io.IOException -> L6b
            goto L76
        L73:
            r3.printStackTrace()
        L76:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FileUtilsNewKt.saveFileFromUri(android.net.Uri, android.content.Context, java.lang.String):void");
    }

    public static final String getFileExtension(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "path");
        if (StringsKt.lastIndexOf$default((CharSequence) path, ".", 0, false, 6, (Object) null) < 0) {
            return "";
        }
        String path2 = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path2, "path");
        String path3 = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path3, "path");
        String strSubstring = path2.substring(StringsKt.lastIndexOf$default((CharSequence) path3, ".", 0, false, 6, (Object) null));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final String getFileExtension(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        String str = path;
        if (StringsKt.lastIndexOf$default((CharSequence) str, ".", 0, false, 6, (Object) null) < 0) {
            return "";
        }
        String strSubstring = path.substring(StringsKt.lastIndexOf$default((CharSequence) str, ".", 0, false, 6, (Object) null));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final boolean isLocal(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "path");
        if (StringsKt.startsWith$default(path, "http:", false, 2, (Object) null)) {
            return false;
        }
        String path2 = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path2, "path");
        return !StringsKt.startsWith$default(path2, "https:", false, 2, (Object) null);
    }

    public static final boolean isLocal(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return (StringsKt.startsWith$default(str, "http:", false, 2, (Object) null) || StringsKt.startsWith$default(str, "https:", false, 2, (Object) null)) ? false : true;
    }

    public static final Uri getUri(Context context, File file) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(file, "file");
        Uri uriFromFile = Uri.fromFile(file);
        Intrinsics.checkNotNullExpressionValue(uriFromFile, "fromFile(file)");
        return uriFromFile;
    }

    public static final String getPathWithoutFileName(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (file.isDirectory()) {
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "absolutePath");
            return absolutePath;
        }
        String name = file.getName();
        String filePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(filePath, "filePath");
        String strSubstring = filePath.substring(0, filePath.length() - name.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        if (!StringsKt.endsWith$default(strSubstring, "/", false, 2, (Object) null)) {
            return strSubstring;
        }
        String strSubstring2 = strSubstring.substring(0, strSubstring.length() - 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring2;
    }

    public static final String getMimeType(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String fileExtension = getFileExtension(file);
        if (fileExtension.length() > 0) {
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            String strSubstring = fileExtension.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            return singleton.getMimeTypeFromExtension(strSubstring).toString();
        }
        return "application/octet-stream";
    }

    public static final boolean isLocalStorageDocument(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual(AUTHORITY, uri.getAuthority());
    }

    public static final boolean isExternalStorageDocument(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual(uri.getAuthority(), "com.android.externalstorage.documents");
    }

    public static final boolean isDownloadsDocument(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual("com.android.providers.downloads.documents", uri.getAuthority());
    }

    public static final boolean isMediaDocument(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual("com.android.providers.media.documents", uri.getAuthority());
    }

    public static final boolean isGooglePhotosUri(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual("com.google.android.apps.photos.content", uri.getAuthority());
    }

    public static final boolean isGooglePhotosContentProviderUri(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual("com.google.android.apps.photos.contentprovider", uri.getAuthority());
    }

    public static final String getDataColumn(Context context, Uri uri, String str, String[] strArr) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        ContentResolver contentResolver = context.getContentResolver();
        Intrinsics.checkNotNull(uri);
        Cursor cursorQuery = contentResolver.query(uri, new String[]{"_data"}, str, strArr, null);
        if (cursorQuery != null) {
            Cursor cursor = cursorQuery;
            try {
                Cursor cursor2 = cursor;
                if (cursor2.moveToFirst()) {
                    String string = cursor2.getString(cursor2.getColumnIndexOrThrow("_data"));
                    CloseableKt.closeFinally(cursor, null);
                    return string;
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(cursor, null);
            } finally {
            }
        }
        return null;
    }

    public static /* synthetic */ String getReadableFileSize$default(File file, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return getReadableFileSize(file, z);
    }

    public static final String getReadableFileSize(File file, boolean z) {
        float length;
        Intrinsics.checkNotNullParameter(file, "<this>");
        DecimalFormat decimalFormat = new DecimalFormat("###.#");
        long j = 1024;
        String str = " KB";
        if (file.length() > j) {
            length = file.length() / j;
            float f = 1024;
            if (length > f) {
                length /= f;
                if (length > f) {
                    length /= f;
                    str = " GB";
                } else {
                    str = " MB";
                }
            }
        } else {
            length = 0.0f;
        }
        if (z) {
            return decimalFormat.format(length) + str;
        }
        String str2 = decimalFormat.format(length);
        Intrinsics.checkNotNullExpressionValue(str2, "{\n        dec.format(fileSize.toDouble())\n    }");
        return str2;
    }

    public static final Intent getViewIntent(Context context, File file) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(file, "file");
        Uri uri = getUri(context, file);
        Intent intent = new Intent("android.intent.action.VIEW");
        String string = context.toString();
        if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".doc", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".docx", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "application/msword");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".pdf", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "application/pdf");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".ppt", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".pptx", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "application/vnd.ms-powerpoint");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".xls", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".xlsx", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "application/vnd.ms-excel");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".zip", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".rar", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "application/x-wav");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".rtf", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "application/rtf");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".wav", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".mp3", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "audio/x-wav");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".gif", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "image/gif");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) GlobalTypes.IMAGE_CAPTURE_FORMAT, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".jpeg", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".png", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "image/jpeg");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".txt", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "text/plain");
        } else if (StringsKt.contains$default((CharSequence) string, (CharSequence) ".3gp", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".mpg", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".mpeg", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".mpe", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".mp4", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) string, (CharSequence) ".avi", false, 2, (Object) null)) {
            intent.setDataAndType(uri, "video/*");
        } else {
            intent.setDataAndType(uri, "*/*");
        }
        intent.addFlags(268435456);
        intent.addFlags(1);
        intent.addFlags(2);
        return intent;
    }

    public static final File getDownloadDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
    }

    public static final File getDocumentCacheDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        File file = new File(Environment.getExternalStorageDirectory().toString() + "/Download/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static final File generateFileName(File directory, String str) {
        String str2;
        Intrinsics.checkNotNullParameter(directory, "directory");
        String str3 = str;
        if (str3 != null && str3.length() != 0) {
            File file = new File(directory, str);
            if (file.exists()) {
                int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str3, '.', 0, false, 6, (Object) null);
                int i = 0;
                if (iLastIndexOf$default <= 0) {
                    str2 = "";
                } else {
                    String strSubstring = str.substring(0, iLastIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    String strSubstring2 = str.substring(iLastIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
                    str2 = strSubstring2;
                    str = strSubstring;
                }
                while (file.exists()) {
                    i++;
                    file = new File(directory, str + '(' + i + ')' + str2);
                }
            }
            try {
                if (file.createNewFile()) {
                    return file;
                }
                return null;
            } catch (IOException unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final byte[] readBytesFromFile(java.lang.String r4) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            long r2 = r1.length()     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            int r4 = (int) r2     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L29
            r2.<init>(r1)     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L29
            r2.read(r4)     // Catch: java.io.IOException -> L23 java.lang.Throwable -> L38
            r2.close()     // Catch: java.io.IOException -> L1e
            goto L37
        L1e:
            r0 = move-exception
            r0.printStackTrace()
            goto L37
        L23:
            r0 = move-exception
            goto L2f
        L25:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L2f
        L29:
            r4 = move-exception
            goto L3a
        L2b:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
        L2f:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L38
            if (r2 == 0) goto L37
            r2.close()     // Catch: java.io.IOException -> L1e
        L37:
            return r4
        L38:
            r4 = move-exception
            r0 = r2
        L3a:
            if (r0 == 0) goto L44
            r0.close()     // Catch: java.io.IOException -> L40
            goto L44
        L40:
            r0 = move-exception
            r0.printStackTrace()
        L44:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FileUtilsNewKt.readBytesFromFile(java.lang.String):byte[]");
    }

    public static /* synthetic */ File createTempImageFile$default(Context context, String str, String str2, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            str2 = GlobalTypes.IMAGE_CAPTURE_FORMAT;
        }
        return createTempImageFile(context, str, str2);
    }

    public static final File createTempImageFile(Context context, String fileName, String extension) throws IOException {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(extension, "extension");
        File fileCreateTempFile = File.createTempFile(fileName, extension, new File(context.getCacheDir(), DOCUMENTS_DIR));
        Intrinsics.checkNotNullExpressionValue(fileCreateTempFile, "createTempFile(fileName, extension, storageDir)");
        return fileCreateTempFile;
    }

    public static final String getFileName(Context context, Uri uri) throws Throwable {
        String string;
        String name;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
        if (cursorQuery != null) {
            int columnIndex = cursorQuery.getColumnIndex("_display_name");
            cursorQuery.moveToFirst();
            string = cursorQuery.getString(columnIndex);
            cursorQuery.close();
        } else {
            string = null;
        }
        if (string == null) {
            String path = getPath(context, uri);
            if (path == null) {
                name = getFileName(context.toString());
            } else {
                name = new File(path).getName();
            }
            string = name;
        }
        return string == null ? String.valueOf(System.currentTimeMillis()) : string;
    }

    public static final File getFile(Context context, Uri uri) throws Throwable {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        String path = getPath(context, uri);
        Intrinsics.checkNotNull(path);
        if (isLocal(path)) {
            return new File(path);
        }
        return null;
    }

    public static final String getFileName(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (isLocal(str)) {
            String strSubstring = str.substring(StringsKt.lastIndexOf$default((CharSequence) str, '/', 0, false, 6, (Object) null) + 1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            return strSubstring;
        }
        return "";
    }

    public static final long getFileSize(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        if (isLocal(file)) {
            return file.length();
        }
        return 0L;
    }
}
