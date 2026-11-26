package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import androidx.appcompat.app.AlertDialog;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;

/* loaded from: classes.dex */
public class LMSFeedbackComponent extends AlertDialog {
    private final Context context;
    private LmsServiceImpl lmsService;
    private LinearLayout parentLayout;
    private LmsViewedMediaBean viewedMediaBean;

    public LMSFeedbackComponent(Context context, LmsServiceImpl lmsServiceImpl, LmsViewedMediaBean lmsViewedMediaBean) {
        super(context);
        this.context = context;
        init();
        this.lmsService = lmsServiceImpl;
        this.viewedMediaBean = lmsViewedMediaBean;
    }

    @Override // androidx.appcompat.app.AlertDialog, androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(true);
        setContentView(this.parentLayout);
        if (getWindow() != null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    private void init() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(50, 0, 50, 0);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, layoutParams);
        this.parentLayout = linearLayout;
        linearLayout.setPadding(50, 30, 50, 30);
        this.parentLayout.setBackgroundResource(R.drawable.alert_dialog);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-2, -2));
        linearLayout2.setGravity(17);
        linearLayout2.setPadding(10, 0, 0, 10);
        linearLayout2.addView(MyStaticComponents.generateTitleView(this.context, "Feedback"));
        this.parentLayout.addView(linearLayout2);
        View separator = MyStaticComponents.getSeparator(this.context);
        ((LinearLayout.LayoutParams) separator.getLayoutParams()).setMargins(0, 0, 0, 50);
        this.parentLayout.addView(separator);
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-2, -2));
        linearLayout3.setGravity(17);
        linearLayout3.setPadding(0, 0, 0, 30);
        MaterialTextView materialTextView = new MaterialTextView(this.context);
        materialTextView.setText(UtilBean.getMyLabel("Please rate the content of this lesson."));
        materialTextView.setTextAppearance(this.context, R.style.AlertDialogLabel);
        linearLayout3.addView(materialTextView);
        this.parentLayout.addView(linearLayout3);
        LinearLayout linearLayout4 = MyStaticComponents.getLinearLayout(this.context, IdConstants.FOOTER_LAYOUT_ID, 0, new LinearLayout.LayoutParams(-1, -2));
        ((LinearLayout.LayoutParams) linearLayout4.getLayoutParams()).setMargins(0, 20, 0, 0);
        linearLayout4.setGravity(17);
        linearLayout4.setPadding(30, 0, 30, 0);
        linearLayout4.setWeightSum(2.0f);
        RatingBar ratingBar = new RatingBar(this.context, null);
        ratingBar.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ratingBar.setNumStars(5);
        ratingBar.setStepSize(1.0f);
        ratingBar.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() { // from class: com.argusoft.sewa.android.app.component.LMSFeedbackComponent.1
            @Override // android.widget.RatingBar.OnRatingBarChangeListener
            public void onRatingChanged(RatingBar ratingBar2, float f, boolean z) {
                LMSFeedbackComponent.this.lmsService.storeUserFeedbackOfMedia(Integer.valueOf((int) ratingBar2.getRating()), LMSFeedbackComponent.this.viewedMediaBean.getLessonId(), LMSFeedbackComponent.this.viewedMediaBean.getModuleId(), LMSFeedbackComponent.this.viewedMediaBean.getCourseId());
                LMSFeedbackComponent.this.dismiss();
                SewaUtil.generateToast(LMSFeedbackComponent.this.context, "Your feedback has been submitted successfully");
            }
        });
        linearLayout4.addView(ratingBar);
        this.parentLayout.addView(linearLayout4);
    }
}
