package com.argusoft.sewa.android.app.component.listeners;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.core.view.ViewCompat;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.util.FormulaUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;

/* loaded from: classes.dex */
public class TextChangeListener implements TextWatcher {
    private int beforeLength;
    private EditText editText;
    private String[] highRiskFormula = null;
    private QueFormBean queFormBean;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    public TextChangeListener(EditText editText, QueFormBean queFormBean) {
        this.editText = editText;
        this.queFormBean = queFormBean;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (charSequence != null) {
            this.beforeLength = charSequence.length();
        } else {
            this.beforeLength = 0;
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.editText.removeTextChangedListener(this);
        this.highRiskFormula = UtilBean.extractHighRiskFormula(this.queFormBean);
        if (charSequence == null || charSequence.length() == 0) {
            this.editText.setText((CharSequence) null);
        } else if (this.highRiskFormula != null) {
            this.queFormBean.setAnswer(this.editText.getText().toString());
            if (FormulaUtil.identifyHighRisk(this.highRiskFormula, this.queFormBean, true).booleanValue()) {
                this.editText.setTextColor(SewaUtil.COLOR_RED);
            } else {
                this.editText.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            }
        } else if (charSequence.length() > this.beforeLength && charSequence.length() > 4) {
            StringBuilder sb = new StringBuilder(charSequence.toString().replace(GlobalTypes.KEY_VALUE_SEPARATOR, ""));
            int length = sb.length();
            int i4 = 4;
            for (int i5 = 0; i5 < length / 4; i5++) {
                sb.insert(i4, GlobalTypes.KEY_VALUE_SEPARATOR);
                i4 += 5;
            }
            this.editText.setText(sb.toString());
            EditText editText = this.editText;
            editText.setSelection(editText.getText().length());
        }
        this.editText.addTextChangedListener(this);
    }
}
