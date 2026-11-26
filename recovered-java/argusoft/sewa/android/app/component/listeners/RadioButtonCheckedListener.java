package com.argusoft.sewa.android.app.component.listeners;

import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.PageFormBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.List;

/* loaded from: classes.dex */
public class RadioButtonCheckedListener implements RadioGroup.OnCheckedChangeListener {
    private View hiddenView;
    private boolean isMorbiQuestion;
    private View nextView;
    private final List<OptionDataBean> options;
    private final QueFormBean queFormBean;

    public RadioButtonCheckedListener(QueFormBean queFormBean, List<OptionDataBean> list) {
        this.queFormBean = queFormBean;
        this.options = list;
        if (queFormBean.getSubform() == null || !queFormBean.getSubform().toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
            return;
        }
        this.isMorbiQuestion = true;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) throws NumberFormatException {
        String strCheckForMorbidity;
        RadioButton radioButton = (RadioButton) radioGroup.findViewById(i);
        List<OptionDataBean> list = this.options;
        if (list != null && !list.isEmpty()) {
            OptionDataBean optionDataBean = this.options.get(i);
            if (optionDataBean.getNext() != null && optionDataBean.getNext().trim().length() > 0 && !optionDataBean.getNext().trim().equalsIgnoreCase(LabelConstants.NULL)) {
                this.queFormBean.setNext(optionDataBean.getNext());
            } else if (this.queFormBean.getId() == 9997 || this.queFormBean.getId() == 99977) {
                this.queFormBean.setNext("0");
            }
            this.queFormBean.setAnswer(optionDataBean.getKey());
            QueFormBean nextVisibleQuestionInSamePage = DynamicUtils.setNextVisibleQuestionInSamePage(this.queFormBean);
            View view = this.hiddenView;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.nextView;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            if (nextVisibleQuestionInSamePage != null) {
                PageFormBean pageFromNext = DynamicUtils.getPageFromNext(DynamicUtils.getLoopId(this.queFormBean.getId(), nextVisibleQuestionInSamePage.getLoopCounter()));
                if (pageFromNext != null) {
                    LinearLayout pageLayout = pageFromNext.getPageLayout(true, 0);
                    if (pageLayout != null) {
                        this.hiddenView = pageLayout.findViewById(DynamicUtils.HIDDEN_LAYOUT_ID);
                    }
                    if (this.hiddenView != null) {
                        Log.i(getClass().getSimpleName(), "Hidden View found ......");
                        this.hiddenView.setVisibility(0);
                    } else {
                        Log.i(getClass().getSimpleName(), "Hidden View Not found ......");
                    }
                }
                View view3 = (View) nextVisibleQuestionInSamePage.getQuestionUIFrame();
                this.nextView = view3;
                if (view3 != null) {
                    view3.setVisibility(0);
                }
                while (true) {
                    nextVisibleQuestionInSamePage = DynamicUtils.setNextVisibleQuestionInSamePage(nextVisibleQuestionInSamePage);
                    if (nextVisibleQuestionInSamePage == null) {
                        break;
                    }
                    View view4 = (View) nextVisibleQuestionInSamePage.getQuestionUIFrame();
                    if (view4 != null) {
                        view4.setVisibility(0);
                    }
                }
            }
            if (this.isMorbiQuestion) {
                for (int i2 = 0; i2 < radioGroup.getChildCount(); i2++) {
                    RadioButton radioButton2 = (RadioButton) radioGroup.findViewById(i2);
                    if (radioButton2 != null) {
                        radioButton2.setTextColor(SewaUtil.COLOR_MORBIDITY_NORMAL);
                    }
                }
                if (optionDataBean.getKey().equalsIgnoreCase("T") || optionDataBean.getKey().equalsIgnoreCase("F")) {
                    strCheckForMorbidity = DynamicUtils.checkForMorbidity(this.queFormBean.getQuestion(), optionDataBean.getKey(), this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", null, null);
                } else {
                    strCheckForMorbidity = DynamicUtils.checkForMorbidity(this.queFormBean.getQuestion(), optionDataBean.getKey(), this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", null, optionDataBean.getValue());
                }
                if (radioButton != null && strCheckForMorbidity != null && strCheckForMorbidity.equalsIgnoreCase("M")) {
                    radioButton.setTextColor(SewaUtil.COLOR_MORBIDITY_GREEN);
                }
            }
        } else {
            this.queFormBean.setAnswer(radioButton.getText().toString());
        }
        if (this.queFormBean.getRelatedpropertyname() == null || this.queFormBean.getFormulas() == null || this.queFormBean.getFormulas().isEmpty() || !this.queFormBean.getFormulas().toString().toLowerCase().contains(FormulaConstants.FORMULA_SET_PROPERTY.toLowerCase())) {
            return;
        }
        if (this.queFormBean.getAnswer() != null) {
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(this.queFormBean.getRelatedpropertyname(), this.queFormBean.getLoopCounter()), this.queFormBean.getAnswer().toString());
        } else {
            SharedStructureData.relatedPropertyHashTable.remove(UtilBean.getRelatedPropertyNameWithLoopCounter(this.queFormBean.getRelatedpropertyname(), this.queFormBean.getLoopCounter()));
        }
    }
}
