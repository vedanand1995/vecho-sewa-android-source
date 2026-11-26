package com.argusoft.sewa.android.app.support;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class SupportPhotos {
    private static final int LONG_SIDE = 1600;

    private SupportPhotos() {
    }

    public static File copy(Context context, Uri uri) throws IOException {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                if (options.outWidth > 0 && options.outHeight > 0) {
                    int i = 1;
                    while (true) {
                        int i2 = i * 2;
                        if (Math.max(options.outWidth, options.outHeight) / i2 < LONG_SIDE) {
                            break;
                        }
                        i = i2;
                    }
                    BitmapFactory.Options options2 = new BitmapFactory.Options();
                    options2.inSampleSize = i;
                    inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                    try {
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options2);
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream.close();
                        }
                        if (bitmapDecodeStream == null) {
                            return null;
                        }
                        int iMax = Math.max(bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight());
                        if (iMax > LONG_SIDE) {
                            float f = 1600.0f / iMax;
                            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeStream, Math.round(bitmapDecodeStream.getWidth() * f), Math.round(bitmapDecodeStream.getHeight() * f), true);
                            bitmapDecodeStream.recycle();
                            bitmapDecodeStream = bitmapCreateScaledBitmap;
                        }
                        File file = new File(context.getFilesDir(), SupportLabels.SUPPORT);
                        file.mkdirs();
                        File file2 = new File(file, "photo_" + System.currentTimeMillis() + GlobalTypes.IMAGE_CAPTURE_FORMAT);
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        try {
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
                            fileOutputStream.close();
                            bitmapDecodeStream.recycle();
                            return file2;
                        } finally {
                        }
                    } finally {
                    }
                }
                return null;
            } finally {
            }
        } catch (Exception e) {
            Log.e("SupportPhotos", "Could not take the photo", e);
            return null;
        }
    }

    public static Bitmap thumbnail(File file, int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        while (true) {
            int i3 = i2 * 2;
            if (Math.min(options.outWidth, options.outHeight) / i3 < i) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = i2;
                return BitmapFactory.decodeFile(file.getAbsolutePath(), options2);
            }
            i2 = i3;
        }
    }
}
