package com.argusoft.sewa.android.app.component.listeners;

import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.TextView;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.j256.ormlite.stmt.query.SimpleComparison;

/* loaded from: classes.dex */
public class TemperatureBoxListener implements CompoundButton.OnCheckedChangeListener, AdapterView.OnItemSelectedListener {
    private Spinner comboDegree;
    private Spinner comboFloating;
    private View inputLayout;
    private boolean isMorbidityQuestion;
    private View nextView;
    private final QueFormBean queFormBean;
    private String floating = "";
    private String degree = "";
    private boolean isChecked = false;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public TemperatureBoxListener(QueFormBean queFormBean) {
        this.queFormBean = queFormBean;
        if (queFormBean.getSubform() == null || !queFormBean.getSubform().toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
            return;
        }
        this.isMorbidityQuestion = true;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.isChecked = z;
        if (this.inputLayout == null) {
            this.inputLayout = ((View) this.queFormBean.getQuestionTypeView()).findViewById(IdConstants.TEMPERATURE_BOX_INPUT_LAYOUT_ID);
        }
        if (this.isChecked) {
            this.inputLayout.setVisibility(8);
            resetComponent();
        } else {
            this.inputLayout.setVisibility(0);
        }
        setAnswer();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        int id = adapterView.getId();
        if (id == 10015) {
            try {
                Spinner spinner = (Spinner) adapterView;
                this.comboDegree = spinner;
                this.degree = spinner.getSelectedItem().toString();
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), null, e);
                this.degree = adapterView.getSelectedItem().toString();
            }
        } else if (id == 10016) {
            try {
                Spinner spinner2 = (Spinner) adapterView;
                this.comboFloating = spinner2;
                this.floating = spinner2.getSelectedItem().toString();
            } catch (Exception e2) {
                Log.e(getClass().getSimpleName(), null, e2);
                this.floating = adapterView.getSelectedItem().toString();
            }
        }
        setAnswer();
    }

    private void setAnswer() {
        String str;
        String str2;
        if (this.isChecked) {
            str = "T";
        } else if (this.degree.equalsIgnoreCase("-Select-") || this.floating.equalsIgnoreCase("-Select-")) {
            str = "";
        } else {
            str = "F-" + this.degree + GlobalTypes.KEY_VALUE_SEPARATOR + this.floating;
        }
        this.queFormBean.setAnswer(str);
        Log.i(getClass().getSimpleName(), this.queFormBean.getQuestion() + SimpleComparison.EQUAL_TO_OPERATION + this.queFormBean.getAnswer());
        if (this.isMorbidityQuestion) {
            if (this.degree.equalsIgnoreCase("-Select-") || this.floating.equalsIgnoreCase("-Select-")) {
                str2 = null;
            } else {
                str2 = this.degree + GlobalTypes.DOT_SEPARATOR + this.floating;
            }
            int colorForMorbiditySims = SewaUtil.getColorForMorbiditySims(DynamicUtils.checkForMorbidity(MorbiditiesConstant.MorbiditySymptoms.AXILLARY_TEMPERATURE, str2, this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", null, null));
            try {
                Spinner spinner = this.comboDegree;
                if (spinner != null) {
                    ((TextView) spinner.getSelectedView()).setTextColor(colorForMorbiditySims);
                }
                Spinner spinner2 = this.comboFloating;
                if (spinner2 != null) {
                    ((TextView) spinner2.getSelectedView()).setTextColor(colorForMorbiditySims);
                }
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
        QueFormBean nextVisibleQuestionInSamePage = DynamicUtils.setNextVisibleQuestionInSamePage(this.queFormBean);
        if (nextVisibleQuestionInSamePage != null) {
            Log.i(getClass().getSimpleName(), "Next Question is :" + nextVisibleQuestionInSamePage.getId());
            View view = this.nextView;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = (View) nextVisibleQuestionInSamePage.getQuestionUIFrame();
            this.nextView = view2;
            view2.setVisibility(0);
            return;
        }
        View view3 = this.nextView;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    private void resetComponent() {
        Spinner spinner = this.comboDegree;
        if (spinner != null) {
            try {
                spinner.setSelection(0);
                this.degree = "-Select-";
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), null, e);
                this.degree = "-Select-";
            }
        }
        Spinner spinner2 = this.comboFloating;
        if (spinner2 != null) {
            try {
                spinner2.setSelection(0);
                this.floating = "-Select-";
            } catch (Exception e2) {
                Log.e(getClass().getSimpleName(), null, e2);
                this.floating = "-Select-";
            }
        }
    }
}
