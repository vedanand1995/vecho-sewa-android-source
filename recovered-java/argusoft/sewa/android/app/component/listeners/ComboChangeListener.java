package com.argusoft.sewa.android.app.component.listeners;

import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.PageFormBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormulaUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.List;

/* loaded from: classes.dex */
public class ComboChangeListener implements AdapterView.OnItemSelectedListener {
    private View hiddenView;
    private String[] highRiskFormula;
    private boolean isCombo;
    private boolean isMorbidityQuestion;
    private String[] morbidityOptions;
    private View nextView;
    private List<OptionDataBean> options;
    private final QueFormBean queFormBean;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public ComboChangeListener(QueFormBean queFormBean, String[] strArr) {
        this.isCombo = false;
        this.queFormBean = queFormBean;
        this.highRiskFormula = strArr;
        if (queFormBean.getSubform() != null && queFormBean.getSubform().toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
            this.isMorbidityQuestion = true;
            for (String str : UtilBean.split(queFormBean.getSubform(), GlobalTypes.COMMA)) {
                if (str.toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
                    this.morbidityOptions = UtilBean.split(str, "/");
                }
            }
        }
        String type = queFormBean.getType();
        if (type != null && type.equalsIgnoreCase(GlobalTypes.COMBO_BOX_DYNAMIC_SELECT)) {
            this.isCombo = true;
        }
        this.options = UtilBean.getOptionsOrDataMap(queFormBean, this.isCombo);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        String[] strArr;
        List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(this.queFormBean, this.isCombo);
        this.options = optionsOrDataMap;
        if (!optionsOrDataMap.isEmpty()) {
            OptionDataBean optionDataBean = this.options.get(i);
            if (!optionDataBean.getKey().trim().equalsIgnoreCase("-1")) {
                if (optionDataBean.getNext() != null && optionDataBean.getNext().trim().length() > 0) {
                    this.queFormBean.setNext(optionDataBean.getNext());
                }
                if (this.queFormBean.getDatamap() != null && this.queFormBean.getDatamap().equalsIgnoreCase("Doctors List")) {
                    this.queFormBean.setAnswer(optionDataBean.getValue());
                } else {
                    this.queFormBean.setAnswer(optionDataBean.getKey());
                }
                if (this.highRiskFormula != null) {
                    TextView textView = (TextView) view;
                    int currentTextColor = textView.getCurrentTextColor();
                    if (FormulaUtil.identifyHighRisk(this.highRiskFormula, this.queFormBean, true).booleanValue()) {
                        textView.setTextColor(SewaUtil.COLOR_RED);
                    } else {
                        textView.setTextColor(currentTextColor);
                    }
                }
                QueFormBean nextVisibleQuestionInSamePage = DynamicUtils.setNextVisibleQuestionInSamePage(this.queFormBean);
                View view2 = this.hiddenView;
                if (view2 != null) {
                    view2.setVisibility(8);
                }
                View view3 = this.nextView;
                if (view3 != null) {
                    view3.setVisibility(8);
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
                    View view4 = (View) nextVisibleQuestionInSamePage.getQuestionUIFrame();
                    this.nextView = view4;
                    if (view4 != null) {
                        view4.setVisibility(0);
                    }
                    while (true) {
                        nextVisibleQuestionInSamePage = DynamicUtils.setNextVisibleQuestionInSamePage(nextVisibleQuestionInSamePage);
                        if (nextVisibleQuestionInSamePage == null) {
                            break;
                        }
                        View view5 = (View) nextVisibleQuestionInSamePage.getQuestionUIFrame();
                        if (view5 != null) {
                            view5.setVisibility(0);
                        }
                    }
                }
                if (this.isMorbidityQuestion && (strArr = this.morbidityOptions) != null && strArr.length > 1) {
                    int i2 = 1;
                    while (true) {
                        String[] strArr2 = this.morbidityOptions;
                        if (i2 >= strArr2.length) {
                            break;
                        }
                        if (strArr2[i2].toLowerCase().contains(optionDataBean.getKey().toLowerCase() + GlobalTypes.KEY_VALUE_SEPARATOR)) {
                            String[] strArrSplit = UtilBean.split(this.morbidityOptions[i2], GlobalTypes.KEY_VALUE_SEPARATOR);
                            if (strArrSplit.length > 1 && strArrSplit[1].equalsIgnoreCase("M")) {
                                SharedStructureData.addItemInLICList(this.queFormBean.getQuestion(), optionDataBean.getValue(), this.queFormBean.getLoopCounter() + "");
                                try {
                                    ((TextView) view).setTextColor(SewaUtil.getColorForMorbiditySims(strArrSplit[1]));
                                } catch (Exception e) {
                                    Log.e(getClass().getSimpleName(), null, e);
                                }
                            } else {
                                SharedStructureData.removeItemFromLICList(this.queFormBean.getQuestion(), this.queFormBean.getLoopCounter() + "");
                            }
                        } else {
                            i2++;
                        }
                    }
                }
            } else {
                this.queFormBean.setAnswer(null);
                if (this.isMorbidityQuestion) {
                    SharedStructureData.removeItemFromLICList(this.queFormBean.getQuestion(), this.queFormBean.getLoopCounter() + "");
                    try {
                        ((TextView) view).setTextColor(SewaUtil.COLOR_MORBIDITY_NORMAL);
                    } catch (Exception e2) {
                        Log.e(getClass().getSimpleName(), null, e2);
                    }
                }
            }
        } else {
            this.queFormBean.setAnswer(adapterView.getSelectedItem());
        }
        if (this.queFormBean.getFormulas() == null || this.queFormBean.getFormulas().isEmpty() || !this.queFormBean.getFormulas().toString().toLowerCase().contains(FormulaConstants.FORMULA_SET_PROPERTY.toLowerCase())) {
            return;
        }
        if (this.queFormBean.getAnswer() != null) {
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(this.queFormBean.getRelatedpropertyname(), this.queFormBean.getLoopCounter()), this.queFormBean.getAnswer().toString());
        } else {
            SharedStructureData.relatedPropertyHashTable.remove(UtilBean.getRelatedPropertyNameWithLoopCounter(this.queFormBean.getRelatedpropertyname(), this.queFormBean.getLoopCounter()));
        }
    }
}
