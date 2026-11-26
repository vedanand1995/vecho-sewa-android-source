package com.argusoft.sewa.android.app.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.media.ExifInterface;
import android.os.AsyncTask;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageCompression extends AsyncTask<String, Void, String> {
    private static final float maxHeight = 1280.0f;
    private static final float maxWidth = 1280.0f;
    private int actualHeight;
    private int actualWidth;
    private Context context;
    private ImageCompressionListener imageCompressionListener;

    public interface ImageCompressionListener {
        void onImageCompression(String str, int i, int i2);
    }

    public ImageCompression(Context context) {
        this.context = context;
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int iRound;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 > i2 || i4 > i) {
            iRound = Math.round(i3 / i2);
            int iRound2 = Math.round(i4 / i);
            if (iRound >= iRound2) {
                iRound = iRound2;
            }
        } else {
            iRound = 1;
        }
        while ((i4 * i3) / (iRound * iRound) > i * i2 * 2) {
            iRound++;
        }
        return iRound;
    }

    public ImageCompression setImageCompressionListener(ImageCompressionListener imageCompressionListener) {
        this.imageCompressionListener = imageCompressionListener;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) {
        String str;
        if (strArr.length == 0 || (str = strArr[0]) == null) {
            return null;
        }
        return compressImage(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        ImageCompressionListener imageCompressionListener = this.imageCompressionListener;
        if (imageCompressionListener != null) {
            imageCompressionListener.onImageCompression(str, this.actualWidth, this.actualHeight);
        }
    }

    public String compressImage(String str) {
        Bitmap bitmapCreateBitmap;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        this.actualHeight = options.outHeight;
        int i = options.outWidth;
        this.actualWidth = i;
        int i2 = this.actualHeight;
        float f = i / i2;
        if (i2 > 1280.0f || i > 1280.0f) {
            if (f < 1.0f) {
                this.actualWidth = (int) ((1280.0f / i2) * i);
                this.actualHeight = 1280;
            } else if (f > 1.0f) {
                this.actualHeight = (int) ((1280.0f / i) * i2);
                this.actualWidth = 1280;
            } else {
                this.actualHeight = 1280;
                this.actualWidth = 1280;
            }
        }
        options.inSampleSize = calculateInSampleSize(options, this.actualWidth, this.actualHeight);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inTempStorage = new byte[16384];
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(this.actualWidth, this.actualHeight, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            bitmapCreateBitmap = null;
        }
        float f2 = this.actualWidth / options.outWidth;
        float f3 = this.actualHeight / options.outHeight;
        float f4 = this.actualWidth / 2.0f;
        float f5 = this.actualHeight / 2.0f;
        Matrix matrix = new Matrix();
        matrix.setScale(f2, f3, f4, f5);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.setMatrix(matrix);
        canvas.drawBitmap(bitmapDecodeFile, f4 - (bitmapDecodeFile.getWidth() / 2), f5 - (bitmapDecodeFile.getHeight() / 2), new Paint(2));
        if (bitmapDecodeFile != null) {
            bitmapDecodeFile.recycle();
        }
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 0);
            Matrix matrix2 = new Matrix();
            if (attributeInt == 6) {
                matrix2.postRotate(90.0f);
            } else if (attributeInt == 3) {
                matrix2.postRotate(180.0f);
            } else if (attributeInt == 8) {
                matrix2.postRotate(270.0f);
            }
            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix2, true);
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        String filename = getFilename();
        try {
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(filename));
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
        }
        return filename;
    }

    private Bitmap rotateBitmap(Bitmap bitmap, float f) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public String getFilename() {
        File file = new File(SewaConstants.DIR_IMAGE);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath() + "/" + ("IMG_" + String.valueOf(System.currentTimeMillis()) + GlobalTypes.IMAGE_CAPTURE_FORMAT);
    }
}
