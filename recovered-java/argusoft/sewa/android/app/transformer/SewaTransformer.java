package com.argusoft.sewa.android.app.transformer;

import android.util.Log;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.ComponentTagBean;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MigratedFamilyDataBean;
import com.argusoft.sewa.android.app.databean.MigratedMembersDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.databean.SurveyLocationMobDataBean;
import com.argusoft.sewa.android.app.databean.UserInfoDataBean;
import com.argusoft.sewa.android.app.databean.UwinBeneficiaryDto;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.PageFormBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class SewaTransformer {
    public static LoginBean loginBean;
    private static SewaTransformer transformer;

    private SewaTransformer() {
    }

    public static SewaTransformer getInstance() {
        if (transformer == null) {
            transformer = new SewaTransformer();
        }
        return transformer;
    }

    public LoginBean convertUserInfoDataBeanToLoginBeanModel(UserInfoDataBean userInfoDataBean, LoginBean loginBean2, String str) {
        if (loginBean2 == null) {
            loginBean2 = new LoginBean();
            loginBean2.setLastUpdateOfAnnouncements(0L);
            loginBean2.setLastUpdateOfInventory(0L);
            loginBean2.setLastUpdateOfLabels(0L);
            loginBean2.setLastUpdateOfListValues(0L);
            loginBean2.setFirstLogin(true);
            loginBean2.setUpdateCounter(1);
        }
        loginBean2.setLoggedIn(true);
        loginBean2.setHidden(false);
        if (userInfoDataBean.getUserRole().equalsIgnoreCase("Asha")) {
            loginBean2.setUserRoleCode("A");
        } else if (userInfoDataBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHW)) {
            loginBean2.setUserRoleCode("F");
        }
        loginBean2.setFirstName(userInfoDataBean.getfName());
        loginBean2.setLanguageCode(userInfoDataBean.getLanguageCode());
        loginBean2.setPassword(str);
        loginBean2.setPhoneNoOfPM(userInfoDataBean.getPhNoOfPM());
        loginBean2.setServerDate(userInfoDataBean.getServerDate());
        loginBean2.setUserID(userInfoDataBean.getId());
        loginBean2.setUserRole(userInfoDataBean.getUserRole());
        loginBean2.setUserToken(userInfoDataBean.getUserToken());
        loginBean2.setUsername(userInfoDataBean.getUsername());
        loginBean2.setNagarpalikaUser(userInfoDataBean.isNagarPalikaUser());
        if (userInfoDataBean.getCurrentVillageCode() != null) {
            loginBean2.setVillageCode(UtilBean.arrayJoinToString(userInfoDataBean.getCurrentVillageCode(), ":"));
        }
        if (userInfoDataBean.getCurrentAssignedVillagesName() != null) {
            loginBean2.setVillageName(UtilBean.arrayJoinToString(userInfoDataBean.getCurrentAssignedVillagesName(), ":"));
        }
        if (userInfoDataBean.getOtpVerificationDate() != null) {
            loginBean2.setOtpVerificationDate(new Date(userInfoDataBean.getOtpVerificationDate().longValue()));
        }
        if (userInfoDataBean.getOtpVerificationRequired() != null) {
            loginBean2.setOtpVerificationRequired(userInfoDataBean.getOtpVerificationRequired());
        }
        if (userInfoDataBean.getReverificationPeriod() != null) {
            loginBean2.setReverificationPeriod(userInfoDataBean.getReverificationPeriod());
        }
        return loginBean2;
    }

    public List<LocationBean> convertLocationDataBeanToLocationModel(List<SurveyLocationMobDataBean> list, List<LocationBean> list2) {
        if (list2 == null) {
            list2 = new ArrayList<>();
        }
        if (list != null && !list.isEmpty()) {
            for (SurveyLocationMobDataBean surveyLocationMobDataBean : list) {
                LocationBean locationBean = new LocationBean();
                locationBean.setActualID(surveyLocationMobDataBean.getId());
                locationBean.setName(surveyLocationMobDataBean.getName());
                locationBean.setParent(surveyLocationMobDataBean.getParent());
                locationBean.setLevel(surveyLocationMobDataBean.getLevel());
                locationBean.setIsActive(surveyLocationMobDataBean.getIsActive());
                locationBean.setLgdCode(surveyLocationMobDataBean.getLgdCode());
                locationBean.setType(surveyLocationMobDataBean.getType());
                list2.add(locationBean);
            }
        }
        return list2;
    }

    public List<NotificationBean> convertNotificationDataBeanToNotificationBeanModel(List<NotificationBean> list, List<NotificationMobDataBean> list2) {
        if (list2 != null && !list2.isEmpty()) {
            if (list == null) {
                list = new ArrayList<>();
            }
            Calendar calendar = Calendar.getInstance();
            for (NotificationMobDataBean notificationMobDataBean : list2) {
                NotificationBean notificationBean = new NotificationBean();
                notificationBean.setBeneficiaryId(notificationMobDataBean.getBeneficiaryId());
                notificationBean.setBeneficiaryName(notificationMobDataBean.getBeneficiaryName());
                if (notificationBean.getBeneficiaryName() != null) {
                    String[] strArrSplit = notificationBean.getBeneficiaryName().split("\\(");
                    if (strArrSplit.length > 1) {
                        String[] strArrSplit2 = strArrSplit[1].split("\\)");
                        if (strArrSplit2.length > 0) {
                            notificationBean.setBeneficiaryName(strArrSplit[0] + "(" + UtilBean.getMyLabel(strArrSplit2[0]) + ")");
                        }
                    }
                }
                if (notificationMobDataBean.getExpectedDueDate() != null) {
                    calendar.setTimeInMillis(notificationMobDataBean.getExpectedDueDate().longValue());
                    UtilBean.clearTimeFromDate(calendar);
                    notificationBean.setDateOfNotification(calendar.getTime());
                }
                if (notificationMobDataBean.getExpiryDate() != null) {
                    notificationBean.setExpiryDate(new Date(notificationMobDataBean.getExpiryDate().longValue()));
                }
                notificationBean.setExpectedDueDateString(notificationMobDataBean.getExpectedDueDateString());
                notificationBean.setId(null);
                notificationBean.setNoOfNotificationType(notificationMobDataBean.getNoOfNotificationType());
                notificationBean.setNotificationCode(notificationMobDataBean.getTask());
                notificationBean.setNotificationId(notificationMobDataBean.getId());
                if (notificationMobDataBean.getIsChild() != null) {
                    if (notificationMobDataBean.getIsChild().equals(Boolean.TRUE)) {
                        notificationBean.setNotificationOf("C");
                    } else {
                        notificationBean.setNotificationOf("M");
                    }
                }
                notificationBean.setOverdueFlag(notificationMobDataBean.getOverdueFlag());
                notificationBean.setCustomField(notificationMobDataBean.getCustomField());
                if (notificationMobDataBean.getOverDueDate() == null) {
                    notificationMobDataBean.setOverDueDate(notificationMobDataBean.getExpectedDueDate());
                }
                notificationBean.setOverDueDate(notificationMobDataBean.getOverDueDate());
                if (notificationMobDataBean.getDiagnosisDate() != null) {
                    notificationBean.setDiagnosisDate(notificationMobDataBean.getDiagnosisDate());
                }
                if (notificationMobDataBean.getAshaId() != null) {
                    notificationBean.setAshaId(notificationMobDataBean.getAshaId());
                }
                if (notificationMobDataBean.getAshaName() != null) {
                    notificationBean.setAshaName(notificationMobDataBean.getAshaName());
                }
                if (notificationMobDataBean.getPositiveFindings() != null) {
                    notificationBean.setPositiveFindings(notificationMobDataBean.getPositiveFindings());
                }
                notificationBean.setLocationId(notificationMobDataBean.getLocationId());
                notificationBean.setMemberId(notificationMobDataBean.getMemberId());
                notificationBean.setFamilyId(notificationMobDataBean.getFamilyId());
                notificationBean.setOtherDetails(notificationMobDataBean.getOtherDetails());
                notificationBean.setMigrationId(notificationMobDataBean.getMigrationId());
                notificationBean.setModifiedOn(new Date(notificationMobDataBean.getModifiedOn().longValue()));
                notificationBean.setState(notificationMobDataBean.getState());
                notificationBean.setHeader(notificationMobDataBean.getHeader());
                if (notificationMobDataBean.getScheduledDate() != null) {
                    notificationBean.setScheduledDate(new Date(notificationMobDataBean.getScheduledDate().longValue()));
                }
                list.add(notificationBean);
            }
        }
        return list;
    }

    public List<NotificationMobDataBean> convertNotificationModelToNotificationDataBean(List<NotificationBean> list, List<NotificationMobDataBean> list2) {
        if (list != null && !list.isEmpty()) {
            if (list2 == null) {
                list2 = new ArrayList<>();
            }
            for (NotificationBean notificationBean : list) {
                if (notificationBean != null) {
                    NotificationMobDataBean notificationMobDataBean = new NotificationMobDataBean();
                    notificationMobDataBean.setAshaId(notificationBean.getAshaId());
                    notificationMobDataBean.setAshaName(notificationBean.getAshaName());
                    notificationMobDataBean.setBeneficiaryId(notificationBean.getBeneficiaryId());
                    notificationMobDataBean.setBeneficiaryName(notificationBean.getBeneficiaryName());
                    if (notificationBean.getDateOfNotification() != null) {
                        notificationMobDataBean.setExpectedDueDate(Long.valueOf(notificationBean.getDateOfNotification().getTime()));
                    }
                    notificationMobDataBean.setExpectedDueDateString(notificationBean.getExpectedDueDateString());
                    if (notificationBean.getExpiryDate() != null) {
                        notificationMobDataBean.setExpiryDate(Long.valueOf(notificationBean.getExpiryDate().getTime()));
                    }
                    notificationMobDataBean.setId(notificationBean.getNotificationId());
                    if (notificationBean.getNotificationOf() != null) {
                        if (notificationBean.getNotificationOf().equalsIgnoreCase("C")) {
                            notificationMobDataBean.setIsChild(Boolean.TRUE);
                        } else {
                            notificationMobDataBean.setIsChild(Boolean.FALSE);
                        }
                    }
                    notificationMobDataBean.setNoOfNotificationType(notificationBean.getNoOfNotificationType());
                    notificationMobDataBean.setOverdueFlag(notificationBean.getOverdueFlag());
                    notificationMobDataBean.setTask(notificationBean.getNotificationCode());
                    notificationMobDataBean.setCustomField(notificationBean.getCustomField());
                    if (notificationBean.getOverDueDate() == null && notificationBean.getDateOfNotification() != null) {
                        notificationBean.setOverDueDate(Long.valueOf(notificationBean.getDateOfNotification().getTime()));
                    }
                    notificationMobDataBean.setOverDueDate(notificationBean.getOverDueDate());
                    if (notificationBean.getDiagnosisDate() != null) {
                        notificationMobDataBean.setDiagnosisDate(notificationBean.getDiagnosisDate());
                    }
                    if (notificationBean.getPositiveFindings() != null) {
                        notificationMobDataBean.setPositiveFindings(notificationBean.getPositiveFindings());
                    }
                    notificationMobDataBean.setLocationId(notificationBean.getLocationId());
                    notificationMobDataBean.setFamilyId(notificationBean.getFamilyId());
                    notificationMobDataBean.setMemberId(notificationBean.getMemberId());
                    notificationMobDataBean.setOtherDetails(notificationBean.getOtherDetails());
                    notificationMobDataBean.setMigrationId(notificationBean.getMigrationId());
                    notificationMobDataBean.setModifiedOn(Long.valueOf(notificationBean.getModifiedOn().getTime()));
                    notificationMobDataBean.setState(notificationBean.getState());
                    notificationMobDataBean.setHeader(notificationBean.getHeader());
                    if (notificationBean.getScheduledDate() != null) {
                        notificationMobDataBean.setScheduledDate(Long.valueOf(notificationBean.getScheduledDate().getTime()));
                    }
                    list2.add(notificationMobDataBean);
                }
            }
        }
        return list2;
    }

    public List<QuestionBean> convertComponentDataBeanToQuestionBeanModel(List<QuestionBean> list, List<ComponentTagBean> list2, String str) {
        if (list2 != null && !list2.isEmpty()) {
            if (list == null) {
                list = new ArrayList<>();
            }
            for (ComponentTagBean componentTagBean : list2) {
                QuestionBean questionBean = new QuestionBean();
                questionBean.setQueId(componentTagBean.getId());
                questionBean.setTitle(componentTagBean.getTitle());
                questionBean.setSubtitle(componentTagBean.getSubtitle());
                questionBean.setInstruction(componentTagBean.getInstruction());
                questionBean.setQuestion(componentTagBean.getQuestion());
                questionBean.setType(componentTagBean.getType());
                if (componentTagBean.getIsmandatory() != null && componentTagBean.getIsmandatory().equalsIgnoreCase("T")) {
                    questionBean.setIsmandatory(Boolean.TRUE);
                } else {
                    questionBean.setIsmandatory(Boolean.FALSE);
                }
                questionBean.setMandatorymessage(componentTagBean.getMandatorymessage());
                questionBean.setLength(componentTagBean.getLength());
                if (componentTagBean.getValidations() != null && !componentTagBean.getValidations().isEmpty()) {
                    StringBuilder sb = new StringBuilder();
                    StringBuilder sb2 = new StringBuilder();
                    boolean zBooleanValue = Boolean.TRUE.booleanValue();
                    for (ValidationTagBean validationTagBean : componentTagBean.getValidations()) {
                        if (zBooleanValue) {
                            sb.append(validationTagBean.getMessage());
                            sb2.append(validationTagBean.getMethod());
                            zBooleanValue = Boolean.FALSE.booleanValue();
                        } else {
                            sb.append(":");
                            sb.append(validationTagBean.getMessage());
                            sb2.append(":");
                            sb2.append(validationTagBean.getMethod());
                        }
                    }
                    questionBean.setValidationmessage(sb.toString());
                    questionBean.setValidationmethod(sb2.toString());
                } else {
                    questionBean.setValidationmessage(null);
                    questionBean.setValidationmethod(null);
                }
                if (componentTagBean.getFormulas() != null && !componentTagBean.getFormulas().isEmpty()) {
                    StringBuilder sb3 = new StringBuilder();
                    boolean zBooleanValue2 = Boolean.TRUE.booleanValue();
                    for (FormulaTagBean formulaTagBean : componentTagBean.getFormulas()) {
                        if (zBooleanValue2) {
                            sb3.append(formulaTagBean.getFormulavalue());
                            zBooleanValue2 = Boolean.FALSE.booleanValue();
                        } else {
                            sb3.append(":");
                            sb3.append(formulaTagBean.getFormulavalue());
                        }
                    }
                    questionBean.setFormulass(sb3.toString());
                } else {
                    questionBean.setFormulass(null);
                }
                questionBean.setDatamap(componentTagBean.getDatamap());
                if (componentTagBean.getNext() != null && !componentTagBean.getNext().equalsIgnoreCase("")) {
                    questionBean.setNext(Integer.parseInt(componentTagBean.getNext()));
                } else {
                    questionBean.setNext(0);
                }
                questionBean.setSubform(componentTagBean.getSubform());
                questionBean.setRelatedpropertyname(componentTagBean.getRelatedpropertyname());
                if (componentTagBean.getIshidden() != null && componentTagBean.getIshidden().equalsIgnoreCase("T")) {
                    questionBean.setIshidden(Boolean.TRUE);
                } else {
                    questionBean.setIshidden(Boolean.FALSE);
                }
                questionBean.setEvent(componentTagBean.getEvent());
                if (componentTagBean.getBinding() != null && componentTagBean.getBinding().trim().length() > 0 && !componentTagBean.getBinding().trim().equalsIgnoreCase(LabelConstants.NULL)) {
                    if (componentTagBean.getBinding().contains(GlobalTypes.DOT_SEPARATOR)) {
                        questionBean.setBinding(componentTagBean.getBinding().substring(0, componentTagBean.getBinding().indexOf(GlobalTypes.DOT_SEPARATOR)));
                    } else {
                        questionBean.setBinding(componentTagBean.getBinding().trim());
                    }
                } else {
                    questionBean.setBinding(String.valueOf(componentTagBean.getId()));
                }
                if (componentTagBean.getPage() != null) {
                    questionBean.setPage(Integer.parseInt(componentTagBean.getPage()));
                } else {
                    questionBean.setPage(0);
                }
                questionBean.setEntity(str);
                questionBean.setHint(componentTagBean.getHint());
                questionBean.setHelpvideofield(componentTagBean.getHelpvideofield());
                list.add(questionBean);
            }
        }
        return list;
    }

    public List<AnswerBean> convertComponentDataBeanToAnswerBeanModel(List<AnswerBean> list, List<ComponentTagBean> list2, String str) {
        if (list2 != null && !list2.isEmpty()) {
            if (list == null) {
                list = new ArrayList<>();
            }
            for (ComponentTagBean componentTagBean : list2) {
                if (componentTagBean.getOptions() != null && !componentTagBean.getOptions().isEmpty()) {
                    for (OptionTagBean optionTagBean : componentTagBean.getOptions()) {
                        AnswerBean answerBean = new AnswerBean();
                        answerBean.setKey(optionTagBean.getKey());
                        if (optionTagBean.getNext() != null && !optionTagBean.getNext().equalsIgnoreCase("")) {
                            answerBean.setNext(Integer.parseInt(optionTagBean.getNext()));
                        } else {
                            answerBean.setNext(0);
                        }
                        answerBean.setQueId(componentTagBean.getId());
                        answerBean.setRelatedpropertyname(optionTagBean.getRelatedpropertyname());
                        answerBean.setSubform(optionTagBean.getSubform());
                        answerBean.setValue(optionTagBean.getValue());
                        answerBean.setEntity(str);
                        list.add(answerBean);
                    }
                }
            }
        }
        return list;
    }

    public void convertQuestionBeansToQueFormBeans(List<QuestionBean> list, List<AnswerBean> list2) throws NumberFormatException {
        if (list == null || list.isEmpty()) {
            return;
        }
        SharedStructureData.mapIndexQuestion = new LinkedHashMap();
        SharedStructureData.mapIndexPage = new LinkedHashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list2 != null && !list2.isEmpty()) {
            for (AnswerBean answerBean : list2) {
                OptionTagBean optionTagBean = new OptionTagBean();
                optionTagBean.setKey(answerBean.getKey());
                String strValueOf = String.valueOf(answerBean.getNext());
                if (!strValueOf.equalsIgnoreCase("0")) {
                    optionTagBean.setNext(strValueOf);
                }
                optionTagBean.setRelatedpropertyname(answerBean.getRelatedpropertyname());
                optionTagBean.setSubform(answerBean.getSubform());
                optionTagBean.setValue(answerBean.getValue());
                ArrayList arrayList = new ArrayList();
                if (linkedHashMap.get(Integer.valueOf(answerBean.getQueId())) == null) {
                    linkedHashMap.put(Integer.valueOf(answerBean.getQueId()), arrayList);
                }
                List list3 = (List) linkedHashMap.get(Integer.valueOf(answerBean.getQueId()));
                if (list3 != null) {
                    list3.add(optionTagBean);
                }
            }
        }
        for (QuestionBean questionBean : list) {
            QueFormBean queFormBean = new QueFormBean();
            if (questionBean.getBinding() != null && questionBean.getBinding().trim().length() > 0 && !questionBean.getBinding().trim().equalsIgnoreCase(LabelConstants.NULL)) {
                if (questionBean.getBinding().contains(GlobalTypes.DOT_SEPARATOR)) {
                    String[] strArrSplit = UtilBean.split(questionBean.getBinding().trim(), GlobalTypes.DOT_SEPARATOR);
                    if (strArrSplit.length > 0) {
                        queFormBean.setBinding(strArrSplit[0]);
                    }
                } else {
                    queFormBean.setBinding(questionBean.getBinding().trim());
                }
            } else {
                queFormBean.setBinding(String.valueOf(questionBean.getQueId()));
            }
            queFormBean.setDatamap(questionBean.getDatamap());
            queFormBean.setEvent(questionBean.getEvent());
            queFormBean.setHint(questionBean.getHint());
            queFormBean.setHelpvideofield(questionBean.getHelpvideofield());
            if (questionBean.getFormulass() != null && questionBean.getFormulass().length() > 0) {
                String[] strArrSplit2 = UtilBean.split(questionBean.getFormulass(), ":");
                ArrayList arrayList2 = new ArrayList();
                for (String str : strArrSplit2) {
                    FormulaTagBean formulaTagBean = new FormulaTagBean();
                    formulaTagBean.setFormulavalue(str);
                    arrayList2.add(formulaTagBean);
                }
                queFormBean.setFormulas(arrayList2);
            }
            queFormBean.setId(questionBean.getQueId());
            queFormBean.setInstruction(questionBean.getInstruction());
            if (questionBean.getIshidden() != null && questionBean.getIshidden().booleanValue()) {
                queFormBean.setIshidden("T");
            } else {
                queFormBean.setIshidden("F");
            }
            if (questionBean.getIsmandatory() != null && questionBean.getIsmandatory().booleanValue()) {
                queFormBean.setIsmandatory("T");
            } else {
                queFormBean.setIsmandatory("F");
            }
            queFormBean.setLength(questionBean.getLength());
            queFormBean.setMandatorymessage(questionBean.getMandatorymessage());
            String strValueOf2 = String.valueOf(questionBean.getNext());
            if (!strValueOf2.equalsIgnoreCase("0")) {
                queFormBean.setNext(strValueOf2);
                queFormBean.setIsNextNull(false);
            } else {
                queFormBean.setIsNextNull(true);
            }
            queFormBean.setOptions((List) linkedHashMap.get(Integer.valueOf(questionBean.getQueId())));
            String strValueOf3 = String.valueOf(questionBean.getPage());
            if (strValueOf3.trim().length() > 0 && !strValueOf3.equalsIgnoreCase("0")) {
                queFormBean.setPage(strValueOf3);
            } else {
                queFormBean.setPage(String.valueOf(queFormBean.getId()));
            }
            queFormBean.setQuestion(questionBean.getQuestion());
            queFormBean.setRelatedpropertyname(questionBean.getRelatedpropertyname());
            queFormBean.setSubform(questionBean.getSubform());
            queFormBean.setSubtitle(questionBean.getSubtitle());
            queFormBean.setTitle(questionBean.getTitle());
            queFormBean.setType(questionBean.getType());
            if (questionBean.getValidationmethod() != null && questionBean.getValidationmethod().length() > 0) {
                String[] strArrSplit3 = UtilBean.split(questionBean.getValidationmethod(), ":");
                String validationmessage = questionBean.getValidationmessage();
                String[] strArrSplit4 = validationmessage != null ? UtilBean.split(validationmessage, ":") : null;
                ArrayList arrayList3 = new ArrayList();
                for (int i = 0; i < strArrSplit3.length; i++) {
                    ValidationTagBean validationTagBean = new ValidationTagBean();
                    validationTagBean.setMethod(strArrSplit3[i]);
                    if (strArrSplit4 != null && strArrSplit4.length > 0) {
                        validationTagBean.setMessage(strArrSplit4[i]);
                    }
                    arrayList3.add(validationTagBean);
                }
                queFormBean.setValidations(arrayList3);
            }
            if (queFormBean.getId() != 0) {
                SharedStructureData.mapIndexQuestion.put(Integer.valueOf(queFormBean.getId()), queFormBean);
            } else {
                Log.i(getClass().getSimpleName(), "^^^^^^^^^^^^^^^^ Question is not stored in map ^^^^^^^^^^^ no : " + queFormBean.getQuestion());
            }
            try {
                int i2 = Integer.parseInt(queFormBean.getPage().trim());
                PageFormBean pageFormBean = SharedStructureData.mapIndexPage.get(Integer.valueOf(i2));
                if (pageFormBean == null) {
                    pageFormBean = new PageFormBean(i2);
                    SharedStructureData.mapIndexPage.put(Integer.valueOf(i2), pageFormBean);
                }
                if (pageFormBean.addQuestion(queFormBean)) {
                    Log.i(getClass().getSimpleName(), "question no : " + queFormBean.getId() + "  next is " + queFormBean.getNext() + "  added into pane No : " + i2);
                } else {
                    Log.i(getClass().getSimpleName(), "^^^^^ Question " + queFormBean.getQuestion() + " is not added in page :^^^^^^^^^^^ " + i2);
                }
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), "Question  : " + queFormBean.getQuestion() + "  is Not added into page ..........", e);
            }
            if (questionBean.getDatamap() != null && SewaConstants.getLocationLevel().containsKey(questionBean.getDatamap())) {
                String datamap = questionBean.getDatamap();
                List<LocationBean> listRetrieveLocationByLevel = SharedStructureData.sewaService.retrieveLocationByLevel(SewaConstants.getLocationLevel().get(datamap));
                if (listRetrieveLocationByLevel != null) {
                    ArrayList arrayList4 = new ArrayList();
                    for (LocationBean locationBean : listRetrieveLocationByLevel) {
                        FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
                        fieldValueMobDataBean.setIdOfValue(locationBean.getActualID().intValue());
                        fieldValueMobDataBean.setValue(locationBean.getName());
                        arrayList4.add(fieldValueMobDataBean);
                    }
                    SharedStructureData.mapDataMapLabelBean.put(datamap, arrayList4);
                }
            }
        }
    }

    public List<FieldValueMobDataBean> convertListValueBeansToFieldValueDataBean(List<ListValueBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            Iterator<ListValueBean> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(convertListValueBeansToFieldValueDataBean(it.next()));
            }
        }
        return arrayList;
    }

    public FieldValueMobDataBean convertListValueBeansToFieldValueDataBean(ListValueBean listValueBean) {
        if (listValueBean == null) {
            return null;
        }
        FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
        fieldValueMobDataBean.setField(listValueBean.getField());
        fieldValueMobDataBean.setFieldType(listValueBean.getFieldType());
        fieldValueMobDataBean.setFormCode(listValueBean.getFormCode());
        fieldValueMobDataBean.setIdOfValue(listValueBean.getIdOfValue());
        fieldValueMobDataBean.setLastUpdateOfFieldValue(Long.MIN_VALUE);
        fieldValueMobDataBean.setValue(listValueBean.getValue());
        return fieldValueMobDataBean;
    }

    public List<LabelBean> convertQueryMobDataBeanToLabelModel(QueryMobDataBean queryMobDataBean) {
        List<LinkedHashMap<String, Object>> result = queryMobDataBean.getResult();
        ArrayList arrayList = new ArrayList();
        for (LinkedHashMap<String, Object> linkedHashMap : result) {
            Object obj = linkedHashMap.get("custom3b");
            Object obj2 = linkedHashMap.get(FieldNameConstants.KEY);
            Object obj3 = linkedHashMap.get("text");
            Object obj4 = linkedHashMap.get("language");
            Object obj5 = linkedHashMap.get("created_on");
            if (obj != null && obj.equals(Boolean.TRUE) && obj2 != null && obj3 != null && obj4 != null && obj5 != null) {
                LabelBean labelBean = new LabelBean();
                labelBean.setLabelKey(obj2.toString());
                labelBean.setLabelValue(obj3.toString());
                labelBean.setLanguage(obj4.toString());
                labelBean.setModifiedOn(new Date(Long.parseLong(obj5.toString())));
                arrayList.add(labelBean);
            }
        }
        return arrayList;
    }

    public MigratedMembersBean convertMigratedMembersDataBeanToBean(MigratedMembersDataBean migratedMembersDataBean) {
        MigratedMembersBean migratedMembersBean = new MigratedMembersBean();
        migratedMembersBean.setMigrationId(migratedMembersDataBean.getMigrationId());
        migratedMembersBean.setMemberId(migratedMembersDataBean.getMemberId());
        migratedMembersBean.setName(migratedMembersDataBean.getName());
        migratedMembersBean.setHealthId(migratedMembersDataBean.getHealthId());
        migratedMembersBean.setHealthId(migratedMembersDataBean.getHealthId());
        migratedMembersBean.setLocationMigratedFrom(migratedMembersDataBean.getLocationMigratedFrom());
        migratedMembersBean.setLocationMigratedTo(migratedMembersDataBean.getLocationMigratedTo());
        migratedMembersBean.setFamilyMigratedFrom(migratedMembersDataBean.getFamilyMigratedFrom());
        migratedMembersBean.setFamilyMigratedTo(migratedMembersDataBean.getFamilyMigratedTo());
        migratedMembersBean.setFromLocationId(migratedMembersDataBean.getFromLocationId());
        migratedMembersBean.setToLocationId(migratedMembersDataBean.getToLocationId());
        migratedMembersBean.setOutOfState(migratedMembersDataBean.getOutOfState());
        migratedMembersBean.setConfirmed(migratedMembersDataBean.getConfirmed());
        migratedMembersBean.setLfu(migratedMembersDataBean.getLfu());
        if (migratedMembersDataBean.getModifiedOn() != null) {
            migratedMembersBean.setModifiedOn(new Date(migratedMembersDataBean.getModifiedOn().longValue()));
        }
        return migratedMembersBean;
    }

    public MigratedMembersDataBean convertMigratedMembersBeanToDataBean(MigratedMembersBean migratedMembersBean) {
        MigratedMembersDataBean migratedMembersDataBean = new MigratedMembersDataBean();
        migratedMembersDataBean.setMigrationId(migratedMembersBean.getMigrationId());
        migratedMembersDataBean.setMemberId(migratedMembersBean.getMemberId());
        migratedMembersDataBean.setName(migratedMembersBean.getName());
        migratedMembersDataBean.setHealthId(migratedMembersBean.getHealthId());
        migratedMembersDataBean.setHealthId(migratedMembersBean.getHealthId());
        migratedMembersDataBean.setLocationMigratedFrom(migratedMembersBean.getLocationMigratedFrom());
        migratedMembersDataBean.setLocationMigratedTo(migratedMembersBean.getLocationMigratedTo());
        migratedMembersDataBean.setFamilyMigratedFrom(migratedMembersBean.getFamilyMigratedFrom());
        migratedMembersDataBean.setFamilyMigratedTo(migratedMembersBean.getFamilyMigratedTo());
        migratedMembersDataBean.setFromLocationId(migratedMembersBean.getFromLocationId());
        migratedMembersDataBean.setToLocationId(migratedMembersBean.getToLocationId());
        migratedMembersDataBean.setOutOfState(migratedMembersBean.getOutOfState());
        migratedMembersDataBean.setConfirmed(migratedMembersBean.getConfirmed());
        migratedMembersDataBean.setLfu(migratedMembersBean.getLfu());
        if (migratedMembersBean.getModifiedOn() != null) {
            migratedMembersDataBean.setModifiedOn(Long.valueOf(migratedMembersBean.getModifiedOn().getTime()));
        }
        return migratedMembersDataBean;
    }

    public MigratedFamilyBean convertMigratedFamilyDataBeanToBean(MigratedFamilyDataBean migratedFamilyDataBean) {
        MigratedFamilyBean migratedFamilyBean = new MigratedFamilyBean();
        migratedFamilyBean.setMigrationId(migratedFamilyDataBean.getMigrationId());
        migratedFamilyBean.setFamilyId(migratedFamilyDataBean.getFamilyId());
        migratedFamilyBean.setFamilyIdString(migratedFamilyDataBean.getFamilyIdString());
        migratedFamilyBean.setLocationMigratedFrom(migratedFamilyDataBean.getLocationMigratedFrom());
        migratedFamilyBean.setLocationMigratedTo(migratedFamilyDataBean.getLocationMigratedTo());
        migratedFamilyBean.setFromLocationId(migratedFamilyDataBean.getFromLocationId());
        migratedFamilyBean.setToLocationId(migratedFamilyDataBean.getToLocationId());
        migratedFamilyBean.setOutOfState(migratedFamilyDataBean.getOutOfState());
        migratedFamilyBean.setConfirmed(migratedFamilyDataBean.getIsConfirmed());
        migratedFamilyBean.setLfu(migratedFamilyDataBean.getIsLfu());
        migratedFamilyBean.setSplitFamily(migratedFamilyDataBean.getIsSplitFamily());
        migratedFamilyBean.setsFamilyId(migratedFamilyDataBean.getsFamilyId());
        migratedFamilyBean.setsFamilyIdString(migratedFamilyDataBean.getsFamilyIdString());
        migratedFamilyBean.setSplitMembersDetail(migratedFamilyDataBean.getSplitMembersDetail());
        if (migratedFamilyDataBean.getModifiedOn() != null) {
            migratedFamilyBean.setModifiedOn(new Date(migratedFamilyDataBean.getModifiedOn().longValue()));
        }
        return migratedFamilyBean;
    }

    public MigratedFamilyDataBean convertMigratedFamilyBeanToDataBean(MigratedFamilyBean migratedFamilyBean) {
        MigratedFamilyDataBean migratedFamilyDataBean = new MigratedFamilyDataBean();
        migratedFamilyDataBean.setMigrationId(migratedFamilyBean.getMigrationId());
        migratedFamilyDataBean.setFamilyId(migratedFamilyBean.getFamilyId());
        migratedFamilyDataBean.setFamilyIdString(migratedFamilyBean.getFamilyIdString());
        migratedFamilyDataBean.setLocationMigratedFrom(migratedFamilyBean.getLocationMigratedFrom());
        migratedFamilyDataBean.setLocationMigratedTo(migratedFamilyBean.getLocationMigratedTo());
        migratedFamilyDataBean.setFromLocationId(migratedFamilyBean.getFromLocationId());
        migratedFamilyDataBean.setToLocationId(migratedFamilyBean.getToLocationId());
        migratedFamilyDataBean.setOutOfState(migratedFamilyBean.getOutOfState());
        migratedFamilyDataBean.setIsConfirmed(migratedFamilyBean.getConfirmed());
        migratedFamilyDataBean.setIsLfu(migratedFamilyBean.getLfu());
        migratedFamilyDataBean.setIsSplitFamily(migratedFamilyBean.getSplitFamily());
        migratedFamilyDataBean.setsFamilyId(migratedFamilyBean.getsFamilyId());
        migratedFamilyDataBean.setsFamilyIdString(migratedFamilyBean.getsFamilyIdString());
        migratedFamilyDataBean.setSplitMembersDetail(migratedFamilyBean.getSplitMembersDetail());
        if (migratedFamilyBean.getModifiedOn() != null) {
            migratedFamilyDataBean.setModifiedOn(Long.valueOf(migratedFamilyBean.getModifiedOn().getTime()));
        }
        return migratedFamilyDataBean;
    }

    public static MemberDataBean convertUwinMemberDtoToMemberDataBean(UwinBeneficiaryDto uwinBeneficiaryDto) {
        MemberDataBean memberDataBean = new MemberDataBean();
        memberDataBean.setUniqueHealthId(uwinBeneficiaryDto.beneficiaryId);
        memberDataBean.setFirstName(uwinBeneficiaryDto.benName);
        memberDataBean.setMobileNumber(uwinBeneficiaryDto.mobile);
        memberDataBean.setGender(convertGender(uwinBeneficiaryDto.gender));
        memberDataBean.setDob(convertDobToMillis(uwinBeneficiaryDto.dob));
        memberDataBean.setMemberId(uwinBeneficiaryDto.referenceId);
        return memberDataBean;
    }

    private static Long convertDobToMillis(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4, Locale.getDefault());
                simpleDateFormat.setLenient(false);
                Date date = simpleDateFormat.parse(str);
                if (date != null) {
                    return Long.valueOf(date.getTime());
                }
                return null;
            } catch (ParseException e) {
                Log.e("SewaTransformer", "DOB parse failed: " + str, e);
            }
        }
        return null;
    }

    private static String convertGender(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase(Locale.getDefault());
        if (lowerCase.startsWith("m")) {
            return "M";
        }
        if (lowerCase.startsWith("f")) {
            return "F";
        }
        return null;
    }
}
