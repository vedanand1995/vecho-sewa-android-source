package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FilariasisMemberListener implements RadioGroup.OnCheckedChangeListener {
    private final Map<String, MemberAnswer> answerMap = new HashMap();
    private final Context context;
    private final QueFormBean queFormBean;
    private final int totalMembers;

    public FilariasisMemberListener(Context context, QueFormBean queFormBean, int i) {
        this.context = context;
        this.queFormBean = queFormBean;
        this.totalMembers = i;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        RadioButton radioButton;
        MemberViewHolder memberViewHolder = (MemberViewHolder) radioGroup.getTag();
        if (memberViewHolder == null) {
            return;
        }
        MemberDataBean memberDataBean = memberViewHolder.member;
        TextInputLayout textInputLayout = memberViewHolder.tilReason;
        TextInputEditText textInputEditText = memberViewHolder.etReason;
        if (memberDataBean == null || (radioButton = (RadioButton) radioGroup.findViewById(i)) == null) {
            return;
        }
        Integer num = (Integer) radioButton.getTag();
        int iIntValue = num.intValue();
        String uniqueHealthId = memberDataBean.getUniqueHealthId();
        MemberAnswer memberAnswer = this.answerMap.get(uniqueHealthId);
        if (memberAnswer == null) {
            memberAnswer = new MemberAnswer(uniqueHealthId, iIntValue, null);
        }
        memberAnswer.answer = iIntValue;
        if (iIntValue == 2) {
            textInputLayout.setVisibility(0);
            memberAnswer.reason = textInputEditText.getText() != null ? textInputEditText.getText().toString().trim() : null;
        } else {
            textInputLayout.setVisibility(8);
            if (textInputEditText.getText() != null) {
                textInputEditText.setText("");
            }
            memberAnswer.reason = null;
        }
        SharedStructureData.filariaAnswerMapWithMemberAsKey.put(memberDataBean, num);
        this.answerMap.put(uniqueHealthId, memberAnswer);
        updateQueFormAnswer();
    }

    public void onReasonChanged(String str, String str2) {
        MemberAnswer memberAnswer = this.answerMap.get(str);
        if (memberAnswer != null && memberAnswer.answer == 2) {
            memberAnswer.reason = str2 != null ? str2.trim() : null;
            this.answerMap.put(str, memberAnswer);
            updateQueFormAnswer();
        }
    }

    private void updateQueFormAnswer() {
        if (this.queFormBean.getIsmandatory() != null && this.queFormBean.getIsmandatory().equalsIgnoreCase("T")) {
            if (this.answerMap.size() < this.totalMembers) {
                this.queFormBean.setAnswer(null);
                return;
            }
            for (MemberAnswer memberAnswer : this.answerMap.values()) {
                if (memberAnswer.answer == 2 && TextUtils.isEmpty(memberAnswer.reason)) {
                    this.queFormBean.setAnswer(null);
                    this.queFormBean.setMandatorymessage(UtilBean.getMyLabel("Please enter the reason"));
                    return;
                }
            }
        }
        String json = new Gson().toJson(new ArrayList(this.answerMap.values()));
        this.queFormBean.setAnswer(json);
        Log.i(getClass().getSimpleName(), "Answer JSON: " + json);
    }

    public static class MemberViewHolder {
        public TextInputEditText etReason;
        public MemberDataBean member;
        public TextInputLayout tilReason;

        public MemberViewHolder(MemberDataBean memberDataBean, TextInputLayout textInputLayout, TextInputEditText textInputEditText) {
            this.member = memberDataBean;
            this.tilReason = textInputLayout;
            this.etReason = textInputEditText;
        }
    }

    public static class MemberAnswer {
        public int answer;
        public String memberId;
        public String reason;

        public MemberAnswer(String str, int i, String str2) {
            this.memberId = str;
            this.answer = i;
            this.reason = str2;
        }
    }
}
