package com.argusoft.sewa.android.app.component.listeners;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import androidx.core.app.NotificationCompat;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;

/* loaded from: classes.dex */
public class BloodPresserChangedListener implements View.OnFocusChangeListener, CompoundButton.OnCheckedChangeListener {
    private static final int DIA_MAX = 150;
    private static final int DIA_MIN = 40;
    private static final String SYSTOLIC_DIASTOLIC_CONSTRAINT = "Systolic BP cannot be lower then diastolic BP";
    private static final int SYS_MAX = 300;
    private static final int SYS_MIN = 60;
    private static final String VALID_MSG_DIA = "Diastolic BP should be between 40 and 150";
    private static final String VALID_MSG_SYS = "Systolic BP should be between 60 and 300";
    private final int[] bloodPresser;
    private final Context context;
    private EditText diaEditText;
    private String[] highRiskFormula;
    private View inputLayout;
    private boolean isChecked;
    private boolean isMorbidityQuestion;
    private final String mandatoryMsg;
    private final QueFormBean queFormBean;
    private EditText sysEditText;

    public BloodPresserChangedListener(Context context, QueFormBean queFormBean) {
        this.highRiskFormula = null;
        this.context = context;
        this.queFormBean = queFormBean;
        this.highRiskFormula = UtilBean.extractHighRiskFormula(queFormBean);
        this.mandatoryMsg = queFormBean.getMandatorymessage();
        if (queFormBean.getQuestionTypeView() != null) {
            this.inputLayout = ((View) queFormBean.getQuestionTypeView()).findViewById(IdConstants.BLOOD_PRESSURE_BOX_INPUT_LAYOUT_ID);
        }
        this.bloodPresser = new int[]{-1, -1};
        this.isChecked = false;
        if (queFormBean.getSubform() == null || !queFormBean.getSubform().toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
            return;
        }
        this.isMorbidityQuestion = true;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.inputLayout == null) {
            this.inputLayout = ((View) this.queFormBean.getQuestionTypeView()).findViewById(IdConstants.BLOOD_PRESSURE_BOX_INPUT_LAYOUT_ID);
        }
        this.isChecked = z;
        if (z) {
            View view = this.inputLayout;
            if (view != null) {
                view.setVisibility(8);
            }
            reset();
            return;
        }
        View view2 = this.inputLayout;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        setAnswer();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view.getId() == 10023) {
            EditText editText = (EditText) view;
            this.sysEditText = editText;
            if (z) {
                return;
            }
            try {
                try {
                    this.bloodPresser[0] = Integer.parseInt(editText.getText().toString());
                    if (isNotValidSys()) {
                        generateToast(VALID_MSG_SYS);
                    } else if (systolicDiastolicConstraint()) {
                        generateToast(SYSTOLIC_DIASTOLIC_CONSTRAINT);
                    } else if (this.isMorbidityQuestion) {
                        this.sysEditText.setTextColor(SewaUtil.getColorForMorbiditySims(DynamicUtils.checkForMorbidity(MorbiditiesConstant.MorbiditySymptoms.SYSTOLIC_BP, "" + this.bloodPresser[0], this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", NotificationCompat.CATEGORY_SYSTEM, null)));
                    } else if (this.highRiskFormula != null) {
                        if (isHighRiskSys()) {
                            this.sysEditText.setTextColor(SewaUtil.COLOR_RED);
                        } else {
                            this.sysEditText.setTextColor(SewaUtil.COLOR_NORMAL);
                        }
                    }
                } finally {
                }
            } catch (Exception unused) {
                this.bloodPresser[0] = -1;
            }
            return;
        }
        if (view.getId() == 10024) {
            EditText editText2 = (EditText) view;
            this.diaEditText = editText2;
            if (z) {
                return;
            }
            try {
                try {
                    this.bloodPresser[1] = Integer.parseInt(editText2.getText().toString());
                    if (isNotValidDia()) {
                        generateToast(VALID_MSG_DIA);
                    } else if (systolicDiastolicConstraint()) {
                        generateToast(SYSTOLIC_DIASTOLIC_CONSTRAINT);
                    } else if (this.isMorbidityQuestion) {
                        this.diaEditText.setTextColor(SewaUtil.getColorForMorbiditySims(DynamicUtils.checkForMorbidity(MorbiditiesConstant.MorbiditySymptoms.DIASTOLIC_BP, "" + this.bloodPresser[1], this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", "dia", null)));
                    } else if (this.highRiskFormula != null) {
                        if (isHighRiskDia()) {
                            this.diaEditText.setTextColor(SewaUtil.COLOR_RED);
                        } else {
                            this.diaEditText.setTextColor(SewaUtil.COLOR_NORMAL);
                        }
                    }
                } finally {
                }
            } catch (Exception unused2) {
                this.bloodPresser[1] = -1;
            }
        }
    }

    private boolean isValid() {
        int[] iArr = this.bloodPresser;
        if (iArr[0] != -1 && iArr[1] != -1) {
            if (isNotValidSys()) {
                this.queFormBean.setMandatorymessage(VALID_MSG_SYS);
                return false;
            }
            if (isNotValidDia()) {
                this.queFormBean.setMandatorymessage(VALID_MSG_DIA);
                return false;
            }
            if (systolicDiastolicConstraint()) {
                this.queFormBean.setMandatorymessage(SYSTOLIC_DIASTOLIC_CONSTRAINT);
                return false;
            }
            this.queFormBean.setMandatorymessage(this.mandatoryMsg);
            return true;
        }
        this.queFormBean.setMandatorymessage(this.mandatoryMsg);
        return false;
    }

    private void reset() {
        EditText editText = this.sysEditText;
        if (editText != null) {
            editText.setText("");
            if (this.isMorbidityQuestion) {
                this.sysEditText.setTextColor(SewaUtil.COLOR_MORBIDITY_NORMAL);
                SharedStructureData.removeItemFromLICList(MorbiditiesConstant.MorbiditySymptoms.SYSTOLIC_BP, this.queFormBean.getLoopCounter() + "");
            }
        }
        EditText editText2 = this.diaEditText;
        if (editText2 != null) {
            editText2.setText("");
            if (this.isMorbidityQuestion) {
                this.diaEditText.setTextColor(SewaUtil.COLOR_MORBIDITY_NORMAL);
                SharedStructureData.removeItemFromLICList(MorbiditiesConstant.MorbiditySymptoms.DIASTOLIC_BP, this.queFormBean.getLoopCounter() + "");
            }
        }
        int[] iArr = this.bloodPresser;
        iArr[0] = -1;
        iArr[1] = -1;
        setAnswer();
    }

    private void setAnswer() {
        if (!this.isChecked) {
            if (isValid()) {
                this.queFormBean.setAnswer("F-" + this.bloodPresser[0] + GlobalTypes.KEY_VALUE_SEPARATOR + this.bloodPresser[1]);
            } else {
                this.queFormBean.setAnswer(null);
            }
        } else {
            this.queFormBean.setAnswer("T");
        }
        Log.i(getClass().getSimpleName(), this.queFormBean.getQuestion() + MorbiditiesConstant.EQUALS_SYMBOL + this.queFormBean.getAnswer());
    }

    private void generateToast(String str) {
        ((Activity) this.context).getWindow().setSoftInputMode(3);
        SewaUtil.generateToast(this.context, str);
    }

    private boolean isNotValidSys() {
        int i = this.bloodPresser[0];
        return i < 60 || i > SYS_MAX;
    }

    private boolean systolicDiastolicConstraint() {
        int[] iArr = this.bloodPresser;
        return iArr[0] < iArr[1];
    }

    private boolean isNotValidDia() {
        int i = this.bloodPresser[1];
        return i < 40 || i > DIA_MAX;
    }

    private boolean isHighRiskSys() {
        return this.bloodPresser[0] > 139;
    }

    private boolean isHighRiskDia() {
        return this.bloodPresser[1] > 89;
    }
}
