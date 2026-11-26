package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FillInBlanksComponent extends LinearLayout {
    private final Context context;
    private final List<EditText> editTextList;
    private final String text;

    public FillInBlanksComponent(Context context, String str) {
        super(context);
        this.editTextList = new ArrayList();
        this.context = context;
        this.text = str.trim();
        init();
    }

    private void init() {
        String[] strArrSplit = this.text.replace("_____", "RRRRR_____RRRRR").split("RRRRR");
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setBackgroundColor(ContextCompat.getColor(this.context, R.color.lms_answer_layout));
        linearLayout.setPadding(20, 20, 20, 20);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        for (String str : strArrSplit) {
            if (str.equals("_____")) {
                EditText editText = new EditText(this.context);
                editText.setHint("Enter your answer here");
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.setMargins(0, 10, 0, 10);
                editText.setLayoutParams(layoutParams);
                editText.setBackgroundResource(R.drawable.lms_edit_text_background);
                editText.setPadding(30, 30, 100, 30);
                this.editTextList.add(editText);
                linearLayout2.addView(editText);
            } else if (!str.trim().isEmpty()) {
                MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, str);
                materialTextViewGenerateAnswerView.setTextColor(ContextCompat.getColor(this.context, R.color.lms_blanks_text));
                materialTextViewGenerateAnswerView.setPadding(0, 20, 0, 20);
                linearLayout2.addView(materialTextViewGenerateAnswerView);
            }
        }
        linearLayout.addView(linearLayout2);
        addView(linearLayout);
    }

    public List<String> getAnswers() {
        ArrayList arrayList = new ArrayList();
        Iterator<EditText> it = this.editTextList.iterator();
        while (it.hasNext()) {
            String strTrim = it.next().getText().toString().trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        return arrayList;
    }

    public List<EditText> getEditTextList() {
        return this.editTextList;
    }
}
