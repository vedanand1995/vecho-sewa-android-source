package com.argusoft.sewa.android.app.component.listeners;

import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public class CheckBoxWithTextBoxListener implements CompoundButton.OnCheckedChangeListener, View.OnFocusChangeListener {
    private String answer;
    private LinearLayout inputLayout;
    private TextInputEditText inputTextEditText;
    private TextInputLayout inputTextView;
    private boolean isChecked = false;
    private boolean isMorbidityQuestion;
    private final QueFormBean queFormBean;

    public CheckBoxWithTextBoxListener(QueFormBean queFormBean) {
        this.queFormBean = queFormBean;
        this.answer = (String) queFormBean.getAnswer();
        if (queFormBean.getSubform() != null && queFormBean.getSubform().toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
            this.isMorbidityQuestion = true;
        }
        if (queFormBean.getQuestionTypeView() != null) {
            this.inputLayout = (LinearLayout) ((LinearLayout) queFormBean.getQuestionTypeView()).findViewById(IdConstants.CHECKBOX_WITH_TEXT_BOX_INPUT_LAYOUT_ID);
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) throws NumberFormatException {
        if (this.inputLayout == null) {
            LinearLayout linearLayout = (LinearLayout) ((LinearLayout) this.queFormBean.getQuestionTypeView()).findViewById(IdConstants.CHECKBOX_WITH_TEXT_BOX_INPUT_LAYOUT_ID);
            this.inputLayout = linearLayout;
            TextInputLayout textInputLayout = (TextInputLayout) linearLayout.getChildAt(0);
            this.inputTextView = textInputLayout;
            this.inputTextEditText = (TextInputEditText) textInputLayout.getEditText();
        }
        this.isChecked = z;
        if (z) {
            reset();
            this.inputLayout.setVisibility(8);
        } else {
            this.inputLayout.setVisibility(0);
        }
        setAnswer();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) throws NumberFormatException {
        TextInputEditText textInputEditText = (TextInputEditText) view;
        this.inputTextEditText = textInputEditText;
        if (!z && textInputEditText.getText() != null) {
            this.answer = this.inputTextEditText.getText().toString();
        }
        setAnswer();
    }

    private void setAnswer() throws NumberFormatException {
        String str;
        if (this.isChecked) {
            str = "T";
        } else {
            TextInputEditText textInputEditText = this.inputTextEditText;
            if (textInputEditText != null && textInputEditText.getText() != null) {
                this.answer = this.inputTextEditText.getText().toString();
            }
            String str2 = this.answer;
            if (str2 == null || str2.trim().length() <= 0 || this.answer.trim().equalsIgnoreCase(LabelConstants.NULL)) {
                str = null;
            } else {
                str = "F/" + this.answer;
            }
        }
        this.queFormBean.setAnswer(str);
        if (this.isMorbidityQuestion) {
            String strCheckForMorbidity = DynamicUtils.checkForMorbidity(this.queFormBean.getQuestion(), this.answer, this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", null, null);
            if (this.inputTextView.getEditText() != null) {
                this.inputTextView.getEditText().setTextColor(SewaUtil.getColorForMorbiditySims(strCheckForMorbidity));
            }
        }
        Log.d("" + this.queFormBean.getQuestion(), "" + this.queFormBean.getAnswer());
    }

    private void reset() {
        this.answer = null;
    }
}
