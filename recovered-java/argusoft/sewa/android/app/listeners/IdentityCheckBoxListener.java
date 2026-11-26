package com.argusoft.sewa.android.app.listeners;

import android.widget.CompoundButton;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public class IdentityCheckBoxListener implements CompoundButton.OnCheckedChangeListener {
    private final TextInputLayout idNumberEditText;
    private final Runnable onConsentChanged;
    private final QueFormBean queFormBean;

    public IdentityCheckBoxListener(QueFormBean queFormBean, TextInputLayout textInputLayout, Runnable runnable) {
        this.queFormBean = queFormBean;
        this.idNumberEditText = textInputLayout;
        this.onConsentChanged = runnable;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!z) {
            TextInputLayout textInputLayout = this.idNumberEditText;
            if (textInputLayout != null && textInputLayout.getEditText() != null) {
                this.idNumberEditText.getEditText().setText("");
            }
            this.queFormBean.setAnswer(null);
            this.queFormBean.setIsmandatory("T");
        }
        Runnable runnable = this.onConsentChanged;
        if (runnable != null) {
            runnable.run();
        }
    }
}
