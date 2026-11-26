package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
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
import java.util.Date;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public class CustomPhotoCaptureActivity extends MenuActivity implements Camera.PictureCallback {
    private static final int CHOOSE_PHOTO_FROM_GALLERY = 101;
    private final CustomPhotoCaptureActivity currentActivity = this;
    private Camera mCamera;
    Bitmap photo;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().addFlags(128);
        super.onCreate(bundle);
        setContentView(R.layout.photo_capture);
        this.mCamera = getCameraInstance();
        ((FrameLayout) findViewById(R.id.camera_preview)).addView(new CameraPreview(this, this.mCamera));
        Button button = (Button) findViewById(R.id.button_capture);
        Button button2 = (Button) findViewById(R.id.button_upload);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CustomPhotoCaptureActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    CustomPhotoCaptureActivity.this.mCamera.takePicture(null, null, CustomPhotoCaptureActivity.this.currentActivity);
                } catch (Exception e) {
                    SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_CAMERA);
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CustomPhotoCaptureActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                intent.setType("image/*");
                CustomPhotoCaptureActivity.this.startActivityForResult(intent, CustomPhotoCaptureActivity.CHOOSE_PHOTO_FROM_GALLERY);
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        setTitle(LabelConstants.TECHO_PLUS_CAMERA);
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
    public void onPictureTaken(byte[] bArr, Camera camera) {
        try {
            this.photo = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            if (getResources().getConfiguration().orientation == 1) {
                this.photo = rotateBitmap(this.photo, 90.0f);
            }
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(this.photo, getResources().getDisplayMetrics().densityDpi, getResources().getDisplayMetrics().densityDpi * 2, false);
            String str = "IMG_" + new Date().getTime() + GlobalTypes.IMAGE_CAPTURE_FORMAT;
            String strConvertBitmapToFile = FileUtils.getInstance().convertBitmapToFile(this.photo, SewaConstants.DIR_IMAGE + str);
            QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
            if (queFormBean != null) {
                String string = UUID.randomUUID().toString();
                if (strConvertBitmapToFile != null) {
                    if (queFormBean.getLength() < 1) {
                        ImageView imageView = (ImageView) ((LinearLayout) queFormBean.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY);
                        imageView.setVisibility(0);
                        imageView.setImageBitmap(bitmapCreateScaledBitmap);
                        queFormBean.setAnswer(string);
                        SharedStructureData.imageFilesToUpload.put(string, str);
                    } else {
                        ImageGridLayoutAdapter imageGridLayoutAdapter = (ImageGridLayoutAdapter) Objects.requireNonNull(((RecyclerView) ((View) queFormBean.getQuestionTypeView()).findViewById(R.id.recyclerView)).getAdapter());
                        imageGridLayoutAdapter.addImage(string, str, null, false);
                        SharedStructureData.imageFilesToUpload.put(string, str);
                        queFormBean.setAnswer(imageGridLayoutAdapter.getUniqueIdList());
                    }
                    SewaUtil.generateToast(this, LabelConstants.PHOTO_CAPTURED);
                } else {
                    SewaUtil.generateToast(this, LabelConstants.PHOTO_CAPTURED_FAILED);
                }
            }
            finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private Bitmap rotateBitmap(Bitmap bitmap, float f) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        if (i == CHOOSE_PHOTO_FROM_GALLERY && i2 == -1) {
            Uri data = intent.getData();
            String str = "IMG_" + new Date().getTime() + GlobalTypes.IMAGE_CAPTURE_FORMAT;
            String path = FileUtilsNewKt.getPath(this.context, data);
            QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
            if (queFormBean != null) {
                String string = UUID.randomUUID().toString();
                if (path != null) {
                    if (queFormBean.getLength() < 1) {
                        ImageView imageView = (ImageView) ((LinearLayout) queFormBean.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY);
                        imageView.setVisibility(0);
                        imageView.setImageURI(data);
                        queFormBean.setAnswer(string);
                        SharedStructureData.imageFilesToUpload.put(string, str);
                    } else {
                        ImageGridLayoutAdapter imageGridLayoutAdapter = (ImageGridLayoutAdapter) Objects.requireNonNull(((RecyclerView) ((View) queFormBean.getQuestionTypeView()).findViewById(R.id.recyclerView)).getAdapter());
                        imageGridLayoutAdapter.addImage(string, str, data, true);
                        SharedStructureData.imageFilesToUpload.put(string, str);
                        queFormBean.setAnswer(imageGridLayoutAdapter.getUniqueIdList());
                    }
                    SewaUtil.generateToast(this, LabelConstants.PHOTO_CAPTURED);
                } else {
                    SewaUtil.generateToast(this, LabelConstants.PHOTO_CAPTURED_FAILED);
                }
            }
            finish();
        }
    }
}
