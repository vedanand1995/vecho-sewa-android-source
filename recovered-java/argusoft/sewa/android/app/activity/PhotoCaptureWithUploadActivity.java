package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.ImageGridLayoutAdapter;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.FileUtils;
import com.argusoft.sewa.android.app.util.FileUtilsNewKt;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.j256.ormlite.field.FieldType;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public class PhotoCaptureWithUploadActivity extends MenuActivity implements Camera.PictureCallback {
    private static final int CHOOSE_PHOTO_FROM_GALLERY = 101;
    private static int currentCameraId;
    private final Context context = this;
    private final PhotoCaptureWithUploadActivity currentActivity = this;
    private Camera mCamera;
    private MyCameraPreview myCameraPreview;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().addFlags(128);
        super.onCreate(bundle);
        setContentView(R.layout.photo_capture_with_upload);
        this.mCamera = getCameraInstance();
        this.myCameraPreview = new MyCameraPreview(this.context, this.mCamera);
        final FrameLayout frameLayout = (FrameLayout) findViewById(R.id.camera_preview);
        frameLayout.addView(this.myCameraPreview);
        ((ImageButton) findViewById(R.id.button_capture)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m476xe60d2ca5(view);
            }
        });
        ImageButton imageButton = (ImageButton) findViewById(R.id.button_upload);
        setLastImageForUpload(imageButton);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m477xc938dfe6(frameLayout, view);
            }
        });
        final ImageButton imageButton2 = (ImageButton) findViewById(R.id.button_switch);
        if (Camera.getNumberOfCameras() == 1) {
            imageButton2.setVisibility(4);
        } else {
            imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws IOException {
                    this.f$0.m478xac649327(imageButton2, view);
                }
            });
        }
    }

    /* renamed from: lambda$onCreate$0$com-argusoft-sewa-android-app-activity-PhotoCaptureWithUploadActivity, reason: not valid java name */
    /* synthetic */ void m476xe60d2ca5(View view) {
        try {
            this.mCamera.takePicture(null, null, this.currentActivity);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_CAMERA);
        }
    }

    /* renamed from: lambda$onCreate$1$com-argusoft-sewa-android-app-activity-PhotoCaptureWithUploadActivity, reason: not valid java name */
    /* synthetic */ void m477xc938dfe6(FrameLayout frameLayout, View view) {
        MyCameraPreview myCameraPreview = this.myCameraPreview;
        myCameraPreview.surfaceDestroyed(myCameraPreview.getHolder());
        this.myCameraPreview.getHolder().removeCallback(this.myCameraPreview);
        this.myCameraPreview.destroyDrawingCache();
        frameLayout.removeAllViews();
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        startActivityForResult(intent, CHOOSE_PHOTO_FROM_GALLERY);
    }

    /* renamed from: lambda$onCreate$2$com-argusoft-sewa-android-app-activity-PhotoCaptureWithUploadActivity, reason: not valid java name */
    /* synthetic */ void m478xac649327(final ImageButton imageButton, View view) throws IOException {
        imageButton.startAnimation(AnimationUtils.loadAnimation(this, R.anim.rotate));
        try {
            this.mCamera.stopPreview();
            this.mCamera.release();
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
        }
        if (currentCameraId == 0) {
            currentCameraId = 1;
        } else {
            currentCameraId = 0;
        }
        Camera cameraOpen = Camera.open(currentCameraId);
        this.mCamera = cameraOpen;
        setCameraDisplayOrientation(this.currentActivity, currentCameraId, cameraOpen);
        try {
            this.mCamera.setPreviewDisplay(this.myCameraPreview.getHolder());
        } catch (IOException e2) {
            Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
        }
        this.mCamera.startPreview();
        Handler handler = new Handler();
        Objects.requireNonNull(imageButton);
        handler.postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                imageButton.clearAnimation();
            }
        }, 500L);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    public static void setCameraDisplayOrientation(Activity activity, int i, Camera camera) {
        int i2;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        int i3 = 0;
        if (rotation != 0) {
            if (rotation == 1) {
                i3 = 90;
            } else if (rotation == 2) {
                i3 = 180;
            } else if (rotation == 3) {
                i3 = 270;
            }
        }
        if (cameraInfo.facing == 1) {
            i2 = (360 - ((cameraInfo.orientation + i3) % 360)) % 360;
        } else {
            i2 = ((cameraInfo.orientation - i3) + 360) % 360;
        }
        camera.setDisplayOrientation(i2);
    }

    private void setLastImageForUpload(ImageButton imageButton) {
        Cursor cursorQuery = this.context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, "_data", "bucket_display_name", "datetaken", "mime_type"}, null, null, "datetaken DESC");
        if (cursorQuery.moveToFirst()) {
            String string = cursorQuery.getString(1);
            if (new File(string).exists()) {
                imageButton.setImageBitmap(Bitmap.createScaledBitmap(BitmapFactory.decodeFile(string), getResources().getDisplayMetrics().densityDpi * 8, getResources().getDisplayMetrics().densityDpi * 8, false));
            }
        }
    }

    private Camera getCameraInstance() {
        try {
            return Camera.open();
        } catch (Exception e) {
            Log.e(getClass().getName(), null, e);
            return null;
        }
    }

    @Override // android.hardware.Camera.PictureCallback
    public void onPictureTaken(byte[] bArr, Camera camera) throws Throwable {
        try {
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            if (getResources().getConfiguration().orientation == 1) {
                bitmapDecodeByteArray = rotateBitmap(bitmapDecodeByteArray, 90.0f);
            }
            storeImage(bitmapDecodeByteArray, null);
            try {
                this.mCamera.stopPreview();
                this.mCamera.release();
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
            }
            finish();
        } catch (Exception e2) {
            Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        if (i == CHOOSE_PHOTO_FROM_GALLERY) {
            if (i2 == -1) {
                storeImage(null, intent.getData());
                finish();
            } else {
                SewaUtil.generateToast(this.context, LabelConstants.PHOTO_CAPTURED_FAILED);
                this.mCamera = getCameraInstance();
                this.myCameraPreview = new MyCameraPreview(this.context, this.mCamera);
                ((FrameLayout) findViewById(R.id.camera_preview)).addView(this.myCameraPreview);
            }
        }
    }

    private void storeImage(Bitmap bitmap, Uri uri) throws Throwable {
        QueFormBean queFormBean;
        QueFormBean queFormBean2;
        String str = "IMG_" + new Date().getTime() + GlobalTypes.IMAGE_CAPTURE_FORMAT;
        System.out.println("??????? Photo Name " + str);
        if (bitmap == null) {
            if (uri != null) {
                String path = FileUtilsNewKt.getPath(this.context, uri);
                if (SharedStructureData.currentQuestion == -1 || SharedStructureData.mapIndexQuestion == null || (queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion))) == null) {
                    return;
                }
                String string = UUID.randomUUID().toString();
                if (path != null) {
                    if (queFormBean.getLength() < 1) {
                        ImageView imageView = (ImageView) ((LinearLayout) queFormBean.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY);
                        imageView.setVisibility(0);
                        imageView.setImageURI(uri);
                        queFormBean.setAnswer(string);
                        SharedStructureData.imageFilesToUpload.put(string, str);
                    } else {
                        ImageGridLayoutAdapter imageGridLayoutAdapter = (ImageGridLayoutAdapter) Objects.requireNonNull(((RecyclerView) ((View) queFormBean.getQuestionTypeView()).findViewById(R.id.recyclerView)).getAdapter());
                        imageGridLayoutAdapter.addImage(string, str, uri, true);
                        SharedStructureData.imageFilesToUpload.put(string, str);
                        queFormBean.setAnswer(imageGridLayoutAdapter.getUniqueIdList());
                    }
                    SewaUtil.generateToast(this.context, LabelConstants.PHOTO_CAPTURED);
                    return;
                }
                SewaUtil.generateToast(this.context, LabelConstants.PLEASE_TRY_WITH_DIFFERENT_GALLERY_APP);
                return;
            }
            SewaUtil.generateToast(this.context, LabelConstants.PHOTO_CAPTURED_FAILED);
            return;
        }
        String strConvertBitmapToFile = FileUtils.getInstance().convertBitmapToFile(bitmap, SewaConstants.DIR_IMAGE + str);
        System.out.println("??????? Path " + strConvertBitmapToFile);
        if (SharedStructureData.currentQuestion == -1 || SharedStructureData.mapIndexQuestion == null || (queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion))) == null) {
            return;
        }
        String string2 = UUID.randomUUID().toString();
        if (strConvertBitmapToFile != null) {
            if (queFormBean2.getLength() < 1) {
                ImageView imageView2 = (ImageView) ((LinearLayout) queFormBean2.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY);
                imageView2.setVisibility(0);
                imageView2.setImageBitmap(Bitmap.createScaledBitmap(bitmap, getResources().getDisplayMetrics().densityDpi, getResources().getDisplayMetrics().densityDpi * 2, false));
                queFormBean2.setAnswer(string2);
                System.out.println("??????? UniqueId " + string2);
                SharedStructureData.imageFilesToUpload.put(string2, str);
            } else {
                ImageGridLayoutAdapter imageGridLayoutAdapter2 = (ImageGridLayoutAdapter) Objects.requireNonNull(((RecyclerView) ((View) queFormBean2.getQuestionTypeView()).findViewById(R.id.recyclerView)).getAdapter());
                imageGridLayoutAdapter2.addImage(string2, str, null, false);
                SharedStructureData.imageFilesToUpload.put(string2, str);
                queFormBean2.setAnswer(imageGridLayoutAdapter2.getUniqueIdList());
            }
            SewaUtil.generateToast(this.context, LabelConstants.PHOTO_CAPTURED);
            return;
        }
        SewaUtil.generateToast(this.context, LabelConstants.PHOTO_CAPTURED_FAILED);
    }

    private Bitmap rotateBitmap(Bitmap bitmap, float f) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    class MyCameraPreview extends SurfaceView implements SurfaceHolder.Callback {
        private Camera mCamera;

        public MyCameraPreview(Context context, Camera camera) {
            super(context);
            this.mCamera = camera;
            SurfaceHolder holder = getHolder();
            holder.addCallback(this);
            holder.setType(3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) throws IOException {
            try {
                this.mCamera.setPreviewDisplay(surfaceHolder);
                if (getResources().getConfiguration().orientation == 1) {
                    this.mCamera.setDisplayOrientation(90);
                }
                this.mCamera.startPreview();
            } catch (IOException unused) {
                Log.e(getClass().getName(), null);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            try {
                Camera camera = this.mCamera;
                if (camera != null) {
                    camera.stopPreview();
                    this.mCamera.release();
                    this.mCamera = null;
                }
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), e.getMessage());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) throws IOException {
            try {
                this.mCamera.setPreviewDisplay(surfaceHolder);
                this.mCamera.startPreview();
            } catch (Exception e) {
                Log.e(getClass().getName(), null, e);
            }
        }
    }
}
