package com.argusoft.sewa.android.app.util;

import android.util.Log;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class FormulaUtil {
    private static final String TAG = "FormulaUtil";

    private FormulaUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static void addPeriod(String[] strArr, QueFormBean queFormBean, boolean z) throws NumberFormatException {
        int loopId;
        int i;
        int i2;
        int i3;
        if (queFormBean.getAnswer() == null || queFormBean.getAnswer().toString().trim().length() <= 0) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTimeInMillis(Long.parseLong(queFormBean.getAnswer().toString()));
        } catch (NumberFormatException e) {
            Log.e(TAG, null, e);
        }
        UtilBean.clearTimeFromDate(calendar);
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.GESTATIONAL_WEEK, String.valueOf(UtilBean.noOfDayFromDate(calendar.getTimeInMillis(), 7)));
        try {
            loopId = Integer.parseInt(strArr[1]);
            if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                loopId = DynamicUtils.getLoopId(loopId, queFormBean.getLoopCounter());
            }
        } catch (Exception unused) {
            loopId = 0;
        }
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId));
        if (queFormBean2 != null) {
            TextView textView = (TextView) queFormBean2.getQuestionTypeView();
            if (z) {
                if (strArr.length >= 5) {
                    try {
                        i2 = Integer.parseInt(strArr[2]);
                        i3 = Integer.parseInt(strArr[3]);
                        i = Integer.parseInt(strArr[4]);
                    } catch (Exception unused2) {
                        i = 0;
                        i2 = 0;
                        i3 = 0;
                    }
                    String strConvertDateToString = UtilBean.convertDateToString(UtilBean.addYearsMonthsDays(calendar.getTimeInMillis(), i2, i3, i), false, false, true);
                    textView.setText(strConvertDateToString);
                    queFormBean2.setAnswer(strConvertDateToString);
                    return;
                }
                return;
            }
            textView.setText(UtilBean.getMyLabel("Not available"));
            queFormBean2.setAnswer(null);
        }
    }

    public static void setAnswer(QueFormBean queFormBean) {
        if (queFormBean.getRelatedpropertyname() == null || !SharedStructureData.relatedPropertyHashTable.containsKey(queFormBean.getRelatedpropertyname())) {
            return;
        }
        queFormBean.setAnswer(SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname()));
    }

    public static void calculateOutComeDate(QueFormBean queFormBean, boolean z) {
        if (queFormBean.getAnswer() == null || queFormBean.getAnswer().toString().trim().length() <= 0) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTimeInMillis(Long.parseLong(queFormBean.getAnswer().toString()));
        } catch (NumberFormatException e) {
            Log.e(TAG, null, e);
        }
        UtilBean.clearTimeFromDate(calendar);
        if (!z) {
            SharedStructureData.relatedPropertyHashTable.put("dobOfChild", String.valueOf(0));
            return;
        }
        int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(calendar.getTime().getTime());
        SharedStructureData.relatedPropertyHashTable.put("dobOfChild", String.valueOf(calendar.getTime().getTime()));
        if (iArrCalculateAgeYearMonthDay.length == 3) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CHILD_DOB, iArrCalculateAgeYearMonthDay[0] + GlobalTypes.KEY_VALUE_SEPARATOR + iArrCalculateAgeYearMonthDay[1] + GlobalTypes.KEY_VALUE_SEPARATOR + iArrCalculateAgeYearMonthDay[2]);
        }
    }

    public static void setSubtitleColor(String[] strArr, QueFormBean queFormBean) {
        try {
            String str = strArr[strArr.length - 1];
            if (queFormBean.getSubTitleView() != null) {
                if (str.equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
                    queFormBean.getSubTitleView().setTextColor(SewaUtil.COLOR_RED);
                } else if (str.equalsIgnoreCase(MorbiditiesConstant.YELLOW_COLOR)) {
                    queFormBean.getSubTitleView().setTextColor(SewaUtil.COLOR_YELLOW);
                } else if (str.equalsIgnoreCase(MorbiditiesConstant.GREEN_COLOR)) {
                    queFormBean.getSubTitleView().setTextColor(SewaUtil.COLOR_GREEN);
                }
            }
        } catch (Exception unused) {
            Log.e("Error", "At Question id : " + queFormBean.getId() + " \n Sub title : " + queFormBean.getSubtitle() + "\n SubTitle View : " + queFormBean.getSubTitleView());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setColor(java.lang.String[] r8, com.argusoft.sewa.android.app.datastructure.QueFormBean r9) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormulaUtil.setColor(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void setDateSet(String[] strArr, QueFormBean queFormBean) {
        if (queFormBean.getAnswer() == null || queFormBean.getAnswer().toString().trim().length() <= 0 || strArr.length < 2) {
            return;
        }
        SharedStructureData.relatedPropertyHashTable.put(strArr[1].trim(), queFormBean.getAnswer().toString());
    }

    public static void setHint(String[] strArr, QueFormBean queFormBean) {
        String str;
        boolean z = true;
        if (strArr.length > 1) {
            try {
                EditText editText = (EditText) queFormBean.getQuestionTypeView();
                String str2 = strArr[2];
                if (strArr[1].equalsIgnoreCase("P")) {
                    if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                        str2 = str2 + queFormBean.getLoopCounter();
                    }
                    str2 = SharedStructureData.relatedPropertyHashTable.get(str2);
                } else if (strArr[1].equalsIgnoreCase(LocationConstants.LocationType.DISTRICT)) {
                    str2 = strArr[2];
                }
                if (str2 == null || str2.trim().length() <= 0 || str2.equalsIgnoreCase(LabelConstants.NULL)) {
                    return;
                }
                editText.setHint(str2);
                if (queFormBean.getAnswer() == null || (queFormBean.getAnswer().toString().trim().length() == 0 && strArr.length >= 9 && (str = strArr[3]) != null && str.trim().equalsIgnoreCase("startswith"))) {
                    if (str2.trim().toLowerCase().startsWith(strArr[4].toLowerCase())) {
                        String str3 = strArr[5];
                        if (str3 == null || !str3.trim().equalsIgnoreCase("editable")) {
                            return;
                        }
                        String str4 = strArr[6];
                        if (str4 == null || !str4.trim().equalsIgnoreCase("T")) {
                            z = false;
                        }
                        editText.setEnabled(z);
                        return;
                    }
                    String str5 = strArr[7];
                    if (str5 == null || !str5.trim().equalsIgnoreCase("editable")) {
                        return;
                    }
                    String str6 = strArr[8];
                    if (str6 == null || !str6.trim().equalsIgnoreCase("T")) {
                        z = false;
                    }
                    editText.setEnabled(z);
                }
            } catch (Exception e) {
                Log.e(TAG, null, e);
            }
        }
    }

    public static void setValueAsProperty(QueFormBean queFormBean) {
        if (queFormBean.getAnswer() == null || queFormBean.getAnswer().toString().trim().length() <= 0 || queFormBean.getAnswer().toString().trim().equalsIgnoreCase(LabelConstants.NULL)) {
            return;
        }
        String strTrim = queFormBean.getRelatedpropertyname().trim();
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            strTrim = strTrim + queFormBean.getLoopCounter();
        }
        List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(queFormBean, false);
        OptionDataBean optionDataBean = new OptionDataBean();
        optionDataBean.setKey(queFormBean.getAnswer().toString().trim());
        int iIndexOf = optionsOrDataMap.indexOf(optionDataBean);
        if (iIndexOf > -1) {
            optionDataBean = optionsOrDataMap.get(iIndexOf);
        }
        SharedStructureData.relatedPropertyHashTable.put(strTrim, optionDataBean.getValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setProperty(java.lang.String[] r18, com.argusoft.sewa.android.app.datastructure.QueFormBean r19) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormulaUtil.setProperty(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void setDefaultProperty(String[] strArr, QueFormBean queFormBean) {
        String strTrim;
        boolean z = queFormBean.getLoopCounter() <= 0 || queFormBean.isIgnoreLoop();
        if (queFormBean.getAnswer() != null) {
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                strTrim = queFormBean.getRelatedpropertyname().trim();
            } else if (strArr.length <= 1 || (strTrim = strArr[1]) == null) {
                strTrim = null;
            }
            if (strTrim != null) {
                Map<String, String> map = SharedStructureData.relatedPropertyHashTable;
                if (!z) {
                    strTrim = strTrim + queFormBean.getLoopCounter();
                }
                map.put(strTrim, queFormBean.getAnswer().toString());
            }
        }
    }

    public static void getTime(String[] strArr) {
        QueFormBean queFormBean;
        if (strArr.length <= 1 || strArr[1] == null || (queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(Integer.parseInt(strArr[1])))) == null) {
            return;
        }
        Date date = new Date();
        queFormBean.setAnswer(Long.valueOf(date.getTime()));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss", Locale.getDefault());
        TextView textView = (TextView) queFormBean.getQuestionTypeView();
        if (textView != null) {
            textView.setText(simpleDateFormat.format(date));
        }
    }

    public static void fillLocation(String[] strArr, QueFormBean queFormBean) {
        if (strArr.length <= 1 || strArr[1] == null || queFormBean.getAnswer() == null) {
            return;
        }
        Integer numValueOf = Integer.valueOf(Integer.parseInt((String) queFormBean.getAnswer()));
        SharedStructureData.sewaService.retrieveLocationByParent(numValueOf);
        List<FieldValueMobDataBean> list = SharedStructureData.mapDataMapLabelBean.get(String.valueOf(numValueOf));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (list != null) {
            arrayList.add(UtilBean.getMyLabel("-Select-"));
            for (FieldValueMobDataBean fieldValueMobDataBean : list) {
                OptionTagBean optionTagBean = new OptionTagBean();
                optionTagBean.setKey("" + fieldValueMobDataBean.getIdOfValue());
                optionTagBean.setValue(fieldValueMobDataBean.getValue());
                arrayList2.add(optionTagBean);
                arrayList.add(UtilBean.getMyLabel(fieldValueMobDataBean.getValue()));
            }
        } else {
            OptionTagBean optionTagBean2 = new OptionTagBean();
            optionTagBean2.setKey("-1");
            optionTagBean2.setValue("No option available");
            arrayList2.add(optionTagBean2);
            arrayList.add(UtilBean.getMyLabel("No option available"));
        }
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(Integer.parseInt(strArr[1])));
        if (queFormBean2 != null) {
            Spinner spinner = (Spinner) queFormBean2.getQuestionTypeView();
            if (queFormBean2.getAnswer() != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    if (((OptionTagBean) it.next()).getKey().equals(queFormBean2.getAnswer())) {
                        return;
                    }
                }
                spinner.setAdapter((SpinnerAdapter) UtilBean.createAdapter(arrayList));
                queFormBean2.setOptions(arrayList2);
                return;
            }
            spinner.setAdapter((SpinnerAdapter) UtilBean.createAdapter(arrayList));
            queFormBean2.setOptions(arrayList2);
        }
    }

    public static void displayAge(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        int loopId;
        String str;
        TextView textView;
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            loopId = DynamicUtils.getLoopId(Integer.parseInt(strArr[1]), queFormBean.getLoopCounter());
            str = SharedStructureData.relatedPropertyHashTable.get("dob" + queFormBean.getLoopCounter());
        } else {
            loopId = Integer.parseInt(strArr[1]);
            str = SharedStructureData.relatedPropertyHashTable.get("dob");
        }
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId));
        if (queFormBean2 != null && (textView = (TextView) queFormBean2.getQuestionTypeView()) != null) {
            if (str != null) {
                int[] iArrCalculateAgeYearMonthDayOnGivenDate = UtilBean.calculateAgeYearMonthDayOnGivenDate(Long.valueOf(new Date(Long.parseLong(str)).getTime()), Long.valueOf(new Date().getTime()));
                String ageDisplay = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDayOnGivenDate[0], iArrCalculateAgeYearMonthDayOnGivenDate[1], iArrCalculateAgeYearMonthDayOnGivenDate[2]);
                textView.setText(UtilBean.getMyLabel(ageDisplay));
                queFormBean2.setAnswer(ageDisplay);
            } else {
                textView.setText(UtilBean.getMyLabel(LabelConstants.DATE_NOT_YET_SELECTED));
                queFormBean2.setAnswer(LabelConstants.DATE_NOT_YET_SELECTED);
            }
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_AS_PER_DATE, "Age here");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setPropertyFromScannedAadhar(java.lang.String[] r13, com.argusoft.sewa.android.app.datastructure.QueFormBean r14) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 853
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormulaUtil.setPropertyFromScannedAadhar(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void setAanganwadiIdFromPhcId(QueFormBean queFormBean) throws NumberFormatException {
        List<FieldValueMobDataBean> listRetrieveAnganwadiListFromSubcentreId;
        if (queFormBean.getAnswer() != null) {
            int i = Integer.parseInt(queFormBean.getAnswer().toString());
            Integer numValueOf = Integer.valueOf(i);
            numValueOf.getClass();
            if (i == 0) {
                listRetrieveAnganwadiListFromSubcentreId = SharedStructureData.mapDataMapLabelBean.get("anganwadiList");
            } else {
                listRetrieveAnganwadiListFromSubcentreId = SharedStructureData.sewaFhsService.retrieveAnganwadiListFromSubcentreId(numValueOf);
            }
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DEFAULT_PHC, String.valueOf(numValueOf));
            ArrayList arrayList = new ArrayList();
            ArrayList<OptionTagBean> arrayList2 = new ArrayList();
            if (listRetrieveAnganwadiListFromSubcentreId != null && !listRetrieveAnganwadiListFromSubcentreId.isEmpty()) {
                arrayList.add(UtilBean.getMyLabel("-Select-"));
                for (FieldValueMobDataBean fieldValueMobDataBean : listRetrieveAnganwadiListFromSubcentreId) {
                    OptionTagBean optionTagBean = new OptionTagBean();
                    optionTagBean.setKey("" + fieldValueMobDataBean.getIdOfValue());
                    optionTagBean.setValue(fieldValueMobDataBean.getValue());
                    arrayList2.add(optionTagBean);
                    arrayList.add(UtilBean.getMyLabel(fieldValueMobDataBean.getValue()));
                }
                OptionTagBean optionTagBean2 = new OptionTagBean();
                optionTagBean2.setKey("0");
                optionTagBean2.setValue(LabelConstants.DOES_NOT_BELONG_TO_ANGANWADI);
                arrayList2.add(optionTagBean2);
            } else {
                arrayList.add(UtilBean.getMyLabel(LabelConstants.NO_ANGANWADI_AVAILABLE));
                OptionTagBean optionTagBean3 = new OptionTagBean();
                optionTagBean3.setKey("0");
                optionTagBean3.setValue(LabelConstants.DOES_NOT_BELONG_TO_ANGANWADI);
                arrayList2.add(optionTagBean3);
            }
            arrayList.add(UtilBean.getMyLabel(LabelConstants.DOES_NOT_BELONG_TO_ANGANWADI));
            QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(Integer.parseInt(queFormBean.getNext())));
            if (queFormBean2 != null) {
                Spinner spinner = (Spinner) queFormBean2.getQuestionTypeView();
                spinner.setAdapter((SpinnerAdapter) UtilBean.createAdapter(arrayList));
                if (SharedStructureData.relatedPropertyHashTable.get(queFormBean2.getRelatedpropertyname()) != null) {
                    for (OptionTagBean optionTagBean4 : arrayList2) {
                        if (optionTagBean4.getKey().equals(SharedStructureData.relatedPropertyHashTable.get(queFormBean2.getRelatedpropertyname()))) {
                            spinner.setSelection(arrayList.indexOf(optionTagBean4.getValue()));
                        }
                    }
                }
                queFormBean2.setOptions(arrayList2);
                queFormBean2.setDatamap(null);
            }
        }
    }

    public static void displayEarlyRegistration(String[] strArr, QueFormBean queFormBean, boolean z) throws NumberFormatException {
        if (queFormBean == null || queFormBean.getQuestionTypeView() == null || !z || strArr.length != 3) {
            return;
        }
        int i = Integer.parseInt(strArr[1]);
        int i2 = Integer.parseInt(strArr[2]);
        String str = SharedStructureData.relatedPropertyHashTable.get("lmpDate");
        String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CUR_PREG_REG_DATE);
        if (str2 == null) {
            return;
        }
        Date date = new Date(Long.parseLong((String) Objects.requireNonNull(str)));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(5, i2);
        if (calendar.getTime().getTime() > new Date(Long.parseLong(str2)).getTime()) {
            QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i));
            ((TextView) ((QueFormBean) Objects.requireNonNull(queFormBean2)).getQuestionTypeView()).setText(UtilBean.getMyLabel("Yes"));
            queFormBean2.setAnswer("Yes");
            queFormBean2.setQuestionUIFrame(queFormBean2);
            return;
        }
        QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i));
        ((TextView) ((QueFormBean) Objects.requireNonNull(queFormBean3)).getQuestionTypeView()).setText(UtilBean.getMyLabel("No"));
        queFormBean3.setAnswer("No");
        queFormBean3.setQuestionUIFrame(queFormBean3);
    }

    public static void resetLoopParams() {
        SharedStructureData.isAadharNumberScanned = Boolean.FALSE;
        SharedStructureData.isDobScannedFromAadhar = Boolean.FALSE;
    }

    public static void updateLoopCount(String[] strArr, QueFormBean queFormBean) {
        if (queFormBean.getAnswer() == null || !queFormBean.getType().equals(GlobalTypes.RADIOBUTTON)) {
            return;
        }
        SharedStructureData.relatedPropertyHashTable.put(strArr[1], String.valueOf(queFormBean.getLoopCounter() + 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void clearScannedAadharDetails(java.lang.String[] r16, com.argusoft.sewa.android.app.datastructure.QueFormBean r17) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.FormulaUtil.clearScannedAadharDetails(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void setImmunisationWpd(QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.DELIVERY_DATE);
        if (str == null || !(queFormBean.getAnswer() == null || queFormBean.getAnswer().toString().trim().equals(str.trim()))) {
            SharedStructureData.relatedPropertyHashTable.remove(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.REMAINING_VACCINES, queFormBean.getLoopCounter()));
        }
    }

    public static void setPreFilledAsPerRelationWithHOF(String[] strArr, QueFormBean queFormBean) {
        if (strArr.length == 2 && queFormBean.getAnswer() != null && queFormBean.getAnswer().equals(MorbiditiesConstant.ONE_PLUS)) {
            SharedStructureData.relatedPropertyHashTable.put(strArr[1], String.valueOf(queFormBean.getLoopCounter()));
        }
    }

    public static void setShowSmartReferral(String[] strArr) {
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.SHOW_SMART_REFERRAL, strArr[1]);
    }

    public static Boolean identifyHighRisk(String[] strArr, QueFormBean queFormBean, Boolean bool) throws NumberFormatException {
        if (strArr.length <= 1) {
            return false;
        }
        if (strArr[1].equalsIgnoreCase(RchConstants.CHILD_MALNOURISHED)) {
            String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.LATEST_WEIGHT);
            if (str.contains("/")) {
                str = str.split("/")[0];
            }
            float f = Float.parseFloat(str);
            Float fValueOf = Float.valueOf(f);
            String str2 = SharedStructureData.relatedPropertyHashTable.get("gender");
            int i = Integer.parseInt(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.AGE));
            fValueOf.getClass();
            String strFindMalnutritionGrade = UtilBean.findMalnutritionGrade(str2, i, f);
            SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_MODERATELY_MALNOURISHED));
            SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_SEVERELY_MALNOURISHED));
            if (strFindMalnutritionGrade != null && strFindMalnutritionGrade.equalsIgnoreCase(GlobalTypes.MIDDLE_MALNUTRITION_GRADE)) {
                SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_MODERATELY_MALNOURISHED));
            } else if (strFindMalnutritionGrade != null && strFindMalnutritionGrade.equalsIgnoreCase(GlobalTypes.LOWER_MALNUTRITION_GRADE)) {
                SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_SEVERELY_MALNOURISHED));
            }
        } else if (strArr[1].equalsIgnoreCase(RchConstants.LOW_SDSCORE)) {
            String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SDSCORE);
            if (str3 == null || !str3.equalsIgnoreCase(RchConstants.SD_SCORE_SD4)) {
                SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.CHILD_LOW_SDSCORE));
            } else {
                SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.CHILD_LOW_SDSCORE));
            }
        } else if (queFormBean.getAnswer() != null && !queFormBean.getAnswer().toString().trim().isEmpty() && !queFormBean.getAnswer().toString().trim().equalsIgnoreCase(LabelConstants.NULL) && bool.equals(Boolean.FALSE)) {
            SharedStructureData.rchHighRiskService.identifyHighRisk(strArr[1], queFormBean.getAnswer(), UtilBean.getOptionsOrDataMap(queFormBean, false));
        } else if (queFormBean.getAnswer() != null && !queFormBean.getAnswer().toString().trim().isEmpty() && !queFormBean.getAnswer().toString().trim().equalsIgnoreCase(LabelConstants.NULL) && bool.equals(Boolean.TRUE)) {
            return SharedStructureData.rchHighRiskService.identifyHighRiskOnInput(strArr[1], queFormBean.getAnswer());
        }
        return false;
    }
}
