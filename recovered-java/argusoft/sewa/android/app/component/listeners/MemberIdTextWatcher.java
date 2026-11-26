package com.argusoft.sewa.android.app.component.listeners;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class MemberIdTextWatcher implements TextWatcher {
    private String before;
    private EditText memberEditText;
    private String pattern = "^((A\\d?)|(A\\d{1,10}N?))$";

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public MemberIdTextWatcher(EditText editText) {
        this.memberEditText = editText;
        init();
    }

    private void init() {
        this.memberEditText.setText("A");
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        String upperCase = charSequence.toString().toUpperCase();
        if (Pattern.compile(this.pattern).matcher(upperCase).matches()) {
            this.before = upperCase;
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String upperCase = editable.toString().toUpperCase();
        if (upperCase.length() < 1) {
            this.memberEditText.removeTextChangedListener(this);
            this.memberEditText.setText("A");
            this.memberEditText.setSelection(1);
            this.memberEditText.addTextChangedListener(this);
        } else if (!Pattern.compile(this.pattern).matcher(upperCase).matches()) {
            this.memberEditText.removeTextChangedListener(this);
            this.memberEditText.setText(this.before);
            this.memberEditText.setSelection(this.before.length());
            this.memberEditText.addTextChangedListener(this);
        }
        if (upperCase.split("A").length == 3) {
            String strReplaceFirst = upperCase.replaceFirst("A", "");
            if (Pattern.compile(this.pattern).matcher(strReplaceFirst).matches()) {
                this.memberEditText.removeTextChangedListener(this);
                this.memberEditText.setText(strReplaceFirst);
                this.memberEditText.setSelection(strReplaceFirst.length());
                this.memberEditText.addTextChangedListener(this);
            }
        }
    }
}
