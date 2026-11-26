package com.argusoft.sewa.android.app.component.listeners;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class FamilyIdTextWatcher implements TextWatcher {
    private String before;
    private EditText familyEditText;
    private boolean flag = false;

    public FamilyIdTextWatcher(EditText editText) {
        this.familyEditText = editText;
        init();
    }

    private void init() {
        this.familyEditText.setText(LabelConstants.FAMILY_ID_PREFIX);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        String upperCase = charSequence.toString().toUpperCase();
        if (Pattern.compile("^((FM/\\d{0,4})|((FM/\\d{4}/\\d?)|(FM/\\d{4}/\\d{1,10}N?)))$").matcher(upperCase).matches()) {
            this.before = upperCase;
        }
        this.flag = charSequence.length() == 8;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.flag = this.flag && charSequence.length() < 8;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String upperCase = editable.toString().toUpperCase();
        if (this.flag && Pattern.compile("^(FM/)\\d{0,4}$").matcher(upperCase).matches()) {
            return;
        }
        if (upperCase.length() < 3) {
            this.familyEditText.removeTextChangedListener(this);
            this.familyEditText.setText(LabelConstants.FAMILY_ID_PREFIX);
            this.familyEditText.setSelection(3);
            this.familyEditText.addTextChangedListener(this);
        } else if (upperCase.length() < 8) {
            if (Pattern.compile("^(FM/)\\d{4}$").matcher(upperCase).matches()) {
                this.familyEditText.removeTextChangedListener(this);
                this.familyEditText.setText(String.format("%s/", upperCase));
                this.familyEditText.setSelection(8);
                this.familyEditText.addTextChangedListener(this);
            } else if (!Pattern.compile("^(FM/)\\d{0,4}$").matcher(upperCase).matches()) {
                this.familyEditText.removeTextChangedListener(this);
                this.familyEditText.setText(this.before);
                this.familyEditText.setSelection(this.before.length());
                this.familyEditText.addTextChangedListener(this);
            }
        } else if (!Pattern.compile("^((FM/\\d{4}/\\d?)|(FM/\\d{4}/\\d{1,10}N?))$").matcher(upperCase).matches()) {
            if (upperCase.length() == 8 && upperCase.split("/").length < 3) {
                this.before += "/";
                if (Pattern.compile("^((FM/\\d{4}/\\d?)|(FM/\\d{4}/\\d{1,10}N?))$").matcher(this.before + upperCase.charAt(upperCase.length() - 1)).matches()) {
                    this.before += upperCase.charAt(upperCase.length() - 1);
                }
            }
            this.familyEditText.removeTextChangedListener(this);
            this.familyEditText.setText(this.before);
            this.familyEditText.setSelection(this.before.length());
            this.familyEditText.addTextChangedListener(this);
        }
        if (upperCase.split(LabelConstants.FAMILY_ID_PREFIX).length == 3) {
            String strReplaceFirst = upperCase.replaceFirst(LabelConstants.FAMILY_ID_PREFIX, "");
            if (Pattern.compile("^((FM/\\d{0,4})|((FM/\\d{4}/\\d?)|(FM/\\d{4}/\\d{1,10}N?)))$").matcher(strReplaceFirst).matches()) {
                this.familyEditText.removeTextChangedListener(this);
                this.familyEditText.setText(strReplaceFirst);
                this.familyEditText.setSelection(strReplaceFirst.length());
                this.familyEditText.addTextChangedListener(this);
            }
        }
    }
}
