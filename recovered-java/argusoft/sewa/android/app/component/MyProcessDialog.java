package com.argusoft.sewa.android.app.component;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;

/* loaded from: classes.dex */
public class MyProcessDialog extends Dialog {
    private Context context;
    private LinearLayout parentLayout;
    private String title;

    public MyProcessDialog(Context context, String str) {
        super(context);
        this.context = context;
        this.title = str;
        init();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(this.parentLayout);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.addFlags(2);
            window.setDimAmount(0.2f);
        }
    }

    private void init() {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-2, -2));
        this.parentLayout = linearLayout;
        linearLayout.setGravity(17);
        int iApplyDimension = (int) TypedValue.applyDimension(1, 24.0f, this.context.getResources().getDisplayMetrics());
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 16.0f, this.context.getResources().getDisplayMetrics());
        int iApplyDimension3 = (int) TypedValue.applyDimension(1, 120.0f, this.context.getResources().getDisplayMetrics());
        this.parentLayout.setPadding(iApplyDimension, iApplyDimension, iApplyDimension, iApplyDimension);
        this.parentLayout.setMinimumWidth(iApplyDimension3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(iApplyDimension2);
        gradientDrawable.setColor(Color.parseColor("#E6F2F2F2"));
        this.parentLayout.setBackground(gradientDrawable);
        ProgressBar progressBar = new ProgressBar(this.context);
        progressBar.setIndeterminateDrawable(ContextCompat.getDrawable(this.context, R.drawable.ios_spinner));
        this.parentLayout.addView(progressBar);
        if (this.title != null) {
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(-2, -2));
            linearLayout2.setPadding(0, (int) TypedValue.applyDimension(1, 16.0f, this.context.getResources().getDisplayMetrics()), 0, 0);
            linearLayout2.setGravity(17);
            MaterialTextView materialTextView = MyStaticComponents.getMaterialTextView(this.context, UtilBean.getMyLabel(this.title), 10000, R.style.CustomQuestionView, false);
            materialTextView.setGravity(17);
            materialTextView.setTextAlignment(4);
            materialTextView.setTextColor(Color.parseColor("#333333"));
            materialTextView.setTextSize(2, 14.0f);
            try {
                materialTextView.setTypeface(ResourcesCompat.getFont(this.context, R.font.roboto_bold));
            } catch (Exception e) {
                e.printStackTrace();
            }
            linearLayout2.addView(materialTextView);
            this.parentLayout.addView(linearLayout2);
        }
    }
}
