package com.argusoft.sewa.android.app.component.listeners;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.FormulaUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class CheckBoxChangeListener implements CompoundButton.OnCheckedChangeListener {
    private List<String> answer;
    private List<String> answerOptionsValue;
    private List<String> checkAllOption;
    private String[] highRiskFormula;
    private boolean isMorbidityQuestion;
    private final boolean isMulti;
    private String[] morbidityOptions;
    private boolean noneCheck;
    private int noneIndex;
    private String noneKey;
    private List<OptionDataBean> optionBeans;
    private final QueFormBean queFormBean;
    private boolean selectAllCheck;
    private int selectAllIndex;
    private List<String> uncheckedOption;

    public CheckBoxChangeListener(QueFormBean queFormBean, boolean z, boolean z2) throws NumberFormatException {
        List<String> listFromStringBySeparator;
        this.queFormBean = queFormBean;
        this.isMulti = z;
        if (queFormBean.getSubform() != null && queFormBean.getSubform().toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
            this.isMorbidityQuestion = true;
            String[] strArrSplit = UtilBean.split(queFormBean.getSubform().trim(), GlobalTypes.COMMA);
            if (z) {
                int length = strArrSplit.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    String str = strArrSplit[i];
                    if (str.toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
                        this.morbidityOptions = UtilBean.split(str, "/");
                        break;
                    }
                    i++;
                }
                this.answerOptionsValue = new ArrayList();
            }
        }
        List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(queFormBean, false);
        this.optionBeans = optionsOrDataMap;
        if (optionsOrDataMap.size() == 1 && this.optionBeans.get(0).getKey() != null && this.optionBeans.get(0).getKey().equalsIgnoreCase(GlobalTypes.NO_OPTION_AVAILABLE) && queFormBean.getRelatedpropertyname() != null && !queFormBean.getRelatedpropertyname().trim().isEmpty()) {
            String strTrim = queFormBean.getRelatedpropertyname().trim();
            if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                strTrim = strTrim + queFormBean.getLoopCounter();
            }
            String str2 = SharedStructureData.relatedPropertyHashTable.get(strTrim);
            if (str2 != null && (listFromStringBySeparator = UtilBean.getListFromStringBySeparator(str2, GlobalTypes.COMMA)) != null) {
                this.optionBeans.clear();
                for (String str3 : listFromStringBySeparator) {
                    OptionDataBean optionDataBean = new OptionDataBean();
                    optionDataBean.setKey(str3);
                    optionDataBean.setValue(str3);
                    this.optionBeans.add(optionDataBean);
                }
            }
        }
        if (z) {
            this.answer = new ArrayList();
            List<FormulaTagBean> formulas = queFormBean.getFormulas();
            if (formulas == null || formulas.isEmpty()) {
                return;
            }
            FormulaTagBean formulaTagBean = formulas.get(0);
            String formulavalue = formulaTagBean.getFormulavalue();
            if (formulavalue != null && formulavalue.length() > 0 && formulavalue.toLowerCase().contains(FormulaConstants.MULTI_OPTION_UNCHECK.toLowerCase())) {
                String[] strArrSplit2 = UtilBean.split(formulaTagBean.getFormulavalue().toLowerCase(), FormulaConstants.MULTI_OPTION_UNCHECK.toLowerCase() + GlobalTypes.KEY_VALUE_SEPARATOR);
                if (strArrSplit2.length > 1) {
                    this.uncheckedOption = Arrays.asList(UtilBean.split(strArrSplit2[strArrSplit2.length - 1].toLowerCase(), GlobalTypes.KEY_VALUE_SEPARATOR));
                }
            }
            if (formulavalue == null || formulavalue.length() <= 0 || !formulavalue.toLowerCase().contains(FormulaConstants.MULTI_OPTION_CHECK_ALL.toLowerCase())) {
                return;
            }
            String[] strArrSplit3 = UtilBean.split(formulaTagBean.getFormulavalue().toLowerCase(), FormulaConstants.MULTI_OPTION_CHECK_ALL.toLowerCase() + GlobalTypes.KEY_VALUE_SEPARATOR);
            if (strArrSplit3.length > 1) {
                this.checkAllOption = Arrays.asList(UtilBean.split(strArrSplit3[strArrSplit3.length - 1].toLowerCase(), GlobalTypes.KEY_VALUE_SEPARATOR));
                return;
            }
            return;
        }
        singleCheckChange(z2, null);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) throws NumberFormatException {
        CheckBox checkBox;
        int iFindSelectAllOptionIndex;
        CheckBox checkBox2;
        CheckBox checkBox3;
        if (this.isMulti) {
            int id = compoundButton.getId();
            List<OptionDataBean> list = this.optionBeans;
            if (list == null || list.size() <= id) {
                return;
            }
            OptionDataBean optionDataBean = this.optionBeans.get(id);
            if (this.queFormBean.getAnswer() != null) {
                this.answer = new ArrayList(Arrays.asList(this.queFormBean.getAnswer().toString().split(GlobalTypes.COMMA)));
            }
            if (z) {
                List<String> list2 = this.answer;
                if (list2 != null && !list2.contains(optionDataBean.getKey())) {
                    List<String> list3 = this.uncheckedOption;
                    if (list3 != null && list3.contains(optionDataBean.getValue().trim().toLowerCase())) {
                        this.noneCheck = true;
                        this.noneKey = optionDataBean.getKey();
                        this.noneIndex = id;
                        this.answer.clear();
                        LinearLayout linearLayout = (LinearLayout) this.queFormBean.getQuestionTypeView();
                        for (int i = 0; i < this.optionBeans.size(); i++) {
                            if (i != id) {
                                CheckBox checkBox4 = (CheckBox) linearLayout.findViewById(i);
                                checkBox4.setChecked(false);
                                checkBox4.setTextColor(SewaUtil.COLOR_MORBIDITY_NORMAL);
                            }
                        }
                        this.answer.add(optionDataBean.getKey());
                        if (this.isMorbidityQuestion) {
                            this.answerOptionsValue.clear();
                            SharedStructureData.removeItemFromLICList(this.queFormBean.getQuestion(), this.queFormBean.getLoopCounter() + "");
                        }
                    } else {
                        List<String> list4 = this.checkAllOption;
                        if (list4 != null && list4.contains(optionDataBean.getValue().trim().toLowerCase())) {
                            this.selectAllCheck = true;
                            this.selectAllIndex = id;
                            LinearLayout linearLayout2 = (LinearLayout) this.queFormBean.getQuestionTypeView();
                            if (this.noneCheck) {
                                this.noneCheck = false;
                                CheckBox checkBox5 = (CheckBox) linearLayout2.findViewById(this.noneIndex);
                                if (checkBox5 != null && checkBox5.isChecked()) {
                                    checkBox5.setChecked(false);
                                }
                            }
                            for (int i2 = 0; i2 < this.optionBeans.size(); i2++) {
                                if (i2 != id && (checkBox3 = (CheckBox) linearLayout2.findViewById(i2)) != null && !checkBox3.isChecked()) {
                                    checkBox3.setChecked(true);
                                }
                            }
                            this.answer = collectCheckedOptionKeys();
                        } else {
                            if (this.noneCheck) {
                                this.answer.remove(this.noneKey);
                                this.noneCheck = false;
                                ((CheckBox) ((LinearLayout) this.queFormBean.getQuestionTypeView()).findViewById(this.noneIndex)).setChecked(false);
                            }
                            this.answer.add(optionDataBean.getKey());
                            String[] strArrExtractHighRiskFormula = UtilBean.extractHighRiskFormula(this.queFormBean);
                            this.highRiskFormula = strArrExtractHighRiskFormula;
                            if (strArrExtractHighRiskFormula != null) {
                                this.queFormBean.setAnswer(optionDataBean.getKey());
                                if (FormulaUtil.identifyHighRisk(this.highRiskFormula, this.queFormBean, true).booleanValue()) {
                                    compoundButton.setTextColor(SewaUtil.COLOR_RED);
                                }
                            }
                            if (this.isMorbidityQuestion) {
                                if (isMorbidity(optionDataBean.getKey())) {
                                    this.answerOptionsValue.add(optionDataBean.getValue());
                                    compoundButton.setTextColor(SewaUtil.COLOR_MORBIDITY_GREEN);
                                } else {
                                    this.answerOptionsValue.remove(optionDataBean.getValue());
                                    compoundButton.setTextColor(SewaUtil.COLOR_MORBIDITY_NORMAL);
                                }
                            }
                            if (this.checkAllOption != null && !this.selectAllCheck && (iFindSelectAllOptionIndex = findSelectAllOptionIndex()) != -1 && areAllNonSelectAllOptionsChecked(iFindSelectAllOptionIndex) && (checkBox2 = (CheckBox) ((LinearLayout) this.queFormBean.getQuestionTypeView()).findViewById(iFindSelectAllOptionIndex)) != null && !checkBox2.isChecked()) {
                                this.selectAllIndex = iFindSelectAllOptionIndex;
                                checkBox2.setChecked(true);
                            }
                        }
                    }
                }
            } else {
                List<String> list5 = this.checkAllOption;
                if (list5 != null && list5.contains(optionDataBean.getValue().trim().toLowerCase())) {
                    compoundButton.setTextColor(SewaUtil.COLOR_NORMAL);
                    if (this.selectAllCheck) {
                        this.selectAllCheck = false;
                        LinearLayout linearLayout3 = (LinearLayout) this.queFormBean.getQuestionTypeView();
                        for (int i3 = 0; i3 < this.optionBeans.size(); i3++) {
                            if (i3 != id && (checkBox = (CheckBox) linearLayout3.findViewById(i3)) != null && checkBox.isChecked()) {
                                checkBox.setChecked(false);
                            }
                        }
                        if (this.isMorbidityQuestion) {
                            this.answerOptionsValue.clear();
                            SharedStructureData.removeItemFromLICList(this.queFormBean.getQuestion(), this.queFormBean.getLoopCounter() + "");
                        }
                    }
                    this.answer = collectCheckedOptionKeys();
                } else {
                    this.answer.remove(optionDataBean.getKey());
                    if (this.isMorbidityQuestion) {
                        this.answerOptionsValue.remove(optionDataBean.getValue());
                    }
                    compoundButton.setTextColor(SewaUtil.COLOR_NORMAL);
                    if (this.selectAllCheck) {
                        this.selectAllCheck = false;
                        CheckBox checkBox6 = (CheckBox) ((LinearLayout) this.queFormBean.getQuestionTypeView()).findViewById(this.selectAllIndex);
                        if (checkBox6 != null && checkBox6.isChecked()) {
                            checkBox6.setChecked(false);
                        }
                        this.answer = collectCheckedOptionKeys();
                    }
                }
            }
            this.queFormBean.setAnswer(UtilBean.stringListJoin(this.answer, GlobalTypes.COMMA));
            if (this.isMorbidityQuestion) {
                List<String> list6 = this.answerOptionsValue;
                if (list6 != null && !list6.isEmpty()) {
                    SharedStructureData.addItemInLICList(this.queFormBean.getQuestion(), UtilBean.stringListJoin(this.answerOptionsValue, GlobalTypes.COMMA, true), this.queFormBean.getLoopCounter() + "");
                    return;
                }
                SharedStructureData.removeItemFromLICList(this.queFormBean.getQuestion(), this.queFormBean.getLoopCounter() + "");
                return;
            }
            return;
        }
        singleCheckChange(z, compoundButton);
    }

    private void singleCheckChange(boolean z, CompoundButton compoundButton) throws NumberFormatException {
        OptionDataBean optionDataBean;
        List<OptionDataBean> list = this.optionBeans;
        if (list == null || list.size() != 2) {
            if (z) {
                this.queFormBean.setAnswer("T");
                return;
            } else {
                this.queFormBean.setAnswer("F");
                return;
            }
        }
        if (z) {
            optionDataBean = this.optionBeans.get(0);
        } else {
            optionDataBean = this.optionBeans.get(1);
        }
        if (optionDataBean.getNext() != null) {
            this.queFormBean.setNext(optionDataBean.getNext().trim());
        }
        this.queFormBean.setAnswer(optionDataBean.getKey());
        if (this.isMorbidityQuestion) {
            String strCheckForMorbidity = DynamicUtils.checkForMorbidity(optionDataBean.getValue(), optionDataBean.getKey(), this.queFormBean.getSubform(), this.queFormBean.getLoopCounter() + "", null, null);
            if (compoundButton != null) {
                compoundButton.setTextColor(SewaUtil.getColorForMorbiditySims(strCheckForMorbidity));
            }
        }
    }

    private boolean isMorbidity(String str) {
        String[] strArr = this.morbidityOptions;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                String str2 = strArr[i];
                if (str2.contains(str)) {
                    String[] strArrSplit = UtilBean.split(str2, GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit.length == 3) {
                        return strArrSplit[1].equalsIgnoreCase("M");
                    }
                } else {
                    i++;
                }
            }
        }
        return false;
    }

    private int findSelectAllOptionIndex() {
        if (this.checkAllOption != null && this.optionBeans != null) {
            for (int i = 0; i < this.optionBeans.size(); i++) {
                OptionDataBean optionDataBean = this.optionBeans.get(i);
                if (optionDataBean.getValue() != null && this.checkAllOption.contains(optionDataBean.getValue().trim().toLowerCase())) {
                    return i;
                }
            }
        }
        return -1;
    }

    private boolean areAllNonSelectAllOptionsChecked(int i) {
        CheckBox checkBox;
        if (!(this.queFormBean.getQuestionTypeView() instanceof LinearLayout)) {
            return false;
        }
        LinearLayout linearLayout = (LinearLayout) this.queFormBean.getQuestionTypeView();
        for (int i2 = 0; i2 < this.optionBeans.size(); i2++) {
            if (i2 != i && ((checkBox = (CheckBox) linearLayout.findViewById(i2)) == null || !checkBox.isChecked())) {
                return false;
            }
        }
        return true;
    }

    private List<String> collectCheckedOptionKeys() {
        CheckBox checkBox;
        ArrayList arrayList = new ArrayList();
        if (this.queFormBean.getQuestionTypeView() instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) this.queFormBean.getQuestionTypeView();
            for (int i = 0; i < this.optionBeans.size(); i++) {
                OptionDataBean optionDataBean = this.optionBeans.get(i);
                if ((this.checkAllOption == null || optionDataBean.getValue() == null || !this.checkAllOption.contains(optionDataBean.getValue().trim().toLowerCase())) && (checkBox = (CheckBox) linearLayout.findViewById(i)) != null && checkBox.isChecked()) {
                    arrayList.add(optionDataBean.getKey());
                }
            }
        }
        return arrayList;
    }

    public void changeOptions(List<OptionDataBean> list) {
        this.optionBeans = list;
    }
}
