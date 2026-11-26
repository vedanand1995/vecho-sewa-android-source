package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.core.RchHighRiskService;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class RchHighRiskServiceImpl implements RchHighRiskService {
    public Dao<ListValueBean, Integer> listValueBeanDao;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.argusoft.sewa.android.app.core.RchHighRiskService
    public void identifyHighRisk(String str, Object obj, List<OptionDataBean> list) throws NumberFormatException {
        if (str == null) {
        }
        boolean z = obj != null && obj.toString().equalsIgnoreCase(RchConstants.TEST_POSITIVE);
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2038916646:
                if (str.equals(RchConstants.URINE_SUGAR)) {
                    c = 0;
                    break;
                }
                break;
            case -1947338966:
                if (str.equals(RchConstants.NO_OF_PADS)) {
                    c = 1;
                    break;
                }
                break;
            case -1900895411:
                if (str.equals(RchConstants.DISEASE_LIST_VALUES)) {
                    c = 2;
                    break;
                }
                break;
            case -1633105557:
                if (str.equals(RchConstants.SYPHILIS_TEST)) {
                    c = 3;
                    break;
                }
                break;
            case -1627802737:
                if (str.equals(RchConstants.THALASSEMIA_TEST)) {
                    c = 4;
                    break;
                }
                break;
            case -1405823263:
                if (str.equals(RchConstants.BABY_CRY)) {
                    c = 5;
                    break;
                }
                break;
            case -1385580392:
                if (str.equals(RchConstants.FETAL_HEART_RATE)) {
                    c = 6;
                    break;
                }
                break;
            case -1253584272:
                if (str.equals(RchConstants.ABNORMAL_TALKS)) {
                    c = 7;
                    break;
                }
                break;
            case -1243493912:
                if (str.equals(RchConstants.MOTHER_FEVER)) {
                    c = '\b';
                    break;
                }
                break;
            case -758493362:
                if (str.equals(RchConstants.URINE_TEST)) {
                    c = '\t';
                    break;
                }
                break;
            case -630881287:
                if (str.equals(RchConstants.BABY_BOIL)) {
                    c = '\n';
                    break;
                }
                break;
            case -630782421:
                if (str.equals(RchConstants.BABY_EYES)) {
                    c = 11;
                    break;
                }
                break;
            case -169867986:
                if (str.equals(RchConstants.WEIGHT_PW)) {
                    c = '\f';
                    break;
                }
                break;
            case -94553599:
                if (str.equals(RchConstants.BABY_WEIGHT)) {
                    c = '\r';
                    break;
                }
                break;
            case 2126:
                if (str.equals("BP")) {
                    c = 14;
                    break;
                }
                break;
            case 2298:
                if (str.equals("HB")) {
                    c = 15;
                    break;
                }
                break;
            case 2670:
                if (str.equals("TB")) {
                    c = 16;
                    break;
                }
                break;
            case 71541:
                if (str.equals(RchConstants.HIV_TEST)) {
                    c = 17;
                    break;
                }
                break;
            case 2629992:
                if (str.equals(RchConstants.VDRL_TEST)) {
                    c = 18;
                    break;
                }
                break;
            case 49306488:
                if (str.equals(RchConstants.URINE_ALBUMIN)) {
                    c = 19;
                    break;
                }
                break;
            case 66786916:
                if (str.equals("FEVER")) {
                    c = 20;
                    break;
                }
                break;
            case 68541567:
                if (str.equals(RchConstants.HBSAG_TEST)) {
                    c = 21;
                    break;
                }
                break;
            case 242115865:
                if (str.equals(RchConstants.CHILD_DISEASE)) {
                    c = 22;
                    break;
                }
                break;
            case 271615036:
                if (str.equals(RchConstants.WEIGHT_C)) {
                    c = 23;
                    break;
                }
                break;
            case 681149058:
                if (str.equals(RchConstants.CHILD_UMBILICUS)) {
                    c = 24;
                    break;
                }
                break;
            case 852021031:
                if (str.equals(RchConstants.DISEASE_CONSTANT)) {
                    c = 25;
                    break;
                }
                break;
            case 1036017179:
                if (str.equals(RchConstants.BLOOD_SUGAR_TEST)) {
                    c = 26;
                    break;
                }
                break;
            case 1066821891:
                if (str.equals(RchConstants.CHILD_BREATH)) {
                    c = 27;
                    break;
                }
                break;
            case 1172145183:
                if (str.equals(RchConstants.HEIGHT_PW)) {
                    c = 28;
                    break;
                }
                break;
            case 1314519135:
                if (str.equals(RchConstants.PREVIOUS_PREG_OUTCOME)) {
                    c = 29;
                    break;
                }
                break;
            case 1341728234:
                if (str.equals(RchConstants.ULTRASOUND_ABNORMALITY)) {
                    c = 30;
                    break;
                }
                break;
            case 1533713770:
                if (str.equals("SICKLE_CELL")) {
                    c = 31;
                    break;
                }
                break;
            case 1551406657:
                if (str.equals(RchConstants.MALARIA)) {
                    c = ' ';
                    break;
                }
                break;
            case 1660624263:
                if (str.equals(RchConstants.CHILD_ABDOMEN)) {
                    c = '!';
                    break;
                }
                break;
            case 1713552396:
                if (str.equals(RchConstants.FOUL_SMELL)) {
                    c = Typography.quote;
                    break;
                }
                break;
            case 1771128880:
                if (str.equals(RchConstants.CHILD_INFECTION)) {
                    c = '#';
                    break;
                }
                break;
            case 1869371137:
                if (str.equals(RchConstants.CHILD_FEED)) {
                    c = Typography.dollar;
                    break;
                }
                break;
            case 1869553973:
                if (str.equals(RchConstants.CHILD_LIMB)) {
                    c = '%';
                    break;
                }
                break;
            case 1869764320:
                if (str.equals(RchConstants.CHILD_SKIN)) {
                    c = Typography.amp;
                    break;
                }
                break;
            case 1869788471:
                if (str.equals(RchConstants.CHILD_TEMP)) {
                    c = '\'';
                    break;
                }
                break;
            case 1908259597:
                if (str.equals(RchConstants.OTHER_DISEASE)) {
                    c = '(';
                    break;
                }
                break;
            case 1937904278:
                if (str.equals(RchConstants.ORAL_GTT)) {
                    c = ')';
                    break;
                }
                break;
            case 1967373389:
                if (str.equals(RchConstants.BREAST)) {
                    c = '*';
                    break;
                }
                break;
            case 1978401390:
                if (str.equals(RchConstants.ULTRASOUND_TEST)) {
                    c = '+';
                    break;
                }
                break;
            case 2036575083:
                if (str.equals(RchConstants.BREASTFEED)) {
                    c = ',';
                    break;
                }
                break;
            case 2053482728:
                if (str.equals(RchConstants.BLOOD_SUGAR_VALUE)) {
                    c = '-';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (obj != null && !obj.toString().equals("0")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_SUGAR));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_SUGAR));
                    break;
                }
            case 1:
                if (obj != null && (Integer.parseInt(obj.toString()) > 5 || Integer.parseInt(obj.toString()) == 0)) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_NO_OF_PADS));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_NO_OF_PADS));
                    break;
                }
                break;
            case 2:
                if (list != null && !list.isEmpty()) {
                    for (OptionDataBean optionDataBean : list) {
                        if (!optionDataBean.getKey().contains(RchConstants.OTHER) && !optionDataBean.getKey().contains("NONE") && !optionDataBean.getKey().contains("NK")) {
                            try {
                                SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(this.listValueBeanDao.queryBuilder().where().eq("idOfValue", optionDataBean.getKey()).queryForFirst().getValue()));
                            } catch (Exception e) {
                                Log.e(getClass().getSimpleName(), e.getMessage(), e);
                            }
                        }
                    }
                }
                if (obj != null) {
                    for (String str2 : obj.toString().split(GlobalTypes.COMMA)) {
                        if (!str2.contains(RchConstants.OTHER) && !str2.contains("NONE") && !str2.contains("NK")) {
                            try {
                                SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(this.listValueBeanDao.queryBuilder().where().eq("idOfValue", str2).queryForFirst().getValue()));
                            } catch (Exception e2) {
                                Log.e(getClass().getSimpleName(), null, e2);
                            }
                        }
                    }
                    break;
                }
                break;
            case 3:
                if (z) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SYPHILIS));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SYPHILIS));
                    break;
                }
            case 4:
                if (obj != null && obj.toString().equalsIgnoreCase(RchConstants.THALASSEMIA_MAJOR)) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_THALASSEMIA_MAJOR));
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_THALASSEMIA_MINOR));
                    break;
                } else if (obj != null && obj.toString().equalsIgnoreCase(RchConstants.THALASSEMIA_MINOR)) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_THALASSEMIA_MINOR));
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_THALASSEMIA_MAJOR));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_THALASSEMIA_MAJOR));
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_THALASSEMIA_MINOR));
                    break;
                }
                break;
            case 5:
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_CRY));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_CRY));
                    break;
                }
                break;
            case 6:
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit = obj.toString().split("/");
                    if (strArrSplit.length == 2) {
                        int i = Integer.parseInt(strArrSplit[1]);
                        if (i > 160) {
                            SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_FETAL_HEART_RATE));
                            break;
                        } else if (i < 110) {
                            SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_FETAL_HEART_RATE));
                            break;
                        } else {
                            SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_FETAL_HEART_RATE));
                            SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_FETAL_HEART_RATE));
                            break;
                        }
                    } else {
                        SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_FETAL_HEART_RATE));
                        SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_FETAL_HEART_RATE));
                        break;
                    }
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_FETAL_HEART_RATE));
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_FETAL_HEART_RATE));
                    break;
                }
                break;
            case 7:
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_ABNORMAL_TALKS));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_ABNORMAL_TALKS));
                    break;
                }
                break;
            case '\b':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_MOTHER_FEVER));
                    break;
                } else if (obj != null && obj.toString().equalsIgnoreCase("F")) {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_MOTHER_FEVER));
                    break;
                }
                break;
            case '\t':
                if (obj != null && !obj.toString().equals(MorbiditiesConstant.TWO_PLUS)) {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_ALBUMIN));
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_SUGAR));
                    break;
                }
                break;
            case '\n':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_BOIL));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_BOIL));
                    break;
                }
            case 11:
                if (obj != null && !obj.toString().equalsIgnoreCase(MorbiditiesConstant.NORMAL)) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_EYES));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_EYES));
                    break;
                }
                break;
            case '\f':
                if (obj != null && obj.toString().length() > 0 && Float.parseFloat(obj.toString()) < 45.0f) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VERY_LOW_WEIGHT));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VERY_LOW_WEIGHT));
                    break;
                }
                break;
            case '\r':
                if (obj != null) {
                    try {
                        float f = Float.parseFloat(obj.toString().trim());
                        Float fValueOf = Float.valueOf(f);
                        fValueOf.getClass();
                        if (f >= 2.5f) {
                            SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_WEIGHT));
                        } else {
                            fValueOf.getClass();
                            if (f < 1.8f) {
                                SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_WEIGHT));
                                SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_WEIGHT_SNC));
                            } else {
                                SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_WEIGHT_SNC));
                                SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_WEIGHT));
                            }
                        }
                        break;
                    } catch (NumberFormatException unused) {
                        SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_WEIGHT));
                        SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_WEIGHT_SNC));
                        return;
                    }
                }
                break;
            case 14:
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit2 = obj.toString().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit2.length == 3) {
                        int i2 = Integer.parseInt(strArrSplit2[1]);
                        int i3 = Integer.parseInt(strArrSplit2[2]);
                        if (i2 > 139 || i3 > 89) {
                            SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_BLOOD_PRESSURE));
                            break;
                        }
                    }
                }
                break;
            case 15:
                if (obj != null && obj.toString().length() > 0 && Float.parseFloat(obj.toString()) < 7.0f) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_HAEMOGLOBIN));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_HAEMOGLOBIN));
                    break;
                }
                break;
            case 16:
                if (obj != null && obj.toString().equals(MorbiditiesConstant.ONE_PLUS)) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_TUBERCULOSIS));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_TUBERCULOSIS));
                    break;
                }
                break;
            case 17:
                if (z) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIV));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIV));
                    break;
                }
            case 18:
                if (z) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VDRL));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VDRL));
                    break;
                }
            case 19:
                if (obj != null && !obj.toString().equals("0")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_ALBUMIN));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_ALBUMIN));
                    break;
                }
                break;
            case 20:
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit3 = obj.toString().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    float f2 = Float.parseFloat(strArrSplit3[1] + GlobalTypes.DOT_SEPARATOR + strArrSplit3[2]);
                    Float.valueOf(f2).getClass();
                    if (f2 > 99.5f) {
                        SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_MOTHER_FEVER));
                        break;
                    } else {
                        SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_MOTHER_FEVER));
                        break;
                    }
                }
                break;
            case 21:
                if (obj != null && obj.toString().equalsIgnoreCase("REACTIVE")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_REACTIVE_HBSAG_TEST));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_REACTIVE_HBSAG_TEST));
                    break;
                }
                break;
            case 22:
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_DISEASE));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_DISEASE));
                    break;
                }
                break;
            case 23:
                if (obj != null && ((Float.parseFloat(obj.toString()) < 5.0d && Float.parseFloat(obj.toString()) < 2.5f && Float.parseFloat(obj.toString()) > 0.0f) || (Float.parseFloat(obj.toString()) >= 500.0f && Float.parseFloat(obj.toString()) <= 5000.0f && Float.parseFloat(obj.toString()) / 1000.0f < 2.5f && Float.parseFloat(obj.toString()) / 1000.0f > 0.0f))) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VERY_LOW_WEIGHT));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VERY_LOW_WEIGHT));
                    break;
                }
                break;
            case 24:
                if (obj != null && !obj.toString().equalsIgnoreCase("NONE")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_UMBILICUS));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_UMBILICUS));
                    break;
                }
                break;
            case 25:
                if (list != null && !list.isEmpty()) {
                    for (OptionDataBean optionDataBean2 : list) {
                        if (!optionDataBean2.getKey().contains(RchConstants.OTHER) && !optionDataBean2.getKey().contains("NONE") && !optionDataBean2.getKey().contains("NK")) {
                            SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.getHighRiskDiseaseFromConstant(optionDataBean2.getKey())));
                        }
                    }
                }
                if (obj != null) {
                    for (String str3 : obj.toString().split(GlobalTypes.COMMA)) {
                        if (!str3.contains(RchConstants.OTHER) && !str3.contains("NONE") && !str3.contains("NK")) {
                            SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.getHighRiskDiseaseFromConstant(str3)));
                        }
                    }
                    break;
                }
                break;
            case 26:
                if (obj != null && obj.toString().equalsIgnoreCase(RchConstants.NOT_DONE)) {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_BLOOD_SUGAR));
                    break;
                }
                break;
            case 27:
                if (obj != null && Integer.parseInt(obj.toString()) < 40) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_BREATH_LOW));
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_BREATH_HIGH));
                    break;
                } else if (obj == null || Integer.parseInt(obj.toString()) <= 59) {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_BREATH_LOW));
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_BREATH_HIGH));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_BREATH_HIGH));
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_BREATH_LOW));
                    break;
                }
                break;
            case 28:
                if (obj != null && obj.toString().length() > 0 && Integer.parseInt(obj.toString()) < 145) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_HEIGHT));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_HEIGHT));
                    break;
                }
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                if (obj != null && obj.toString().equalsIgnoreCase("SBIRTH")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_PREVIOUS_PREG_OUTCOME_STILL_BIRTH));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_PREVIOUS_PREG_OUTCOME_STILL_BIRTH));
                    break;
                }
            case 30:
                if (obj != null && !obj.toString().equals("NO_ABNORMALITY_DETECTED")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_ABNORMALITY_IN_ULTRASOUND));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_ABNORMALITY_IN_ULTRASOUND));
                    break;
                }
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                if (obj != null && obj.toString().equalsIgnoreCase(RchConstants.SOCIAL_CELL_TRAIT)) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SOCIAL_CELL_TRAIT));
                    break;
                } else if (obj != null && obj.toString().equalsIgnoreCase("SICKLE_CELL")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SICKLE_CELL));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SOCIAL_CELL_TRAIT));
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SICKLE_CELL));
                    break;
                }
                break;
            case ' ':
                if (obj != null && obj.toString().equals(MorbiditiesConstant.ONE_PLUS)) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_MALARIA));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_MALARIA));
                    break;
                }
                break;
            case '!':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_ABDOMEN));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_ABDOMEN));
                    break;
                }
                break;
            case '\"':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_FOUL_SMELL));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_FOUL_SMELL));
                    break;
                }
                break;
            case '#':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_INFECTION));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_INFECTION));
                    break;
                }
                break;
            case '$':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_FEED));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_FEED));
                    break;
                }
                break;
            case '%':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_LIMB));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_LIMB));
                    break;
                }
                break;
            case '&':
                if (obj != null && obj.toString().equalsIgnoreCase("YLLW")) {
                    SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_SKIN));
                    break;
                } else {
                    SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_CHILD_SKIN));
                    break;
                }
                break;
            case '\'':
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit4 = obj.toString().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (Float.parseFloat(strArrSplit4[1] + GlobalTypes.DOT_SEPARATOR + strArrSplit4[2]) > 98.0f) {
                        SharedStructureData.highRiskConditionsChild.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_HIGH_TEMP));
                        break;
                    } else {
                        SharedStructureData.highRiskConditionsChild.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BABY_HIGH_TEMP));
                        break;
                    }
                }
                break;
            case '(':
                if (obj != null && !obj.toString().trim().isEmpty()) {
                    SharedStructureData.highRiskConditions.add(obj.toString());
                    break;
                }
                break;
            case ')':
                if (obj != null && obj.toString().equalsIgnoreCase("REACTIVE")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_ORAL_GTT));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_ORAL_GTT));
                    break;
                }
                break;
            case '*':
                if (obj != null && !obj.toString().equalsIgnoreCase(MorbiditiesConstant.NO_PROBLEM)) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BREAST_ISSUES) + obj.toString());
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BREAST_ISSUES) + obj.toString());
                    break;
                }
                break;
            case '+':
                if (obj != null && obj.toString().equals(MorbiditiesConstant.TWO_PLUS)) {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_ABNORMALITY_IN_ULTRASOUND));
                    break;
                }
                break;
            case ',':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BREASTFEED));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_BREASTFEED));
                    break;
                }
            case '-':
                if (obj != null && Integer.parseInt(obj.toString()) > 125) {
                    SharedStructureData.highRiskConditions.add(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_BLOOD_SUGAR));
                    break;
                } else {
                    SharedStructureData.highRiskConditions.remove(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_BLOOD_SUGAR));
                    break;
                }
                break;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.RchHighRiskService
    public String identifyHighRiskForRchAnc(Map<String, Object> map) throws NumberFormatException {
        Object obj = map.get("bpAnswer");
        Object obj2 = map.get("weightAnswer");
        Object obj3 = map.get("haemoglobinAnswer");
        Object obj4 = map.get("dangerousSignAnswer");
        Object obj5 = map.get("otherDangerousSignAnswer");
        Object obj6 = map.get("urineAlbuminAnswer");
        Object obj7 = map.get("urineSugarAnswer");
        Object obj8 = map.get("sickleCellTestAnswer");
        Object obj9 = map.get("previousComplicationsAnswer");
        Object obj10 = map.get("otherPreviousComplicationsAnswer");
        StringBuilder sb = new StringBuilder();
        if (obj != null && obj.toString().contains("F")) {
            String[] strArrSplit = obj.toString().split(GlobalTypes.KEY_VALUE_SEPARATOR);
            if (strArrSplit.length == 3) {
                int i = Integer.parseInt(strArrSplit[1]);
                int i2 = Integer.parseInt(strArrSplit[2]);
                if (i > 139 || i2 > 89) {
                    sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_HIGH_BLOOD_PRESSURE));
                    sb.append(LabelConstants.NEW_LINE);
                }
            }
        }
        if (obj3 != null && obj3.toString().length() > 0 && Float.parseFloat(obj3.toString()) < 7.0f) {
            sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_HAEMOGLOBIN));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (obj2 != null && obj2.toString().length() > 0 && Float.parseFloat(obj2.toString()) < 45.0f) {
            sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VERY_LOW_WEIGHT));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (obj6 != null && !obj6.toString().equals("0")) {
            sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_ALBUMIN));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (obj7 != null && !obj7.toString().equals("0")) {
            sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_URINE_SUGAR));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (obj4 != null) {
            for (String str : obj4.toString().split(GlobalTypes.COMMA)) {
                if (!str.contains(RchConstants.OTHER) && !str.contains("NONE")) {
                    try {
                        sb.append(UtilBean.getMyLabel(this.listValueBeanDao.queryBuilder().where().eq("idOfValue", str).queryForFirst().getValue()));
                        sb.append(LabelConstants.NEW_LINE);
                    } catch (SQLException e) {
                        Log.e(getClass().getSimpleName(), null, e);
                    }
                } else if (str.contains(RchConstants.OTHER) && obj5 != null) {
                    sb.append(obj5);
                    sb.append(LabelConstants.NEW_LINE);
                }
            }
        }
        if (obj8 != null && obj8.toString().equals(RchConstants.TEST_POSITIVE)) {
            sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SICKLE_CELL));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (obj9 != null) {
            for (String str2 : obj9.toString().split(GlobalTypes.COMMA)) {
                if (!str2.contains(RchConstants.OTHER) && !str2.contains("NONE") && !str2.contains("NK")) {
                    str2.hashCode();
                    switch (str2) {
                        case "KCOSCD":
                            sb.append("Known case of sickle cell disease");
                            break;
                        case "MLPRST":
                            sb.append("Malpresentation");
                            break;
                        case "OBSLBR":
                            sb.append("Obstructed Labour");
                            break;
                        case "PRETRM":
                            sb.append("Pre term");
                            break;
                        case "SEVANM":
                            sb.append(RchConstants.HIGH_RISK_SEVERE_ANEMIA);
                            break;
                        case "CAESARIAN":
                            sb.append("Caesarian Section");
                            break;
                        case "P2ABO":
                            sb.append("Previous 2 abortions");
                            break;
                        case "PLPRE":
                            sb.append("Placenta previa");
                            break;
                        case "PRELS":
                            sb.append("Previous LSCS");
                            break;
                        case "SBRTH":
                            sb.append("Still birth");
                            break;
                        case "TWINS":
                            sb.append("Twins");
                            break;
                        case "CONGDEF":
                            sb.append("Congenital Defects");
                            break;
                        case "CONVLS":
                            sb.append(MorbiditiesConstant.MorbiditySymptoms.CONVULSION);
                            break;
                        default:
                            sb.append(str2);
                            break;
                    }
                    sb.append(LabelConstants.NEW_LINE);
                } else if (str2.contains(RchConstants.OTHER) && obj10 != null) {
                    sb.append(obj10);
                    sb.append(LabelConstants.NEW_LINE);
                }
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return UtilBean.getMyLabel(RchConstants.NO_RISK_FOUND);
    }

    @Override // com.argusoft.sewa.android.app.core.RchHighRiskService
    public String identifyHighRiskForAdolescent(Map<String, Object> map) {
        Object obj = map.get("haemoglobinAnswer");
        Object obj2 = map.get("bmiAnswer");
        Object obj3 = map.get("isHavingIssueWithMenstruation");
        Object obj4 = map.get("issueWithMenstruationAnswer");
        StringBuilder sb = new StringBuilder();
        if (obj != null) {
            if (obj.toString().length() > 0 && Float.parseFloat(obj.toString()) <= 7.0f) {
                sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_HAEMOGLOBIN));
                sb.append(LabelConstants.NEW_LINE);
                sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_SEVERE_ANEMIA));
                sb.append(LabelConstants.NEW_LINE);
            } else if (obj.toString().length() > 0 && Float.parseFloat(obj.toString()) >= 7.0f && Float.parseFloat(obj.toString()) <= 9.0f) {
                sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_MODERATE_HAEMOGLOBIN));
                sb.append(LabelConstants.NEW_LINE);
            }
        }
        if (obj2 != null) {
            String str = obj2.toString().split("/")[2];
            if (str.length() > 0 && Float.parseFloat(str) <= 18.5d) {
                sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_UNDERWEIGHT));
                sb.append(LabelConstants.NEW_LINE);
            } else if (str.length() > 0 && Float.parseFloat(str) > 25.0f && Float.parseFloat(str) <= 29.9d) {
                sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_OVERWEIGHT));
                sb.append(LabelConstants.NEW_LINE);
            } else if (str.length() > 0 && Float.parseFloat(str) >= 30.0f) {
                sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_OBESE));
                sb.append(LabelConstants.NEW_LINE);
            }
        }
        if (obj3 != null && obj3.toString().length() > 0 && obj3.toString().contains("T") && obj4 != null && obj4.toString().length() > 0 && !obj4.toString().contains("NONE")) {
            sb.append(getFormattedIssues(capitalizeWord(obj4.toString().toLowerCase())));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return UtilBean.getMyLabel(RchConstants.NO_RISK_FOUND);
    }

    public String getFormattedIssues(String str) {
        String[] strArrSplit = str.split(GlobalTypes.COMMA);
        StringBuilder sb = new StringBuilder();
        int length = strArrSplit.length;
        String str2 = "";
        int i = 0;
        while (i < length) {
            String str3 = strArrSplit[i];
            sb.append(str2);
            sb.append(str3);
            i++;
            str2 = LabelConstants.NEW_LINE;
        }
        return sb.toString();
    }

    public String capitalizeWord(String str) {
        String[] strArrSplit = str.split("\\s");
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            String strSubstring = str2.substring(0, 1);
            String strSubstring2 = str2.substring(1);
            sb.append(strSubstring.toUpperCase());
            sb.append(strSubstring2);
            sb.append(" ");
        }
        return sb.toString().trim();
    }

    @Override // com.argusoft.sewa.android.app.core.RchHighRiskService
    public String identifyHighRiskForChildRchPnc(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        if (obj != null) {
            for (String str : obj.toString().split(GlobalTypes.COMMA)) {
                if (!str.contains(RchConstants.OTHER) && !str.contains("NONE")) {
                    try {
                        sb.append(UtilBean.getMyLabel(this.listValueBeanDao.queryBuilder().where().eq("idOfValue", str).queryForFirst().getValue()));
                        sb.append(LabelConstants.NEW_LINE);
                    } catch (SQLException e) {
                        Log.e(getClass().getSimpleName(), null, e);
                    }
                } else if (str.contains(RchConstants.OTHER) && obj2 != null) {
                    sb.append(obj2.toString());
                    sb.append(LabelConstants.NEW_LINE);
                }
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return UtilBean.getMyLabel(RchConstants.NO_RISK_FOUND);
    }

    @Override // com.argusoft.sewa.android.app.core.RchHighRiskService
    public String identifyHighRiskForMotherRchPnc(Object obj, Object obj2, Object obj3) {
        StringBuilder sb = new StringBuilder();
        if (obj != null) {
            for (String str : obj.toString().split(GlobalTypes.COMMA)) {
                if (!str.contains(RchConstants.OTHER) && !str.contains("NONE")) {
                    try {
                        sb.append(UtilBean.getMyLabel(this.listValueBeanDao.queryBuilder().where().eq("idOfValue", str).queryForFirst().getValue()));
                        sb.append(LabelConstants.NEW_LINE);
                    } catch (SQLException e) {
                        Log.e(getClass().getSimpleName(), null, e);
                    }
                } else if (str.contains(RchConstants.OTHER) && obj2 != null) {
                    sb.append(obj2.toString());
                    sb.append(LabelConstants.NEW_LINE);
                }
            }
        }
        if (obj3 != null && obj3.toString().length() > 0 && Float.parseFloat(obj3.toString()) < 7.0f) {
            sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_LOW_HAEMOGLOBIN));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return UtilBean.getMyLabel(RchConstants.NO_RISK_FOUND);
    }

    @Override // com.argusoft.sewa.android.app.core.RchHighRiskService
    public String identifyHighRiskForChildRchWpd(Object obj) {
        StringBuilder sb = new StringBuilder();
        if (obj != null && Float.parseFloat(obj.toString()) < 2.5f && Float.parseFloat(obj.toString()) > 0.0f) {
            sb.append(UtilBean.getMyLabel(RchConstants.HIGH_RISK_VERY_LOW_WEIGHT));
            sb.append(LabelConstants.NEW_LINE);
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return UtilBean.getMyLabel(RchConstants.NO_RISK_FOUND);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.argusoft.sewa.android.app.core.RchHighRiskService
    public Boolean identifyHighRiskOnInput(String str, Object obj) throws NumberFormatException {
        int i;
        if (str == null) {
            return false;
        }
        boolean z = obj != null && obj.toString().equalsIgnoreCase(RchConstants.TEST_POSITIVE);
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2038916646:
                if (str.equals(RchConstants.URINE_SUGAR)) {
                    c = 0;
                    break;
                }
                break;
            case -1947338966:
                if (str.equals(RchConstants.NO_OF_PADS)) {
                    c = 1;
                    break;
                }
                break;
            case -1900895411:
                if (str.equals(RchConstants.DISEASE_LIST_VALUES)) {
                    c = 2;
                    break;
                }
                break;
            case -1633105557:
                if (str.equals(RchConstants.SYPHILIS_TEST)) {
                    c = 3;
                    break;
                }
                break;
            case -1627802737:
                if (str.equals(RchConstants.THALASSEMIA_TEST)) {
                    c = 4;
                    break;
                }
                break;
            case -1405823263:
                if (str.equals(RchConstants.BABY_CRY)) {
                    c = 5;
                    break;
                }
                break;
            case -1385580392:
                if (str.equals(RchConstants.FETAL_HEART_RATE)) {
                    c = 6;
                    break;
                }
                break;
            case -1253584272:
                if (str.equals(RchConstants.ABNORMAL_TALKS)) {
                    c = 7;
                    break;
                }
                break;
            case -1243493912:
                if (str.equals(RchConstants.MOTHER_FEVER)) {
                    c = '\b';
                    break;
                }
                break;
            case -630881287:
                if (str.equals(RchConstants.BABY_BOIL)) {
                    c = '\t';
                    break;
                }
                break;
            case -630782421:
                if (str.equals(RchConstants.BABY_EYES)) {
                    c = '\n';
                    break;
                }
                break;
            case -169867986:
                if (str.equals(RchConstants.WEIGHT_PW)) {
                    c = 11;
                    break;
                }
                break;
            case -94553599:
                if (str.equals(RchConstants.BABY_WEIGHT)) {
                    c = '\f';
                    break;
                }
                break;
            case 2126:
                if (str.equals("BP")) {
                    c = '\r';
                    break;
                }
                break;
            case 2298:
                if (str.equals("HB")) {
                    c = 14;
                    break;
                }
                break;
            case 2670:
                if (str.equals("TB")) {
                    c = 15;
                    break;
                }
                break;
            case 71541:
                if (str.equals(RchConstants.HIV_TEST)) {
                    c = 16;
                    break;
                }
                break;
            case 2629992:
                if (str.equals(RchConstants.VDRL_TEST)) {
                    c = 17;
                    break;
                }
                break;
            case 49306488:
                if (str.equals(RchConstants.URINE_ALBUMIN)) {
                    c = 18;
                    break;
                }
                break;
            case 66786916:
                if (str.equals("FEVER")) {
                    c = 19;
                    break;
                }
                break;
            case 68541567:
                if (str.equals(RchConstants.HBSAG_TEST)) {
                    c = 20;
                    break;
                }
                break;
            case 242115865:
                if (str.equals(RchConstants.CHILD_DISEASE)) {
                    c = 21;
                    break;
                }
                break;
            case 271615036:
                if (str.equals(RchConstants.WEIGHT_C)) {
                    c = 22;
                    break;
                }
                break;
            case 681149058:
                if (str.equals(RchConstants.CHILD_UMBILICUS)) {
                    c = 23;
                    break;
                }
                break;
            case 852021031:
                if (str.equals(RchConstants.DISEASE_CONSTANT)) {
                    c = 24;
                    break;
                }
                break;
            case 1066821891:
                if (str.equals(RchConstants.CHILD_BREATH)) {
                    c = 25;
                    break;
                }
                break;
            case 1172145183:
                if (str.equals(RchConstants.HEIGHT_PW)) {
                    c = 26;
                    break;
                }
                break;
            case 1314519135:
                if (str.equals(RchConstants.PREVIOUS_PREG_OUTCOME)) {
                    c = 27;
                    break;
                }
                break;
            case 1341728234:
                if (str.equals(RchConstants.ULTRASOUND_ABNORMALITY)) {
                    c = 28;
                    break;
                }
                break;
            case 1533713770:
                if (str.equals("SICKLE_CELL")) {
                    c = 29;
                    break;
                }
                break;
            case 1551406657:
                if (str.equals(RchConstants.MALARIA)) {
                    c = 30;
                    break;
                }
                break;
            case 1660624263:
                if (str.equals(RchConstants.CHILD_ABDOMEN)) {
                    c = 31;
                    break;
                }
                break;
            case 1713552396:
                if (str.equals(RchConstants.FOUL_SMELL)) {
                    c = ' ';
                    break;
                }
                break;
            case 1771128880:
                if (str.equals(RchConstants.CHILD_INFECTION)) {
                    c = '!';
                    break;
                }
                break;
            case 1869371137:
                if (str.equals(RchConstants.CHILD_FEED)) {
                    c = Typography.quote;
                    break;
                }
                break;
            case 1869553973:
                if (str.equals(RchConstants.CHILD_LIMB)) {
                    c = '#';
                    break;
                }
                break;
            case 1869764320:
                if (str.equals(RchConstants.CHILD_SKIN)) {
                    c = Typography.dollar;
                    break;
                }
                break;
            case 1869788471:
                if (str.equals(RchConstants.CHILD_TEMP)) {
                    c = '%';
                    break;
                }
                break;
            case 1908259597:
                if (str.equals(RchConstants.OTHER_DISEASE)) {
                    c = Typography.amp;
                    break;
                }
                break;
            case 1937904278:
                if (str.equals(RchConstants.ORAL_GTT)) {
                    c = '\'';
                    break;
                }
                break;
            case 1967373389:
                if (str.equals(RchConstants.BREAST)) {
                    c = '(';
                    break;
                }
                break;
            case 2036575083:
                if (str.equals(RchConstants.BREASTFEED)) {
                    c = ')';
                    break;
                }
                break;
            case 2053482728:
                if (str.equals(RchConstants.BLOOD_SUGAR_VALUE)) {
                    c = '*';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 18:
                if (obj != null && !obj.toString().equals("0")) {
                    return true;
                }
                return false;
            case 1:
                if (obj != null && (Integer.parseInt(obj.toString()) > 5 || Integer.parseInt(obj.toString()) == 0)) {
                    return true;
                }
                return false;
            case 2:
            case 24:
                return Boolean.valueOf(obj == null || !(obj.equals(RchConstants.OTHER) || obj.equals("NONE") || obj.equals("NK")));
            case 3:
            case 16:
            case 17:
                if (z) {
                    return true;
                }
                return false;
            case 4:
                if (obj != null && obj.toString().equalsIgnoreCase(RchConstants.THALASSEMIA_MAJOR)) {
                    return true;
                }
                if (obj != null && obj.toString().equalsIgnoreCase(RchConstants.THALASSEMIA_MINOR)) {
                    return true;
                }
                return false;
            case 5:
            case 7:
            case '\b':
            case '\t':
            case 21:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
            case ' ':
            case '!':
            case '\"':
            case '#':
            case ')':
                if (obj != null && obj.toString().equalsIgnoreCase("T")) {
                    return true;
                }
                return false;
            case 6:
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit = obj.toString().split("/");
                    if (strArrSplit.length == 2 && ((i = Integer.parseInt(strArrSplit[1])) > 160 || i < 110)) {
                        return true;
                    }
                }
                return false;
            case '\n':
                if (obj != null && !obj.toString().equalsIgnoreCase(MorbiditiesConstant.NORMAL)) {
                    return true;
                }
                return false;
            case 11:
                if (obj != null && !obj.toString().isEmpty() && Float.parseFloat(obj.toString()) < 45.0f) {
                    return true;
                }
                return false;
            case '\f':
                if (obj != null) {
                    float f = Float.parseFloat(obj.toString());
                    Float fValueOf = Float.valueOf(f);
                    fValueOf.getClass();
                    if (f < 2.5f) {
                        fValueOf.getClass();
                        if (f < 1.8f) {
                            return true;
                        }
                        return true;
                    }
                }
                return false;
            case '\r':
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit2 = obj.toString().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit2.length == 3) {
                        int i2 = Integer.parseInt(strArrSplit2[1]);
                        int i3 = Integer.parseInt(strArrSplit2[2]);
                        if (i2 > 139 || i3 > 89) {
                            return true;
                        }
                    }
                }
                return false;
            case 14:
                if (obj != null && obj.toString().length() > 0 && Float.parseFloat(obj.toString()) < 7.0f) {
                    return true;
                }
                return false;
            case 15:
            case 30:
                if (obj != null && obj.toString().equals(MorbiditiesConstant.ONE_PLUS)) {
                    return true;
                }
                return false;
            case 19:
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit3 = obj.toString().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    float f2 = Float.parseFloat(strArrSplit3[1] + GlobalTypes.DOT_SEPARATOR + strArrSplit3[2]);
                    Float.valueOf(f2).getClass();
                    if (f2 > 99.5f) {
                        return true;
                    }
                }
                return false;
            case 20:
                if (obj != null && obj.toString().equalsIgnoreCase("REACTIVE")) {
                    return true;
                }
                return false;
            case 22:
                if (obj != null && ((Float.parseFloat(obj.toString()) < 5.0d && Float.parseFloat(obj.toString()) < 2.5f && Float.parseFloat(obj.toString()) > 0.0f) || (Float.parseFloat(obj.toString()) >= 500.0f && Float.parseFloat(obj.toString()) <= 5000.0f && Float.parseFloat(obj.toString()) / 1000.0f < 2.5f && Float.parseFloat(obj.toString()) / 1000.0f > 0.0f))) {
                    return true;
                }
                return false;
            case 23:
                if (obj != null && !obj.toString().equalsIgnoreCase("NONE")) {
                    return true;
                }
                return false;
            case 25:
                if (obj != null && Integer.parseInt(obj.toString()) < 40) {
                    return true;
                }
                if (obj != null && Integer.parseInt(obj.toString()) > 59) {
                    return true;
                }
                return false;
            case 26:
                if (obj != null && !obj.toString().isEmpty() && Integer.parseInt(obj.toString()) < 145) {
                    return true;
                }
                return false;
            case 27:
                if (obj != null && obj.toString().equalsIgnoreCase("SBIRTH")) {
                    return true;
                }
                return false;
            case 28:
                if (obj != null && !obj.toString().equals("NO_ABNORMALITY_DETECTED")) {
                    return true;
                }
                return false;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                if (obj != null && obj.toString().equalsIgnoreCase(RchConstants.SOCIAL_CELL_TRAIT)) {
                    return true;
                }
                if (obj != null && obj.toString().equalsIgnoreCase("SICKLE_CELL")) {
                    return true;
                }
                return false;
            case '$':
                if (obj != null && obj.toString().equalsIgnoreCase("YLLW")) {
                    return true;
                }
                return false;
            case '%':
                if (obj != null && obj.toString().contains("F")) {
                    String[] strArrSplit4 = obj.toString().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    float f3 = Float.parseFloat(strArrSplit4[1] + GlobalTypes.DOT_SEPARATOR + strArrSplit4[2]);
                    Float fValueOf2 = Float.valueOf(f3);
                    fValueOf2.getClass();
                    if (f3 > 99.5f) {
                        return true;
                    }
                    fValueOf2.getClass();
                    if (f3 < 97.52f) {
                        return true;
                    }
                }
                return false;
            case '&':
                if (obj != null && !obj.toString().trim().isEmpty()) {
                    return true;
                }
                return false;
            case '\'':
                if (obj != null && obj.toString().equalsIgnoreCase("REACTIVE")) {
                    return true;
                }
                return false;
            case '(':
                if (obj != null && !obj.toString().equalsIgnoreCase(MorbiditiesConstant.NO_PROBLEM)) {
                    return true;
                }
                return false;
            case '*':
                if (obj != null && Integer.parseInt(obj.toString()) > 125) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }
}
