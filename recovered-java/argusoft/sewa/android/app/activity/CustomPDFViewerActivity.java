package com.argusoft.sewa.android.app.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.LMSFeedbackComponent;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.github.barteksc.pdfviewer.PDFView;
import com.github.barteksc.pdfviewer.listener.OnPageChangeListener;
import com.google.gson.Gson;
import java.io.File;
import java.util.Date;

/* loaded from: classes.dex */
public class CustomPDFViewerActivity extends MenuActivity implements OnPageChangeListener {
    private Integer courseId;
    private LMSFeedbackComponent feedbackAlert;
    private Boolean fromLms = false;
    private Boolean isTranscript = false;
    private LmsLessonDataBean lesson;
    LmsServiceImpl lmsService;
    private String path;
    private String pdfFileName;
    private PDFView pdfView;
    private Date startDate;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        getWindow().addFlags(128);
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.path = extras.getString("path");
            this.pdfFileName = extras.getString(FieldNameConstants.FILE_NAME);
            this.fromLms = Boolean.valueOf(extras.getBoolean("fromLms"));
            this.isTranscript = Boolean.valueOf(extras.getBoolean("transcript"));
            if (Boolean.TRUE.equals(this.fromLms)) {
                this.courseId = Integer.valueOf(extras.getInt(FieldNameConstants.COURSE_ID));
                String string = extras.getString("lesson");
                this.startDate = new Date();
                if (string == null || !Boolean.FALSE.equals(this.isTranscript)) {
                    return;
                }
                LmsLessonDataBean lmsLessonDataBean = (LmsLessonDataBean) new Gson().fromJson(string, LmsLessonDataBean.class);
                this.lesson = lmsLessonDataBean;
                this.lmsService.updateStartDateForMedia(this.startDate, lmsLessonDataBean.getActualId(), this.lesson.getTopicId(), this.courseId);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        initView();
        setTitle(UtilBean.getMyLabel(LabelConstants.PDF_VIEWER));
    }

    @Override // com.github.barteksc.pdfviewer.listener.OnPageChangeListener
    public void onPageChanged(int i, int i2) {
        setTitle(String.format("%s (%s) (%s / %s)", UtilBean.getMyLabel(LabelConstants.PDF_VIEWER), this.pdfFileName, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private void initView() {
        showProcessDialog();
        RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(this.context).inflate(R.layout.pdf_layout, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) relativeLayout.findViewById(R.id.pdf_layout);
        PDFView pDFView = new PDFView(this, null);
        this.pdfView = pDFView;
        pDFView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(this.pdfView);
        ((ImageButton) relativeLayout.findViewById(R.id.back_button)).setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.CustomPDFViewerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CustomPDFViewerActivity.this.onBackPressed();
            }
        });
        setContentView(relativeLayout);
        displayFromAsset();
    }

    private void displayFromAsset() {
        String str = this.path;
        if (str != null && str.trim().length() > 0) {
            File file = new File(this.path);
            if (file.exists()) {
                try {
                    this.pdfView.fromFile(file).defaultPage(1).enableSwipe(true).onPageChange(this).load();
                } catch (Exception unused) {
                    SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.FILE_CORRUPTED));
                    finish();
                }
            } else {
                SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.FILE_NOT_FOUND));
                finish();
            }
        } else {
            SewaUtil.generateToast(this, UtilBean.getMyLabel(LabelConstants.PATH_OF_FILE_NOT_FOUND));
            finish();
        }
        hideProcessDialog();
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        LmsViewedMediaBean viewedLessonById;
        if (Boolean.TRUE.equals(this.fromLms) && Boolean.FALSE.equals(this.isTranscript)) {
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
}
