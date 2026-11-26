package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.firebase.messaging.Constants;
import java.io.IOException;
import java.util.Date;

/* loaded from: classes.dex */
public class SamplePhotoPickerActivity extends MenuActivity {
    private static final int CAMERA_REQUEST = 2;
    private static final int PICK_IMAGE_REQUEST = 1;
    private ImageView imageView;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        QueFormBean queFormBean = new QueFormBean();
        queFormBean.setLength(1);
        queFormBean.setId(1);
        queFormBean.setLoopCounter(0);
        setContentView(MyDynamicComponents.getPhotoPicker(queFormBean, this.context, -1));
    }

    private void openCamera() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(intent, 2);
        }
    }

    private void openGallery() {
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        startActivityForResult(intent, 1);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws IOException {
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1) {
            try {
                this.imageView.setImageBitmap(MediaStore.Images.Media.getBitmap(getContentResolver(), intent.getData()));
                return;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        if (i == 2 && i2 == -1) {
            this.imageView.setImageBitmap((Bitmap) intent.getExtras().get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
            return;
        }
        if (i == 15555) {
            try {
                if (i2 == -1) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        Bitmap bitmap = (Bitmap) extras.get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                        if (queFormBean != null) {
                            ImageView imageView = (ImageView) ((LinearLayout) queFormBean.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY);
                            imageView.setVisibility(0);
                            imageView.setImageBitmap(bitmap);
                            queFormBean.setAnswer(SewaTransformer.loginBean.getUsername() + "_" + SharedStructureData.currentQuestion + "_" + new Date().getTime() + GlobalTypes.IMAGE_CAPTURE_FORMAT);
                            SewaUtil.generateToast(this, LabelConstants.PHOTO_CAPTURED);
                            return;
                        }
                        return;
                    }
                    return;
                }
                QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(SharedStructureData.currentQuestion));
                if (queFormBean2 != null) {
                    ((ImageView) ((LinearLayout) queFormBean2.getQuestionTypeView()).findViewById(GlobalTypes.PHOTO_CAPTURE_ACTIVITY)).setVisibility(8);
                    queFormBean2.setAnswer(null);
                }
                SewaUtil.generateToast(this, LabelConstants.FAILED_TO_TAKE_PHOTO);
            } catch (Exception e2) {
                System.out.println("????????????????????");
                Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
            }
        }
    }
}
