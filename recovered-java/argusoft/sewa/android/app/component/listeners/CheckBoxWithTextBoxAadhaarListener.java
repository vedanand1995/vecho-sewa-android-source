package com.argusoft.sewa.android.app.component.listeners;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.ValidationFormulaUtil;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CheckBoxWithTextBoxAadhaarListener implements CompoundButton.OnCheckedChangeListener, View.OnFocusChangeListener {
    private static final String DEFAULT_MANDATORY_MESSAGE = "Please enter all Aadhaar details";
    private static final String[] LETTERS_REGEX = {"regex", "letters"};
    private TextInputEditText aadhaarET;
    private LinearLayout inputLayout;
    private boolean isChecked = false;
    private TextInputEditText nameET;
    private TextInputLayout nameLayout;
    private final boolean onlyAadhaar;
    private final String originalMandatory;
    private final QueFormBean queFormBean;

    public CheckBoxWithTextBoxAadhaarListener(QueFormBean queFormBean) {
        boolean z = false;
        this.queFormBean = queFormBean;
        String str = "F";
        try {
            String datamap = queFormBean.getDatamap();
            if (datamap != null && !datamap.trim().isEmpty()) {
                String[] strArrSplit = datamap.split(GlobalTypes.KEY_VALUE_SEPARATOR);
                if (datamap.contains(GlobalTypes.KEY_VALUE_SEPARATOR) && strArrSplit.length > 1 && MorbiditiesConstant.ONE_PLUS.equals(strArrSplit[1])) {
                    str = "T";
                }
                int length = strArrSplit.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if ("onlyAadhaar".equalsIgnoreCase(strArrSplit[i].trim())) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
        } catch (Exception unused) {
        }
        this.originalMandatory = str;
        this.onlyAadhaar = z;
        queFormBean.setIsmandatory(str);
    }

    public boolean isOnlyAadhaar() {
        return this.onlyAadhaar;
    }

    public void setInputs(TextInputLayout textInputLayout, TextInputLayout textInputLayout2, View view, LinearLayout linearLayout) {
        this.inputLayout = linearLayout;
        this.nameLayout = textInputLayout2;
        this.aadhaarET = (TextInputEditText) textInputLayout.getEditText();
        this.nameET = textInputLayout2 != null ? (TextInputEditText) textInputLayout2.getEditText() : null;
        TextInputEditText textInputEditText = this.aadhaarET;
        if (textInputEditText != null) {
            textInputEditText.setOnFocusChangeListener(this);
            this.aadhaarET.addTextChangedListener(new SaveOnChangeWatcher());
        }
        TextInputEditText textInputEditText2 = this.nameET;
        if (textInputEditText2 != null) {
            textInputEditText2.setOnFocusChangeListener(this);
            this.nameET.addTextChangedListener(new SaveOnChangeWatcher());
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) throws JSONException {
        this.isChecked = z;
        if (z) {
            SharedStructureData.ACTIVE_CTBA_QUESTION_ID = Integer.valueOf(this.queFormBean.getId());
            this.inputLayout.setVisibility(0);
            this.queFormBean.setIsmandatory("T");
            this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(DEFAULT_MANDATORY_MESSAGE));
        } else {
            reset();
            SharedStructureData.ACTIVE_CTBA_QUESTION_ID = null;
            this.inputLayout.setVisibility(8);
            this.queFormBean.setIsmandatory(this.originalMandatory);
        }
        save();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) throws JSONException {
        if (z) {
            return;
        }
        save();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save() throws JSONException {
        boolean zIsEmpty = false;
        int loopCounter = (this.queFormBean.getLoopCounter() <= 0 || this.queFormBean.isIgnoreLoop()) ? 0 : this.queFormBean.getLoopCounter();
        if (!this.isChecked) {
            clearNameError();
            this.queFormBean.setAnswer(null);
            DynamicUtils.applyFormula(this.queFormBean, true);
            return;
        }
        String text = getText(this.aadhaarET);
        String text2 = this.onlyAadhaar ? "" : getText(this.nameET);
        String strValidateRegex = text2.isEmpty() ? null : ValidationFormulaUtil.validateRegex(LETTERS_REGEX, text2, null);
        if (strValidateRegex != null) {
            this.nameLayout.setError(strValidateRegex);
            this.queFormBean.setMandatorymessage(strValidateRegex);
            invalidateAnswer(loopCounter);
            return;
        }
        clearNameError();
        this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(DEFAULT_MANDATORY_MESSAGE));
        String str = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DOB_AS_PER_AADHAAR, loopCounter));
        if (this.onlyAadhaar) {
            zIsEmpty = text.isEmpty();
        } else if (text.isEmpty() || text2.isEmpty() || str == null || str.trim().isEmpty()) {
            zIsEmpty = true;
        }
        if (zIsEmpty) {
            invalidateAnswer(loopCounter);
            return;
        }
        if (text.length() != 12) {
            invalidateAnswer(loopCounter);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(FormulaConstants.VALIDATION_AADHAAR_NUMBER, text);
            if (!this.onlyAadhaar) {
                jSONObject.put(RelatedPropertyNameConstants.NAME_AS_PER_AADHAR, text2);
                jSONObject.put(RelatedPropertyNameConstants.DOB_AS_PER_AADHAAR, str);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.queFormBean.setAnswer(jSONObject.toString());
        if (!this.onlyAadhaar) {
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.NAME_AS_PER_AADHAR, loopCounter), text2);
        }
        DynamicUtils.applyFormula(this.queFormBean, true);
    }

    private void invalidateAnswer(int i) {
        boolean z = this.queFormBean.getAnswer() != null;
        this.queFormBean.setAnswer(null);
        SharedStructureData.relatedPropertyHashTable.remove(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.NAME_AS_PER_AADHAR, i));
        if (z) {
            DynamicUtils.applyFormula(this.queFormBean, true);
        }
    }

    private void clearNameError() {
        TextInputLayout textInputLayout = this.nameLayout;
        if (textInputLayout != null) {
            textInputLayout.setError(null);
            this.nameLayout.setErrorEnabled(false);
        }
    }

    private void reset() {
        TextInputEditText textInputEditText = this.aadhaarET;
        if (textInputEditText != null) {
            textInputEditText.setText("");
        }
        TextInputEditText textInputEditText2 = this.nameET;
        if (textInputEditText2 != null) {
            textInputEditText2.setText("");
        }
        clearNameError();
        this.queFormBean.setAnswer(null);
        removeFromShared();
    }

    private void removeFromShared() {
        int loopCounter = (this.queFormBean.getLoopCounter() <= 0 || this.queFormBean.isIgnoreLoop()) ? 0 : this.queFormBean.getLoopCounter();
        SharedStructureData.relatedPropertyHashTable.remove(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.NAME_AS_PER_AADHAR, loopCounter));
        SharedStructureData.relatedPropertyHashTable.remove(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DOB_AS_PER_AADHAAR, loopCounter));
    }

    private String getText(TextInputEditText textInputEditText) {
        if (textInputEditText == null || textInputEditText.getText() == null) {
            return "";
        }
        return textInputEditText.getText().toString().trim();
    }

    private class SaveOnChangeWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private SaveOnChangeWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) throws JSONException {
            CheckBoxWithTextBoxAadhaarListener.this.save();
        }
    }
}
