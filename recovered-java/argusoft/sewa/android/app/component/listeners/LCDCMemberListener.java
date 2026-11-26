package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.util.Log;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class LCDCMemberListener implements RadioGroup.OnCheckedChangeListener {
    private final Map<String, Integer> answerMap = new HashMap();
    private Context context;
    private final QueFormBean queFormBean;
    private final int totalMembers;

    public LCDCMemberListener(Context context, QueFormBean queFormBean, int i) {
        this.queFormBean = queFormBean;
        this.totalMembers = i;
        this.context = context;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        MemberDataBean memberDataBean = (MemberDataBean) radioGroup.getTag();
        Integer num = (Integer) ((RadioButton) radioGroup.findViewById(i)).getTag();
        int iIntValue = num.intValue();
        this.answerMap.put(memberDataBean.getUniqueHealthId(), num);
        if (iIntValue != 3) {
            SharedStructureData.lcdcSuspectedDataBeans.add(memberDataBean);
        } else {
            SharedStructureData.lcdcSuspectedDataBeans.remove(memberDataBean);
        }
        if (this.queFormBean.getIsmandatory().equalsIgnoreCase("T") && this.answerMap.size() < this.totalMembers) {
            this.queFormBean.setAnswer(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Integer> entry : this.answerMap.entrySet()) {
            arrayList.add(new MemberAnswer(entry.getKey(), entry.getValue().intValue()));
        }
        String json = new Gson().toJson(arrayList);
        this.queFormBean.setAnswer(json);
        Log.i("LCDCMemberListener", "Answer JSON: " + json);
    }

    static class MemberAnswer {
        int answer;
        String memberId;

        MemberAnswer(String str, int i) {
            this.memberId = str;
            this.answer = i;
        }
    }
}
