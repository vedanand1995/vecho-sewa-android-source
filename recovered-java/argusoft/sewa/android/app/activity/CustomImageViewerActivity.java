package com.argusoft.sewa.android.app.activity;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LMSFeedbackComponent;
import com.argusoft.sewa.android.app.component.ZoomImage;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import java.util.Date;

/* loaded from: classes.dex */
public class CustomImageViewerActivity extends MenuActivity {
    private Integer courseId;
    private LMSFeedbackComponent feedbackAlert;
    private Boolean fromLms = false;
    private LmsLessonDataBean lesson;
    LmsServiceImpl lmsService;
    private String path;
    private Date startDate;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        getWindow().addFlags(128);
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.path = extras.getString("path");
            this.fromLms = Boolean.valueOf(extras.getBoolean("fromLms"));
            if (Boolean.TRUE.equals(this.fromLms)) {
                this.courseId = Integer.valueOf(extras.getInt(FieldNameConstants.COURSE_ID));
                String string = extras.getString("lesson");
                this.startDate = new Date();
                if (string != null) {
                    LmsLessonDataBean lmsLessonDataBean = (LmsLessonDataBean) new Gson().fromJson(string, LmsLessonDataBean.class);
                    this.lesson = lmsLessonDataBean;
                    this.lmsService.updateStartDateForMedia(this.startDate, lmsLessonDataBean.getActualId(), this.lesson.getTopicId(), this.courseId);
                    return;
                }
                return;
            }
            return;
        }
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        initView();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        LmsViewedMediaBean viewedLessonById;
        if (Boolean.TRUE.equals(this.fromLms)) {
            Date date = new Date();
            this.lmsService.updateEndDateForMedia(date, this.lesson.getActualId(), this.lesson.getTopicId(), this.courseId);
            this.lmsService.addSessionsForMedia(this.startDate, date, this.lesson.getActualId(), this.lesson.getTopicId(), this.courseId);
            this.lmsService.markLessonCompleted(this.lesson.getActualId(), this.lesson.getTopicId(), this.courseId);
            if (Boolean.TRUE.equals(this.lesson.getUserFeedbackRequired()) && (viewedLessonById = this.lmsService.getViewedLessonById(this.lesson.getActualId())) != null && viewedLessonById.getUserFeedback() == null) {
                LMSFeedbackComponent lMSFeedbackComponent = new LMSFeedbackComponent(this.context, this.lmsService, viewedLessonById);
                this.feedbackAlert = lMSFeedbackComponent;
                lMSFeedbackComponent.show();
                return;
            }
        }
        super.onBackPressed();
        finish();
    }

    private void initView() {
        String str = this.path;
        if (str != null && str.trim().length() > 0) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(this.path);
            if (bitmapDecodeFile != null) {
                showProcessDialog();
                RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(this.context).inflate(R.layout.pdf_layout, (ViewGroup) null);
                LinearLayout linearLayout = (LinearLayout) relativeLayout.findViewById(R.id.pdf_layout);
                ZoomImage zoomImage = new ZoomImage(this);
                zoomImage.setMaxZoom(4.0f);
                zoomImage.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                zoomImage.setImageBitmap(bitmapDecodeFile);
                zoomImage.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                linearLayout.addView(zoomImage);
                setContentView(relativeLayout);
                ImageButton imageButton = (ImageButton) relativeLayout.findViewById(R.id.back_button);
                imageButton.setImageTintList(ContextCompat.getColorStateList(this.context, R.color.white));
                imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CustomImageViewerActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CustomImageViewerActivity.this.onBackPressed();
                    }
                });
                hideProcessDialog();
                return;
            }
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.FILE_CORRUPTED));
            finish();
            return;
        }
        SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PATH_OF_FILE_NOT_FOUND));
        finish();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        onBackPressed();
        return true;
    }
}
