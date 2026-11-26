package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;

/* loaded from: classes.dex */
public class MyAlertDialog extends AlertDialog {
    private Boolean isCancelable;
    private LinearLayout parentLayout;

    public MyAlertDialog(Context context, String str, View.OnClickListener onClickListener, int i, String str2, String str3, boolean z) {
        super(context);
        this.isCancelable = false;
        init(context, null, str, onClickListener, i, str2, str3);
        this.isCancelable = Boolean.valueOf(z);
    }

    public MyAlertDialog(Context context, boolean z, String str, View.OnClickListener onClickListener, int i) {
        super(context, z, new DialogInterface.OnCancelListener() { // from class: com.argusoft.sewa.android.app.component.MyAlertDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                Log.i(getClass().getSimpleName(), "OnCancelListener called");
            }
        });
        this.isCancelable = false;
        init(context, null, str, onClickListener, i, null, null);
    }

    public MyAlertDialog(Context context, String str, View.OnClickListener onClickListener, int i) {
        super(context);
        this.isCancelable = false;
        init(context, null, str, onClickListener, i, null, null);
    }

    public MyAlertDialog(Context context, String str, View.OnClickListener onClickListener, int i, String str2, String str3) {
        super(context);
        this.isCancelable = false;
        init(context, null, str, onClickListener, i, str2, str3);
    }

    public MyAlertDialog(Context context, Boolean bool, String str, String str2, View.OnClickListener onClickListener, int i) {
        super(context);
        Boolean.valueOf(false);
        this.isCancelable = bool;
        init(context, str, str2, onClickListener, i, null, null);
    }

    @Override // androidx.appcompat.app.AlertDialog, androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(this.isCancelable.booleanValue());
        setContentView(this.parentLayout);
        if (getWindow() != null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getWindow().setDimAmount(0.2f);
        }
    }

    private void init(Context context, String str, String str2, View.OnClickListener onClickListener, int i, String str3, String str4) {
        String str5;
        String str6;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(50, 0, 50, 0);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, layoutParams);
        this.parentLayout = linearLayout;
        linearLayout.setPadding(50, 50, 50, 30);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F2F2F2"));
        gradientDrawable.setAlpha(240);
        gradientDrawable.setCornerRadius(context.getResources().getDisplayMetrics().density * 16.0f);
        this.parentLayout.setBackground(gradientDrawable);
        this.parentLayout.setElevation(0.0f);
        if (str != null) {
            NestedScrollView scrollView = MyStaticComponents.getScrollView(context, -1, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-2, -2));
            linearLayout2.setGravity(17);
            linearLayout2.setPadding(0, 0, 0, 30);
            MaterialTextView materialTextView = new MaterialTextView(context);
            materialTextView.setText(UtilBean.getMyLabel(str2));
            materialTextView.setTextAppearance(context, R.style.AlertDialogLabel);
            materialTextView.setTextColor(Color.parseColor("#333333"));
            materialTextView.setGravity(17);
            try {
                materialTextView.setTypeface(ResourcesCompat.getFont(context, R.font.roboto_medium));
            } catch (Exception unused) {
            }
            linearLayout2.addView(materialTextView);
            scrollView.addView(linearLayout2);
            this.parentLayout.addView(scrollView);
        }
        if (str2 != null && str2.trim().length() > 0) {
            LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-2, -2));
            linearLayout3.setGravity(17);
            linearLayout3.setPadding(0, 0, 0, 30);
            MaterialTextView materialTextView2 = new MaterialTextView(context);
            materialTextView2.setText(UtilBean.getMyLabel(str2));
            materialTextView2.setTextAppearance(context, R.style.AlertDialogLabel);
            materialTextView2.setTextColor(Color.parseColor("#333333"));
            materialTextView2.setGravity(17);
            try {
                materialTextView2.setTypeface(ResourcesCompat.getFont(context, R.font.roboto_medium));
            } catch (Exception unused2) {
            }
            linearLayout3.addView(materialTextView2);
            this.parentLayout.addView(linearLayout3);
        }
        if (i == -151) {
            if (str3 == null || str4 == null) {
                str6 = "Yes";
                str5 = "No";
            } else {
                str6 = str3;
                str5 = str4;
            }
        } else if (i == -152) {
            str6 = LabelConstants.LOGOUT;
            str5 = LabelConstants.HIDE;
        } else {
            str5 = "Cancel";
            if (i != -153) {
                str6 = "OK";
            } else {
                str6 = LabelConstants.RETRY;
            }
        }
        LinearLayout linearLayout4 = MyStaticComponents.getLinearLayout(context, IdConstants.FOOTER_LAYOUT_ID, 0, new LinearLayout.LayoutParams(-1, -2));
        linearLayout4.setGravity(17);
        linearLayout4.setPadding(10, 0, 10, 0);
        linearLayout4.setWeightSum(2.0f);
        MaterialButton customButton = MyStaticComponents.getCustomButton(context, str6, -1, newDialogButtonLayoutParams());
        customButton.setCornerRadius((int) (context.getResources().getDisplayMetrics().density * 8.0f));
        customButton.setTypeface(Typeface.DEFAULT_BOLD);
        customButton.setBackgroundColor(ColorUtils.setAlphaComponent(ContextCompat.getColor(context, R.color.buttonBackground), 220));
        customButton.setTextColor(-1);
        MaterialButton materialButton = null;
        customButton.setStateListAnimator(null);
        customButton.setSingleLine(false);
        customButton.setMaxLines(2);
        if (i != -105) {
            MaterialButton customButton2 = MyStaticComponents.getCustomButton(context, str5, -2, newDialogButtonLayoutParams());
            customButton2.setCornerRadius((int) (context.getResources().getDisplayMetrics().density * 8.0f));
            customButton2.setTypeface(Typeface.DEFAULT_BOLD);
            customButton2.setBackgroundColor(ColorUtils.setAlphaComponent(ContextCompat.getColor(context, R.color.colorPrimaryDark), 220));
            customButton2.setTextColor(-1);
            customButton2.setStateListAnimator(null);
            customButton2.setSingleLine(false);
            customButton2.setMaxLines(2);
            linearLayout4.addView(customButton2);
            materialButton = customButton2;
        } else {
            customButton.setId(DynamicUtils.BUTTON_OK);
        }
        linearLayout4.addView(customButton);
        this.parentLayout.addView(linearLayout4);
        if (onClickListener != null) {
            if (materialButton != null) {
                materialButton.setOnClickListener(onClickListener);
            }
            customButton.setOnClickListener(onClickListener);
        } else {
            View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyAlertDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyAlertDialog.this.hideDialog();
                }
            };
            if (materialButton != null) {
                materialButton.setOnClickListener(onClickListener2);
            }
            customButton.setOnClickListener(onClickListener2);
        }
    }

    private static LinearLayout.LayoutParams newDialogButtonLayoutParams() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.setMargins(10, 0, 10, 0);
        return layoutParams;
    }

    public LinearLayout getAlertDialogView() {
        return this.parentLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideDialog() {
        dismiss();
    }
}
