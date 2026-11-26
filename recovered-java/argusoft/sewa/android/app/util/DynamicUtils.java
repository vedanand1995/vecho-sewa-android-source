package com.argusoft.sewa.android.app.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.PageFormBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DynamicUtils {
    public static final int BUTTON_HIDE_LOGOUT = -152;
    public static final int BUTTON_OK = -105;
    public static final int BUTTON_RETRY_CANCEL = -153;
    public static final int BUTTON_YES_NO = -151;
    public static final int HIDDEN_LAYOUT_ID = 2341;
    public static final int ID_BACK_BUTTON = 15004;
    public static final int ID_OF_CUSTOM_DATE_PICKER = 2152;
    public static final int LOGIN_BUTTON_ALERT = -200;
    public static final String TAG = "DynamicUtils";
    public static final int ID_BODY_SCROLL = R.id.bodyScroll;
    public static final int ID_BODY_LAYOUT = R.id.bodyLayoutContainer;
    public static final int ID_NEXT_BUTTON = R.id.nextButton;
    public static final int ID_FOOTER = R.id.footerLayout;

    public static int getLoopId(int i, int i2) {
        return (i2 <= 0 || i <= 0) ? i : (i * 10000) + i2;
    }

    private DynamicUtils() {
        throw new IllegalStateException("Utility Class");
    }

    public static String getBindingValue(String str, int i, boolean z) {
        if (str == null || str.trim().length() <= 0) {
            return null;
        }
        if (i != 0 && !z) {
            return str.trim() + GlobalTypes.DOT_SEPARATOR + i;
        }
        return str.trim();
    }

    public static int getLoopId(QueFormBean queFormBean) {
        if (queFormBean == null || queFormBean.getId() <= 0) {
            return 0;
        }
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            return (queFormBean.getId() * 10000) + queFormBean.getLoopCounter();
        }
        return queFormBean.getId();
    }

    public static int getOriginalId(int i, int i2) {
        return (i2 <= 0 || i <= 0) ? i : i / 10000;
    }

    public static List<Integer> getNextQuestionIdList(QueFormBean queFormBean) {
        ArrayList arrayList = new ArrayList();
        if (queFormBean.getNext() != null && queFormBean.getNext().trim().length() > 0) {
            arrayList.add(Integer.valueOf(getLoopId(Integer.parseInt(queFormBean.getNext()), queFormBean.getLoopCounter())));
        } else {
            List<OptionTagBean> options = queFormBean.getOptions();
            if (options != null && !options.isEmpty()) {
                for (OptionTagBean optionTagBean : options) {
                    if (optionTagBean.getNext() != null && optionTagBean.getNext().trim().length() > 0) {
                        arrayList.add(Integer.valueOf(getLoopId(Integer.parseInt(optionTagBean.getNext()), queFormBean.getLoopCounter())));
                    }
                }
            }
        }
        return arrayList;
    }

    public static int getNext(QueFormBean queFormBean) {
        if (queFormBean.getNext() == null || queFormBean.getNext().trim().length() <= 0) {
            return -1;
        }
        return getLoopId(Integer.parseInt(queFormBean.getNext()), queFormBean.getLoopCounter());
    }

    public static PageFormBean getPageFromNext(int i) {
        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i));
        if (queFormBean != null) {
            return SharedStructureData.mapIndexPage.get(Integer.valueOf(getLoopId(Integer.parseInt(queFormBean.getPage()), queFormBean.getLoopCounter())));
        }
        return null;
    }

    public static QueFormBean setNextVisibleQuestionInSamePage(QueFormBean queFormBean) {
        if (queFormBean == null) {
            return null;
        }
        PageFormBean pageFromNext = getPageFromNext(getLoopId(queFormBean.getId(), queFormBean.getLoopCounter()));
        int next = getNext(queFormBean);
        while (pageFromNext != null && pageFromNext.getListOfQuestion() != null && pageFromNext.getListOfQuestion().contains(Integer.valueOf(next))) {
            QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(next));
            if (queFormBean2 == null) {
                return null;
            }
            if (!queFormBean2.getIshidden().equalsIgnoreCase("T")) {
                return queFormBean2;
            }
            applyFormulaForHiddenQuestion(queFormBean2, false);
            next = getNext(queFormBean2);
        }
        return null;
    }

    public static void setFirstQuestion(QueFormBean queFormBean) {
        PageFormBean pageFormBean;
        if (queFormBean == null || queFormBean.getPage() == null || queFormBean.getPage().trim().length() <= 0 || (pageFormBean = SharedStructureData.mapIndexPage.get(Integer.valueOf(getLoopId(Integer.parseInt(queFormBean.getPage()), queFormBean.getLoopCounter())))) == null) {
            return;
        }
        pageFormBean.setFirstQuestionId(getLoopId(queFormBean.getId(), queFormBean.getLoopCounter()));
    }

    public static String checkValidation(String str, int i, List<ValidationTagBean> list) {
        String str2;
        String strIsFutureDeliveryTime;
        if (str != null && str.trim().length() > 0 && !str.trim().equalsIgnoreCase(LabelConstants.NULL) && !str.trim().equalsIgnoreCase("T") && !str.trim().equalsIgnoreCase("F") && list != null && !list.isEmpty()) {
            for (ValidationTagBean validationTagBean : list) {
                if (validationTagBean.getMethod() != null && validationTagBean.getMethod().trim().length() > 0) {
                    String[] strArrSplit = UtilBean.split(validationTagBean.getMethod().trim(), GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit.length > 0 && (str2 = strArrSplit[0]) != null) {
                        if (str2.equalsIgnoreCase(FormulaConstants.VALIDATION_ALPHABETIC_NUMERIC_WITH_SPACE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.alphanumericWithSpace(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IS_FUTURE_DATE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isFutureDate(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IS_PAST_DATE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isPastDate(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IS_NOT_TODAY)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isNotToday(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IS_DATE_IN)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isDateIn(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IS_DATE_OUT)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isDateOut(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_COMPARE_DATE_WITH_GIVEN_DATE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.comapreDateWithGivenDate(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_COMPARE_DATE_WITH_GIVEN_DATE_AFTER)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.comapreDateWithGivenDateAfter(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CONTAINS_CHARACTER_PIPELINE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.containsCharacterPipeline(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase("GreaterThen0")) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.greaterThen0(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_GREATER_THAN)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.greaterThan(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_GREATER_THAN_EQUAL)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.greaterThanEq(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_LESS_THAN)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.lessThan(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_LESS_THAN_EQUAL)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.lessThanEq(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_LESS_THAN_EQUAL_RELATED_PROPERTY)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.lessThanEqRelatedProperty(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IN_BETWEEN_RANGE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.between(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_INPUT_LENGTH)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkInputLength(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_EMAIL)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkEmail(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase("mobileNumber")) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.mobileNumber(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_INPUT_LENGTH_RANGE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.inputLengthRange(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_GREATER_THAN_RELATED_PROPERTY)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.greaterThanRelatedProperty(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_LESS_THAN_RELATED_PROPERTY)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.lessThanRelatedProperty(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_MAX_LENGTH)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.maxLength(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_LENGTH)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.length(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_ONLY_ONE_HEAD)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.onlyOneHead(validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_ALL_MEMBERS_ARCHIVE_CHECK)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.allMembersArchiveCheck(strArrSplit, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_HEAD_MEMBER_AGE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkHeadMemberAge(validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_MARITAL_STATUS)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.maritalStatusValidation(str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_HOF_RELATION_MARITAL_STATUS_WITH_EACH_OTHER)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkHofRelationWithMaritalStatus(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_VILLAGE_SELECTION)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.villageSelectionCheck(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_MOTHER_CHILD_COMPONENT)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.motherChildComponentValidation(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHILD_VACCINATION)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.vaccinationValidationChild(str);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_NUMBER_FORMAT)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkNumberFormatException(str);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SINGLE_E_C_MEMBER_FAMILY)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkSingleECMemberFamily();
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_2_DAYS_GAP_DELIVERY_DATE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkDaysGapDeliveryDate(strArrSplit, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_HEALTH_INFRA)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkServiceDateForHealthInfra(strArrSplit, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_HOME_VISIT)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkServiceDateForHomeVisit(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_INTEGER_ONLY_PLUS)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkIntegerPlus(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_FAMILY_PLANNING_DATE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.familyPlanningDateValidation(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_COMPARE_DATE_BEFORE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.comapreDateBefore(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_COMPARE_DATE_AFTER)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.comapreDateAfter(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_COMPARE_DATE_BETWEEN)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.compareDateBetween(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_FOR_GIVEN_SACHETS)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkGivenSachets(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_FOR_CONSUMED_SACHETS)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkConsumedSachets(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_HOF_RELATION_OR_GENDER_WITH_EACH_OTHER)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkHofRelationWithGender(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_DOB_MARITAL_STATUS)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.dobMaritalStatusValidation(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_FUTURE_DELIVERY_TIME) || strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_FUTURE_DEATH_TIME)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isFutureDeliveryTime(strArrSplit, str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IS_MEMBER_HOF)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isMemberHof(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_IS_ONLY_ENGLISH_TEXT)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.isOnlyEnglishText(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.FORMULA_VALIDATE_SUM_FOR_TWO_PROPERTIES)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.validateSumAgainstProperty(strArrSplit, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_IFSC_CODE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkIFSCCode(str);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.CHECK_IMMUNISATION_IN_STOCK_FOR_TD)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkImmunisationStockForTD(str, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_DATE)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.checkDate(strArrSplit, str, i, validationTagBean);
                        } else if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATION_AADHAAR_NUMBER)) {
                            strIsFutureDeliveryTime = ValidationFormulaUtil.aadhaarNumber(str);
                        } else {
                            strIsFutureDeliveryTime = strArrSplit[0].equalsIgnoreCase(FormulaConstants.VALIDATE_REGEX) ? ValidationFormulaUtil.validateRegex(strArrSplit, str, validationTagBean) : null;
                        }
                        if (strIsFutureDeliveryTime != null) {
                            return strIsFutureDeliveryTime;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyFormulaForHiddenQuestion(com.argusoft.sewa.android.app.datastructure.QueFormBean r12, java.lang.Boolean r13) {
        /*
            Method dump skipped, instructions count: 2680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.DynamicUtils.applyFormulaForHiddenQuestion(com.argusoft.sewa.android.app.datastructure.QueFormBean, java.lang.Boolean):void");
    }

    public static void applyFormula(QueFormBean queFormBean, boolean z) {
        String str;
        if (queFormBean == null || queFormBean.getFormulas() == null || queFormBean.getFormulas().isEmpty()) {
            return;
        }
        for (FormulaTagBean formulaTagBean : queFormBean.getFormulas()) {
            if (formulaTagBean.getFormulavalue() != null && formulaTagBean.getFormulavalue().trim().length() > 0) {
                String[] strArrSplit = UtilBean.split(formulaTagBean.getFormulavalue().trim(), GlobalTypes.KEY_VALUE_SEPARATOR);
                if (strArrSplit.length > 0 && (str = strArrSplit[0]) != null) {
                    String lowerCase = str.toLowerCase();
                    lowerCase.hashCode();
                    switch (lowerCase) {
                        case "setdefaultproperty":
                            FormulaUtil.setDefaultProperty(strArrSplit, queFormBean);
                            break;
                        case "calculateoutcomedate":
                            FormulaUtil.calculateOutComeDate(queFormBean, z);
                            break;
                        case "setdateset":
                            FormulaUtil.setDateSet(strArrSplit, queFormBean);
                            break;
                        case "displayage":
                            FormulaUtil.displayAge(strArrSplit, queFormBean);
                            break;
                        case "identifyhighrisk":
                            FormulaUtil.identifyHighRisk(strArrSplit, queFormBean, false);
                            break;
                        case "gettime":
                            FormulaUtil.getTime(strArrSplit);
                            break;
                        case "resetloopparams":
                            FormulaUtil.resetLoopParams();
                            break;
                        case "updateloopcount":
                            FormulaUtil.updateLoopCount(strArrSplit, queFormBean);
                            break;
                        case "setaanganwadiidfromphcid":
                            FormulaUtil.setAanganwadiIdFromPhcId(queFormBean);
                            break;
                        case "clearscannedaadhardetails":
                            FormulaUtil.clearScannedAadharDetails(strArrSplit, queFormBean);
                            break;
                        case "setvalueasproperty":
                            FormulaUtil.setValueAsProperty(queFormBean);
                            break;
                        case "setpropertyfromscannedaadhar":
                            FormulaUtil.setPropertyFromScannedAadhar(strArrSplit, queFormBean);
                            break;
                        case "filllocation":
                            FormulaUtil.fillLocation(strArrSplit, queFormBean);
                            break;
                        case "addperiod":
                            FormulaUtil.addPeriod(strArrSplit, queFormBean, z);
                            break;
                        case "setproperty":
                            FormulaUtil.setProperty(strArrSplit, queFormBean);
                            break;
                        case "setprefilledasperrelationwithhof":
                            FormulaUtil.setPreFilledAsPerRelationWithHOF(strArrSplit, queFormBean);
                            break;
                        case "setanswer":
                            FormulaUtil.setAnswer(queFormBean);
                            break;
                        case "setimmunisationwpd":
                            FormulaUtil.setImmunisationWpd(queFormBean);
                            break;
                        case "setcolor":
                            FormulaUtil.setColor(strArrSplit, queFormBean);
                            break;
                        case "setsubtitlecolor":
                            FormulaUtil.setSubtitleColor(strArrSplit, queFormBean);
                            break;
                        case "displayearlyregistration":
                            FormulaUtil.displayEarlyRegistration(strArrSplit, queFormBean, z);
                            break;
                        case "sethint":
                            FormulaUtil.setHint(strArrSplit, queFormBean);
                            break;
                        case "showsmartreferral":
                            FormulaUtil.setShowSmartReferral(strArrSplit);
                            break;
                        default:
                            Log.i(TAG, "Formula Not Handled : " + formulaTagBean.getFormulavalue());
                            break;
                    }
                }
            } else {
                Log.i(TAG, "Formula value is null for question : " + queFormBean.getId());
            }
        }
    }

    public static String checkForMorbidity(String str, String str2, String str3, String str4, String str5, String str6) throws NumberFormatException {
        if (str3 != null && str3.trim().length() > 0 && !str3.trim().equalsIgnoreCase(LabelConstants.NULL)) {
            String[] strArrSplit = UtilBean.split(str3, GlobalTypes.COMMA);
            if (strArrSplit.length > 0) {
                for (String str7 : strArrSplit) {
                    if (str7 != null && str7.toLowerCase().contains(GlobalTypes.DATA_MAP_MORBIDITY_CONDITION.toLowerCase())) {
                        String[] strArrSplit2 = UtilBean.split(str7, "/");
                        boolean z = (str2 == null || str2.trim().length() <= 0 || str2.trim().equalsIgnoreCase(LabelConstants.NULL)) ? false : true;
                        if (strArrSplit2.length == 3) {
                            if (z) {
                                String[] strArrSplit3 = UtilBean.split(strArrSplit2[1], GlobalTypes.KEY_VALUE_SEPARATOR);
                                if (strArrSplit3.length == 3 && str2.trim().equalsIgnoreCase(strArrSplit3[0])) {
                                    if (str6 != null) {
                                        SharedStructureData.addItemInLICList(str, str6, str4);
                                    } else {
                                        SharedStructureData.addItemInLICList(str, "Yes", str4);
                                    }
                                    return strArrSplit3[1];
                                }
                                String[] strArrSplit4 = UtilBean.split(strArrSplit2[2], GlobalTypes.KEY_VALUE_SEPARATOR);
                                if (strArrSplit4.length == 3 && str2.trim().equalsIgnoreCase(strArrSplit4[0])) {
                                    SharedStructureData.removeItemFromLICList(str, str4);
                                    return strArrSplit4[1];
                                }
                            } else {
                                String[] strArrSplit5 = UtilBean.split(strArrSplit2[2], GlobalTypes.KEY_VALUE_SEPARATOR);
                                if (strArrSplit5.length == 3) {
                                    SharedStructureData.removeItemFromLICList(str, str4);
                                    return strArrSplit5[1];
                                }
                            }
                        } else if (strArrSplit2.length == 4) {
                            if (z) {
                                String strCheckCondition = checkCondition(str2, UtilBean.split(strArrSplit2[1], GlobalTypes.BENEFICIARY_SEPARATOR), str5);
                                String[] strArrSplit6 = UtilBean.split(strArrSplit2[2], GlobalTypes.KEY_VALUE_SEPARATOR);
                                int i = 3;
                                if (strArrSplit6.length == 3) {
                                    if (strCheckCondition.trim().equalsIgnoreCase(strArrSplit6[0])) {
                                        if (str6 != null) {
                                            SharedStructureData.addItemInLICList(str, str6, str4);
                                        } else {
                                            SharedStructureData.addItemInLICList(str, str2, str4);
                                        }
                                        return strArrSplit6[1];
                                    }
                                    i = 3;
                                }
                                String[] strArrSplit7 = UtilBean.split(strArrSplit2[i], GlobalTypes.KEY_VALUE_SEPARATOR);
                                if (strArrSplit7.length == i && strCheckCondition.trim().equalsIgnoreCase(strArrSplit7[0])) {
                                    SharedStructureData.removeItemFromLICList(str, str4);
                                    return strArrSplit7[1];
                                }
                            } else {
                                String[] strArrSplit8 = UtilBean.split(strArrSplit2[3], GlobalTypes.KEY_VALUE_SEPARATOR);
                                if (strArrSplit8.length == 3) {
                                    SharedStructureData.removeItemFromLICList(str, str4);
                                    return strArrSplit8[1];
                                }
                            }
                        }
                    }
                }
                return "F";
            }
            return "F";
        }
        return "F";
    }

    public static String generateAnswerString(int i, String str, Context context) {
        String str2;
        SharedStructureData.finalFilesToUpload.clear();
        PageFormBean nextPage = SharedStructureData.mapIndexPage.get(Integer.valueOf(i));
        StringBuilder sb = new StringBuilder();
        if (nextPage != null) {
            nextPage.setPrePage(null);
            while (true) {
                int firstQuestionId = nextPage.getFirstQuestionId();
                List<Integer> listOfQuestion = nextPage.getListOfQuestion();
                if (listOfQuestion != null && !listOfQuestion.isEmpty()) {
                    while (listOfQuestion.contains(Integer.valueOf(firstQuestionId))) {
                        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(firstQuestionId));
                        if (queFormBean != null) {
                            if (queFormBean.getIshidden().equalsIgnoreCase("F") && queFormBean.getAnswer() != null && queFormBean.getAnswer().toString().trim().length() > 0) {
                                int loopCounter = queFormBean.getLoopCounter();
                                if (queFormBean.getExtraBinding() > 0) {
                                    loopCounter = queFormBean.getExtraBinding();
                                }
                                if (!queFormBean.getType().equalsIgnoreCase(GlobalTypes.WEIGHT_BOX) || !queFormBean.getAnswer().toString().trim().equalsIgnoreCase("T")) {
                                    sb.append(getBindingValue(queFormBean.getBinding(), loopCounter, queFormBean.isIgnoreLoop()));
                                    sb.append(GlobalTypes.ANSWER_STRING_FIRST_SEPARATOR);
                                    sb.append(queFormBean.getAnswer().toString().trim());
                                    sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
                                }
                                if (queFormBean.getType().equalsIgnoreCase(GlobalTypes.PHOTO_PICKER)) {
                                    SharedStructureData.finalFilesToUpload.add(queFormBean);
                                }
                            }
                            firstQuestionId = getNext(queFormBean);
                        } else {
                            firstQuestionId = -1;
                        }
                    }
                }
                if (nextPage.getNextPage() == null) {
                    break;
                }
                nextPage = nextPage.getNextPage();
            }
        }
        if (SharedStructureData.gpsEnabledForms.contains(str)) {
            String str3 = SharedStructureData.relatedPropertyHashTable.get("currentLatitude");
            String str4 = SharedStructureData.relatedPropertyHashTable.get("currentLongitude");
            sb.append("-1!");
            sb.append(str4);
            sb.append("~-2!");
            sb.append(str3);
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if ("FHS".equals(str) || "CFHC".equals(str) || FormConstants.IDSP_NEW_FAMILY.equals(str)) {
            sb.append("-3!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get("locationId"));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if ("TRAVELLERS_SCREENING".equals(str)) {
            sb.append("-4!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get("actualId"));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if (str != null && FormConstants.RCH_SHEETS.contains(str)) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            sb.append("-4!");
            sb.append(defaultSharedPreferences.getString(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID, null));
            sb.append("~-5!");
            sb.append(defaultSharedPreferences.getString("familyId", null));
            sb.append("~-6!");
            sb.append(defaultSharedPreferences.getString("locationId", null));
            sb.append("~-7!");
            sb.append(defaultSharedPreferences.getString("curPregRegDetId", null));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if (str != null && FormConstants.VBDS_SHEETS.contains(str)) {
            sb.append("-6!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get("locationId"));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if (FormConstants.VBDS_CHLORINATION_STATUS.equals(str)) {
            sb.append("-95!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.WATER_QUALITY_ID));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if (str != null && FormConstants.NCD_SHEETS.contains(str)) {
            sb.append("-4!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID));
            sb.append("~-5!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if (str != null && FormConstants.NPCB_SHEETS.contains(str)) {
            sb.append("-4!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_ACTUAL_ID));
            sb.append("~-5!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FAMILY_ACTUAL_ID));
            sb.append("~-6!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get("areaId"));
            sb.append("~-88!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get("notificationId"));
            sb.append("~-86!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SPECTS_DATA));
            sb.append("~-98!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NPCB_RBSK_ONSITE_REGISTRATION));
            sb.append("~-97!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NPCB_RBSK_STUDENT_DETAILS_ID));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if ((FormConstants.IDSP_MEMBER.equals(str) || FormConstants.IDSP_MEMBER_2.equals(str)) && (str2 = SharedStructureData.relatedPropertyHashTable.get("familyQuestions")) != null) {
            sb.append(str2);
        }
        if (FormConstants.TECHO_GAURAVI_DIWAS.equals(str)) {
            sb.append("-6!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get("locationId"));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if (FormConstants.IFA_TO_SCHOOL.equals(str)) {
            sb.append("-49!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SCHOOL_ACTUAL_ID));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        if (MorbiditiesConstant.ONE_PLUS.equalsIgnoreCase(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FROM_MAMTA_CAMPAIGN))) {
            String str5 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SESSION_ID);
            if (str5 != null) {
                sb.append("-50!");
                sb.append(str5);
                sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
            }
            String str6 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SERVICE_PLACE);
            if (str6 != null && str != null && FormConstants.RCH_SHEETS.contains(str)) {
                sb.append("-60!");
                sb.append(str6);
                sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
            }
            String str7 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SERVICE_DATE);
            if (str7 != null) {
                sb.append("-70!");
                sb.append(Long.parseLong(str7));
                sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
            }
        }
        if ("AMRUTPAN".equals(str)) {
            sb.append("-81!");
            sb.append(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.VISIT_NUMBER));
            sb.append(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
        }
        setBeneficiaryName(str);
        return sb.toString();
    }

    public static LinearLayout generateDynamicScreenTemplate(Context context, View.OnClickListener onClickListener) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.activity_main, (ViewGroup) null);
        ((MaterialButton) linearLayout.findViewById(ID_NEXT_BUTTON)).setOnClickListener(onClickListener);
        return linearLayout;
    }

    public static LinearLayout generateDynamicVaccinations(Context context) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, 300));
        NestedScrollView scrollView = MyStaticComponents.getScrollView(context, ID_BODY_SCROLL, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        linearLayout.addView(scrollView);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, ID_BODY_LAYOUT, 1, new LinearLayout.LayoutParams(-1, -1));
        linearLayout2.setPadding(5, 5, 5, 5);
        linearLayout2.setFocusable(true);
        linearLayout2.setFocusableInTouchMode(true);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.util.DynamicUtils.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                view.clearFocus();
                view.requestFocus();
            }
        });
        scrollView.addView(linearLayout2);
        return linearLayout;
    }

    public static String getFullFormName(String str) {
        return UtilBean.getFullFormOfEntity().get(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x062f  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x064d  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0686  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x06d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String storeForm(java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 1819
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.DynamicUtils.storeForm(java.lang.String, java.lang.String):java.lang.String");
    }

    private static void setBeneficiaryName(String str) {
        String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY);
        String str3 = (str == null || !(str2 == null || str2.length() == 0)) ? null : SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_NAME);
        if (str3 == null || str3.length() == 0) {
            return;
        }
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, str3);
    }

    private static String checkCondition(String str, String[] strArr, String str2) throws NumberFormatException {
        if (strArr != null && strArr.length > 0) {
            for (String str3 : strArr) {
                String[] strArrSplit = UtilBean.split(str3, GlobalTypes.KEY_VALUE_SEPARATOR);
                if (strArrSplit.length > 2 && (str2 == null || str2.equalsIgnoreCase(strArrSplit[2]))) {
                    if (UtilBean.isValidNumber(strArrSplit[0], Float.parseFloat(str), Float.parseFloat(strArrSplit[1]))) {
                        return "T";
                    }
                }
            }
            return "F";
        }
        return "F";
    }
}
