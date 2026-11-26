package com.argusoft.sewa.android.app.core.impl;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.text.HtmlCompat;
import com.argusoft.sewa.android.app.component.listeners.RadioButtonDateListener;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.beans.BeneficiaryMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.beans.ChildPNCVisitMobDataBean;
import com.argusoft.sewa.android.app.morbidities.beans.ClientPNCVisitMobDataBean;
import com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyANCMorbidities;
import com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyChildCareMorbidities;
import com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyPNCMorbidities;
import com.argusoft.sewa.android.app.morbidities.beans.IdentifiedMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.morbidities.service.ANCMorbiditiesService;
import com.argusoft.sewa.android.app.morbidities.service.ChildCareMorbiditiesService;
import com.argusoft.sewa.android.app.morbidities.service.PNCMorbiditiesService;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

/* loaded from: classes.dex */
public class MorbiditiesIdentification {
    private DataBeanToIdentifyANCMorbidities createDataBeanToIdentifyANCMorbidity(String str) {
        DataBeanToIdentifyANCMorbidities dataBeanToIdentifyANCMorbidities = new DataBeanToIdentifyANCMorbidities();
        for (String str2 : UtilBean.split(str, GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR)) {
            String[] strArrSplit = UtilBean.split(str2, GlobalTypes.ANSWER_STRING_FIRST_SEPARATOR);
            setANCMorbidityBeanForBeneficiaryAfterANC(dataBeanToIdentifyANCMorbidities, Integer.parseInt(strArrSplit[0]), strArrSplit[1]);
        }
        setEDPDetailsInANCMorbidityBean(dataBeanToIdentifyANCMorbidities);
        return dataBeanToIdentifyANCMorbidities;
    }

    private void setEDPDetailsInANCMorbidityBean(DataBeanToIdentifyANCMorbidities dataBeanToIdentifyANCMorbidities) {
        String str = SharedStructureData.relatedPropertyHashTable.get("maritalStatus");
        if (str != null && !str.equalsIgnoreCase(LabelConstants.NULL)) {
            dataBeanToIdentifyANCMorbidities.setMaritalStatus(str);
        }
        String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.AGE_FOR_MORB);
        if (str2 != null && !str2.equalsIgnoreCase(LabelConstants.NULL)) {
            dataBeanToIdentifyANCMorbidities.setAge(Long.valueOf(str2));
        }
        String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.COMPLICATION_DURING_LAST_PREGNANCY);
        if (str3 != null && !str3.equalsIgnoreCase(LabelConstants.NULL)) {
            dataBeanToIdentifyANCMorbidities.setComplicationPresentDuringPreviousPregnancy(UtilBean.getListFromStringBySeparator(str3, GlobalTypes.COMMA));
        }
        String str4 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.GRAVIDA_VALUE);
        if (str4 != null) {
            if (MorbiditiesConstant.GRAVIDA_MORE_THAN_4.equalsIgnoreCase(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.GRAVIDA_VALUE))) {
                dataBeanToIdentifyANCMorbidities.setGravida(5);
            } else {
                dataBeanToIdentifyANCMorbidities.setGravida(Integer.valueOf(str4));
            }
        }
        String str5 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.GESTATIONAL_WEEK);
        if (str5 != null) {
            dataBeanToIdentifyANCMorbidities.setGestationalWeek(Integer.valueOf(str5));
        }
        dataBeanToIdentifyANCMorbidities.setIsFirstAncHomeVisitDone(false);
        String str6 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.IS_FIRST_ANC_HOME_VISIT_DONE);
        if (str6 == null || !str6.equalsIgnoreCase("T")) {
            return;
        }
        dataBeanToIdentifyANCMorbidities.setIsFirstAncHomeVisitDone(true);
    }

    private void setANCMorbidityBeanForBeneficiaryAfterANC(DataBeanToIdentifyANCMorbidities dataBeanToIdentifyANCMorbidities, int i, String str) {
        dataBeanToIdentifyANCMorbidities.setBeneficiaryType("M");
        if (i == 2) {
            dataBeanToIdentifyANCMorbidities.setBeneficiaryName(str);
            return;
        }
        if (i != 155) {
            switch (i) {
                case 136:
                    dataBeanToIdentifyANCMorbidities.setHeadache(UtilBean.getBooleanValue(str));
                    break;
                case 137:
                    dataBeanToIdentifyANCMorbidities.setVisionDisturbance(UtilBean.getBooleanValue(str));
                    break;
                case 138:
                    dataBeanToIdentifyANCMorbidities.setHasConvulsion(UtilBean.getBooleanValue(str));
                    break;
                case 139:
                    dataBeanToIdentifyANCMorbidities.setPresenceOfCough(str);
                    break;
                case 140:
                    dataBeanToIdentifyANCMorbidities.setFever(UtilBean.getBooleanValue(str));
                    break;
                case 141:
                    dataBeanToIdentifyANCMorbidities.setChillsOrRigours(UtilBean.getBooleanValue(str));
                    break;
                case 142:
                    dataBeanToIdentifyANCMorbidities.setJaundice(UtilBean.getBooleanValue(str));
                    break;
                case 143:
                    dataBeanToIdentifyANCMorbidities.setSevereJointPain(UtilBean.getBooleanValue(str));
                    break;
                default:
                    switch (i) {
                        case 145:
                            dataBeanToIdentifyANCMorbidities.setVomiting(UtilBean.getBooleanValue(str));
                            break;
                        case 146:
                            dataBeanToIdentifyANCMorbidities.setVaginalBleedingSinceLastVisit(UtilBean.getBooleanValue(str));
                            break;
                        case 147:
                            dataBeanToIdentifyANCMorbidities.setBurningUrination(UtilBean.getBooleanValue(str));
                            break;
                        case 148:
                            dataBeanToIdentifyANCMorbidities.setVaginalDischarge(str);
                            break;
                        case 149:
                            dataBeanToIdentifyANCMorbidities.setLeakingPerVaginally(UtilBean.getBooleanValue(str));
                            break;
                        case 150:
                            dataBeanToIdentifyANCMorbidities.setDoYouGetTiredEasily(UtilBean.getBooleanValue(str));
                            break;
                        case RadioButtonDateListener.DATE_VIEW_ID /* 151 */:
                            dataBeanToIdentifyANCMorbidities.setShortOfBreathDuringRoutingHouseholdWork(UtilBean.getBooleanValue(str));
                            break;
                        case 152:
                            dataBeanToIdentifyANCMorbidities.setSwellingOfFaceHandsOrFeet(UtilBean.getBooleanValue(str));
                            break;
                    }
            }
            return;
        }
        dataBeanToIdentifyANCMorbidities.setConjunctivaAndPalmsPale(UtilBean.getBooleanValue(str));
    }

    public List<BeneficiaryMorbidityDetails> findAvailableANCMorbidities(String str, String str2) {
        DataBeanToIdentifyANCMorbidities dataBeanToIdentifyANCMorbiditiesCreateDataBeanToIdentifyANCMorbidity = createDataBeanToIdentifyANCMorbidity(str);
        ArrayList arrayList = new ArrayList();
        BeneficiaryMorbidityDetails beneficiaryMorbidityDetails = new BeneficiaryMorbidityDetails();
        ArrayList arrayList2 = new ArrayList();
        new ANCMorbiditiesService(dataBeanToIdentifyANCMorbiditiesCreateDataBeanToIdentifyANCMorbidity, arrayList2);
        beneficiaryMorbidityDetails.setIdentifiedMorbidities(arrayList2);
        beneficiaryMorbidityDetails.setBeneficiaryName(str2);
        beneficiaryMorbidityDetails.setBeneficiaryType(dataBeanToIdentifyANCMorbiditiesCreateDataBeanToIdentifyANCMorbidity.getBeneficiaryType());
        arrayList.add(beneficiaryMorbidityDetails);
        return arrayList;
    }

    private void setPNCHomeVisitBeanForBeneficiary(ClientPNCVisitMobDataBean clientPNCVisitMobDataBean, float f, String str) {
        if (clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans() == null) {
            clientPNCVisitMobDataBean.setChildPNCVisitMobDataBeans(new ArrayList());
        }
        int i = (int) f;
        int i2 = (int) (((f - i) + 1.0E-5d) * 10.0d);
        if (clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().size() < i2 + 1) {
            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().add(new ChildPNCVisitMobDataBean());
        }
        if (i == 2) {
            clientPNCVisitMobDataBean.setHealthId(str);
            return;
        }
        if (i == 12) {
            if (RchConstants.MEMBER_STATUS_AVAILABLE.equals(str)) {
                clientPNCVisitMobDataBean.setIsMotherAlive(true);
                return;
            } else {
                if (RchConstants.MEMBER_STATUS_DEATH.equals(str)) {
                    clientPNCVisitMobDataBean.setIsMotherAlive(false);
                    return;
                }
                return;
            }
        }
        if (i == 126) {
            clientPNCVisitMobDataBean.setPresentFlag(UtilBean.getBooleanValue(str));
            return;
        }
        if (i == 31) {
            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setHealthId(str);
            return;
        }
        if (i == 32) {
            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setChildName(str);
            return;
        }
        if (i == 60) {
            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setWhetherBabyLimbsAndNeckMoreLimpThanBefore(str);
            return;
        }
        if (i != 61) {
            switch (i) {
                case 21:
                    clientPNCVisitMobDataBean.setBleedingFlag(UtilBean.getBooleanValue(str));
                    break;
                case 22:
                    clientPNCVisitMobDataBean.setPadsCount(Integer.valueOf(str));
                    break;
                case 23:
                    clientPNCVisitMobDataBean.setFoulSmellFlag(UtilBean.getBooleanValue(str));
                    break;
                default:
                    switch (i) {
                        case 25:
                            clientPNCVisitMobDataBean.setAbnormalBehaviourFlag(UtilBean.getBooleanValue(str));
                            break;
                        case 26:
                            clientPNCVisitMobDataBean.setFeverFlag(UtilBean.getBooleanValue(str));
                            break;
                        case 27:
                            clientPNCVisitMobDataBean.setHeadacheFlag(UtilBean.getBooleanValue(str));
                            break;
                        case 28:
                            clientPNCVisitMobDataBean.setBreastfeedingDifficultyFlag(UtilBean.getBooleanValue(str));
                            break;
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                            clientPNCVisitMobDataBean.setProblemPresent(str);
                            break;
                        default:
                            switch (i) {
                                case 40:
                                    clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setIsChildAlive(UtilBean.getBooleanValue(str));
                                    break;
                                case 41:
                                    clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setmCryStatus(str);
                                    break;
                                case 42:
                                    clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setmBabyFed(str);
                                    break;
                                case 43:
                                    clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setmSucklingStatus(str);
                                    break;
                                case 44:
                                    clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setmVomitingFlag(UtilBean.getBooleanValue(str));
                                    break;
                                case 45:
                                    clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setmHandsTouchFlag(UtilBean.getBooleanValue(str));
                                    break;
                                default:
                                    switch (i) {
                                        case 52:
                                            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setSkinPustules(UtilBean.getBooleanValue(str));
                                            break;
                                        case 53:
                                            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setmChestIndrawingFlag(UtilBean.getBooleanValue(str));
                                            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setChestIndrawingFlag(UtilBean.getBooleanValue(str));
                                            break;
                                        case 54:
                                            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setUmbilicus(str);
                                            break;
                                        case 55:
                                            clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setAbdomen(str);
                                            break;
                                        case 56:
                                            String[] strArrSplit = UtilBean.split(str, GlobalTypes.KEY_VALUE_SEPARATOR);
                                            if (strArrSplit.length == 1 && strArrSplit[0].equalsIgnoreCase("T")) {
                                                clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setTemperature(null);
                                                break;
                                            } else if (strArrSplit.length == 3 && strArrSplit[0].equalsIgnoreCase("F")) {
                                                clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setTemperature(Float.valueOf(Integer.parseInt(strArrSplit[1]) + (Integer.parseInt(strArrSplit[2]) / 10.0f)));
                                                break;
                                            }
                                            break;
                                    }
                            }
                    }
            }
            return;
        }
        clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i2).setHowAreBabyEyes(str);
    }

    private List<DataBeanToIdentifyPNCMorbidities> parseRecordOfPNC(String str) {
        ClientPNCVisitMobDataBean clientPNCVisitMobDataBean = new ClientPNCVisitMobDataBean();
        for (String str2 : UtilBean.split(str, GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR)) {
            String[] strArrSplit = UtilBean.split(str2, GlobalTypes.ANSWER_STRING_FIRST_SEPARATOR);
            setPNCHomeVisitBeanForBeneficiary(clientPNCVisitMobDataBean, Float.parseFloat(strArrSplit[0]), strArrSplit[1]);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(createDBFToIdentifyPNCMorbiditiesForMother(clientPNCVisitMobDataBean));
        for (int i = 0; i < clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().size(); i++) {
            DataBeanToIdentifyPNCMorbidities dataBeanToIdentifyPNCMorbiditiesCreateDBFToIdentifyPNCMorbiditiesForChild = createDBFToIdentifyPNCMorbiditiesForChild(clientPNCVisitMobDataBean.getChildPNCVisitMobDataBeans().get(i));
            dataBeanToIdentifyPNCMorbiditiesCreateDBFToIdentifyPNCMorbiditiesForChild.setAnyDifficultyInBreastfeeding(clientPNCVisitMobDataBean.getBreastfeedingDifficultyFlag());
            try {
                setOtherDetailsForPNCMorbidity(dataBeanToIdentifyPNCMorbiditiesCreateDBFToIdentifyPNCMorbiditiesForChild, i);
            } catch (NumberFormatException e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
            arrayList.add(dataBeanToIdentifyPNCMorbiditiesCreateDBFToIdentifyPNCMorbiditiesForChild);
        }
        return arrayList;
    }

    private DataBeanToIdentifyPNCMorbidities createDBFToIdentifyPNCMorbiditiesForMother(ClientPNCVisitMobDataBean clientPNCVisitMobDataBean) {
        DataBeanToIdentifyPNCMorbidities dataBeanToIdentifyPNCMorbidities = new DataBeanToIdentifyPNCMorbidities();
        dataBeanToIdentifyPNCMorbidities.setBeneficiaryType("M");
        dataBeanToIdentifyPNCMorbidities.setHealthId(clientPNCVisitMobDataBean.getHealthId());
        if (clientPNCVisitMobDataBean.getIsMotherAlive() != null) {
            dataBeanToIdentifyPNCMorbidities.setIsBeneficiaryAlive(clientPNCVisitMobDataBean.getIsMotherAlive().booleanValue());
        } else {
            dataBeanToIdentifyPNCMorbidities.setIsBeneficiaryAlive(false);
        }
        dataBeanToIdentifyPNCMorbidities.setNoOfPadsChangedIn24Hours(clientPNCVisitMobDataBean.getPadsCount());
        dataBeanToIdentifyPNCMorbidities.setFoulSmellingDischarge(clientPNCVisitMobDataBean.getFoulSmellFlag());
        dataBeanToIdentifyPNCMorbidities.setFeverForMother(clientPNCVisitMobDataBean.getFeverFlag());
        dataBeanToIdentifyPNCMorbidities.setAbnormalTalkOrBehaviourOrMoodChanges(clientPNCVisitMobDataBean.getAbnormalBehaviourFlag());
        dataBeanToIdentifyPNCMorbidities.setHasHeadacheWithVisualDisturbances(clientPNCVisitMobDataBean.getHeadacheFlag());
        dataBeanToIdentifyPNCMorbidities.setAnyDifficultyInBreastfeeding(clientPNCVisitMobDataBean.getBreastfeedingDifficultyFlag());
        dataBeanToIdentifyPNCMorbidities.setDoesMotherHaveAnyOfFollowingProblems(UtilBean.getListFromStringBySeparator(clientPNCVisitMobDataBean.getProblemPresent(), GlobalTypes.COMMA));
        dataBeanToIdentifyPNCMorbidities.setDoesMotherHaveAnyOfFollowingOnBREAST(UtilBean.getListFromStringBySeparator(clientPNCVisitMobDataBean.getBreastProblemFlag(), GlobalTypes.COMMA));
        return dataBeanToIdentifyPNCMorbidities;
    }

    private DataBeanToIdentifyPNCMorbidities createDBFToIdentifyPNCMorbiditiesForChild(ChildPNCVisitMobDataBean childPNCVisitMobDataBean) {
        DataBeanToIdentifyPNCMorbidities dataBeanToIdentifyPNCMorbidities = new DataBeanToIdentifyPNCMorbidities();
        dataBeanToIdentifyPNCMorbidities.setHealthId(childPNCVisitMobDataBean.getHealthId());
        dataBeanToIdentifyPNCMorbidities.setBeneficiaryType("C");
        if (childPNCVisitMobDataBean.getIsChildAlive() != null) {
            dataBeanToIdentifyPNCMorbidities.setIsBeneficiaryAlive(childPNCVisitMobDataBean.getIsChildAlive().booleanValue());
        } else {
            dataBeanToIdentifyPNCMorbidities.setIsBeneficiaryAlive(false);
        }
        dataBeanToIdentifyPNCMorbidities.setBeneficiaryName(childPNCVisitMobDataBean.getChildName());
        dataBeanToIdentifyPNCMorbidities.setBabyHasWateryOrLooseMotion(childPNCVisitMobDataBean.getmLooseMotionFlag());
        dataBeanToIdentifyPNCMorbidities.setHowIsTheSkinOfTheBaby(UtilBean.getListFromStringBySeparator(childPNCVisitMobDataBean.getSkinStatus(), GlobalTypes.COMMA));
        dataBeanToIdentifyPNCMorbidities.setIsThereBleedingFromAnyPartOfTheBody(UtilBean.getListFromStringBySeparator(childPNCVisitMobDataBean.getmBleedingStatus(), GlobalTypes.COMMA));
        dataBeanToIdentifyPNCMorbidities.setAreBabyHandsAndFeetColdToTouch(childPNCVisitMobDataBean.getmHandsTouchFlag());
        dataBeanToIdentifyPNCMorbidities.setTemperature(childPNCVisitMobDataBean.getTemperature());
        dataBeanToIdentifyPNCMorbidities.setRateOfRespiration(childPNCVisitMobDataBean.getRespirationRate());
        dataBeanToIdentifyPNCMorbidities.setSkinPustules(childPNCVisitMobDataBean.getSkinPustules());
        dataBeanToIdentifyPNCMorbidities.setUmbilicus(childPNCVisitMobDataBean.getUmbilicus());
        dataBeanToIdentifyPNCMorbidities.setHowsTheBabyConsciousness(childPNCVisitMobDataBean.getmConsciousnessStatus());
        dataBeanToIdentifyPNCMorbidities.setConsciousness(childPNCVisitMobDataBean.getConsciousnessStatus());
        dataBeanToIdentifyPNCMorbidities.setWasBabyFedLessThanUsual(childPNCVisitMobDataBean.getmBabyFed());
        dataBeanToIdentifyPNCMorbidities.setHowIsBabySuckling(childPNCVisitMobDataBean.getmSucklingStatus());
        dataBeanToIdentifyPNCMorbidities.setHowIsBabyCry(childPNCVisitMobDataBean.getmCryStatus());
        dataBeanToIdentifyPNCMorbidities.setCry(childPNCVisitMobDataBean.getCryStatus());
        dataBeanToIdentifyPNCMorbidities.setAbdomen(childPNCVisitMobDataBean.getAbdomen());
        if (Boolean.TRUE.equals(childPNCVisitMobDataBean.getmChestIndrawingFlag())) {
            dataBeanToIdentifyPNCMorbidities.setChestIndrawing(childPNCVisitMobDataBean.getmChestIndrawingFlag());
        } else {
            dataBeanToIdentifyPNCMorbidities.setChestIndrawing(childPNCVisitMobDataBean.getChestIndrawingFlag());
        }
        dataBeanToIdentifyPNCMorbidities.setWhetherBabyVomits(childPNCVisitMobDataBean.getmVomitingFlag());
        dataBeanToIdentifyPNCMorbidities.setAnySkinProblems(UtilBean.getListFromStringBySeparator(childPNCVisitMobDataBean.getmSkinProblem(), GlobalTypes.COMMA));
        dataBeanToIdentifyPNCMorbidities.setDoesBabyChinTouchTheBreast(childPNCVisitMobDataBean.getChinTouchStatus());
        dataBeanToIdentifyPNCMorbidities.setIsMouthWidelyOpen(childPNCVisitMobDataBean.getMouthOpenStatus());
        dataBeanToIdentifyPNCMorbidities.setIsAreolaMoreAboveTheMouthAndLessBeneathTheMouth(childPNCVisitMobDataBean.getAreolaStatus());
        dataBeanToIdentifyPNCMorbidities.setIsLowerLipTurnedOutward(childPNCVisitMobDataBean.getLowerLipStatus());
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PRETERM_DELIVERY);
        if (str != null && str.equalsIgnoreCase("T")) {
            String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PRETERM_DELIVERY_POV);
            if (str2 != null && str2.trim().length() > 0) {
                dataBeanToIdentifyPNCMorbidities.setDeliveryDate(Long.valueOf(Long.parseLong(str2)));
            }
            String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PRETERM_DELIVERY_LMP);
            if (str3 != null && str3.trim().length() > 0) {
                dataBeanToIdentifyPNCMorbidities.setLmpDate(Long.valueOf(Long.parseLong(str3)));
            }
        }
        dataBeanToIdentifyPNCMorbidities.setWhetherBabyLimbsAndNeckMoreLimpThanBefore(childPNCVisitMobDataBean.getWhetherBabyLimbsAndNeckMoreLimpThanBefore());
        dataBeanToIdentifyPNCMorbidities.setHowAreBabyEyes(childPNCVisitMobDataBean.getHowAreBabyEyes());
        return dataBeanToIdentifyPNCMorbidities;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setOtherDetailsForPNCMorbidity(com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyPNCMorbidities r22, int r23) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.MorbiditiesIdentification.setOtherDetailsForPNCMorbidity(com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyPNCMorbidities, int):void");
    }

    private void setSepsisCondition(DataBeanToIdentifyPNCMorbidities dataBeanToIdentifyPNCMorbidities, int i) {
        String str;
        if (i == 0) {
            str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PNC_SEPSIS_CONDITION);
        } else {
            str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PNC_SEPSIS_CONDITION + i);
        }
        if (str == null || str.length() != 5) {
            return;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (i2 == 0) {
                if (cCharAt == 'T') {
                    dataBeanToIdentifyPNCMorbidities.setWhetherBabyLimbsNeckLastState(true);
                } else if (cCharAt == 'F') {
                    dataBeanToIdentifyPNCMorbidities.setWhetherBabyLimbsNeckLastState(false);
                }
            } else if (i2 == 1) {
                if (cCharAt == 'T') {
                    dataBeanToIdentifyPNCMorbidities.setAnyDifficultyInBreastfeedingLastStatus(true);
                } else if (cCharAt == 'F') {
                    dataBeanToIdentifyPNCMorbidities.setAnyDifficultyInBreastfeedingLastStatus(false);
                }
            } else if (i2 == 2) {
                if (cCharAt == 'T') {
                    dataBeanToIdentifyPNCMorbidities.setWhetherBabyFedLessLastStatus(true);
                } else if (cCharAt == 'F') {
                    dataBeanToIdentifyPNCMorbidities.setWhetherBabyFedLessLastStatus(false);
                }
            } else if (i2 == 3) {
                if (cCharAt == 'T') {
                    dataBeanToIdentifyPNCMorbidities.setHowIsBabySucklingLastStatus(true);
                } else if (cCharAt == 'F') {
                    dataBeanToIdentifyPNCMorbidities.setHowIsBabySucklingLastStatus(false);
                }
            } else if (cCharAt == 'T') {
                dataBeanToIdentifyPNCMorbidities.setHowIsBabyCryLastStatus(true);
            } else if (cCharAt == 'F') {
                dataBeanToIdentifyPNCMorbidities.setHowIsBabyCryLastStatus(false);
            }
        }
    }

    public List<BeneficiaryMorbidityDetails> findAvailablePNCMorbidities(String str, String str2) {
        List<DataBeanToIdentifyPNCMorbidities> recordOfPNC = parseRecordOfPNC(str);
        ArrayList arrayList = new ArrayList();
        BeneficiaryMorbidityDetails beneficiaryMorbidityDetails = null;
        String str3 = null;
        for (int i = 0; i < recordOfPNC.size(); i++) {
            ArrayList arrayList2 = new ArrayList();
            BeneficiaryMorbidityDetails beneficiaryMorbidityDetails2 = new BeneficiaryMorbidityDetails();
            DataBeanToIdentifyPNCMorbidities dataBeanToIdentifyPNCMorbidities = recordOfPNC.get(i);
            if (dataBeanToIdentifyPNCMorbidities.getIsBeneficiaryAlive()) {
                PNCMorbiditiesService pNCMorbiditiesService = new PNCMorbiditiesService(dataBeanToIdentifyPNCMorbidities, arrayList2);
                if ("C".equalsIgnoreCase(dataBeanToIdentifyPNCMorbidities.getBeneficiaryType())) {
                    if (str3 == null && "LTUSL".equalsIgnoreCase(dataBeanToIdentifyPNCMorbidities.getWasBabyFedLessThanUsual())) {
                        str3 = "LTUSL";
                    }
                    pNCMorbiditiesService.isHighRiskLowBirthWeightOrPreterm(arrayList2);
                }
                if ("M".equalsIgnoreCase(dataBeanToIdentifyPNCMorbidities.getBeneficiaryType())) {
                    beneficiaryMorbidityDetails2.setBeneficiaryName(str2);
                } else {
                    beneficiaryMorbidityDetails2.setBeneficiaryName(dataBeanToIdentifyPNCMorbidities.getBeneficiaryName());
                }
                beneficiaryMorbidityDetails2.setBeneficiaryId(dataBeanToIdentifyPNCMorbidities.getHealthId());
                beneficiaryMorbidityDetails2.setIdentifiedMorbidities(arrayList2);
                beneficiaryMorbidityDetails2.setBeneficiaryType(dataBeanToIdentifyPNCMorbidities.getBeneficiaryType());
                arrayList.add(beneficiaryMorbidityDetails2);
            }
        }
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            BeneficiaryMorbidityDetails beneficiaryMorbidityDetails3 = (BeneficiaryMorbidityDetails) arrayList.get(i2);
            if ("M".equalsIgnoreCase(beneficiaryMorbidityDetails3.getBeneficiaryType())) {
                List<IdentifiedMorbidityDetails> identifiedMorbidities = beneficiaryMorbidityDetails3.getIdentifiedMorbidities();
                int i3 = 0;
                while (true) {
                    if (i3 >= identifiedMorbidities.size()) {
                        break;
                    }
                    if ("FPRO".equalsIgnoreCase(identifiedMorbidities.get(i3).getMorbidityCode())) {
                        z = true;
                        break;
                    }
                    i3++;
                }
                if (!z) {
                    beneficiaryMorbidityDetails = beneficiaryMorbidityDetails3;
                }
            } else if ("C".equalsIgnoreCase(beneficiaryMorbidityDetails3.getBeneficiaryType())) {
                List<IdentifiedMorbidityDetails> identifiedMorbidities2 = beneficiaryMorbidityDetails3.getIdentifiedMorbidities();
                int i4 = 0;
                while (true) {
                    if (i4 >= identifiedMorbidities2.size()) {
                        break;
                    }
                    if ("SEP".equalsIgnoreCase(identifiedMorbidities2.get(i4).getMorbidityCode())) {
                        z2 = true;
                        break;
                    }
                    i4++;
                }
            }
        }
        if ("LTUSL".equalsIgnoreCase(str3) && !z && !z2 && !recordOfPNC.isEmpty()) {
            IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
            identifiedMorbidityDetails.setMorbidityCode("FPRO");
            identifiedMorbidityDetails.setRiskFactorOfIdentifiedMorbidities(MorbiditiesConstant.getMorbidityCodeAsKEYandRiskFactorAsVALUE("FPRO"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WAS_BABY_FED_LESS_THAN_USUAL) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(str3)));
            if (beneficiaryMorbidityDetails != null) {
                if (beneficiaryMorbidityDetails.getIdentifiedMorbidities() == null) {
                    beneficiaryMorbidityDetails.setIdentifiedMorbidities(new ArrayList());
                }
                beneficiaryMorbidityDetails.getIdentifiedMorbidities().add(identifiedMorbidityDetails);
            }
        }
        return arrayList;
    }

    private DataBeanToIdentifyChildCareMorbidities createDataBeanToIdentifyChildCareMorbidity(String str) throws NumberFormatException {
        DataBeanToIdentifyChildCareMorbidities dataBeanToIdentifyChildCareMorbidities = new DataBeanToIdentifyChildCareMorbidities();
        for (String str2 : UtilBean.split(str, GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR)) {
            String[] strArrSplit = UtilBean.split(str2, GlobalTypes.ANSWER_STRING_FIRST_SEPARATOR);
            setChildCareMorbidityBeanForBeneficiary(dataBeanToIdentifyChildCareMorbidities, Integer.parseInt(strArrSplit[0]), strArrSplit[1]);
        }
        setOtherDetailsForChildcareMorbidities(dataBeanToIdentifyChildCareMorbidities);
        return dataBeanToIdentifyChildCareMorbidities;
    }

    private void setChildCareMorbidityBeanForBeneficiary(DataBeanToIdentifyChildCareMorbidities dataBeanToIdentifyChildCareMorbidities, int i, String str) throws NumberFormatException {
        switch (i) {
            case 40:
                dataBeanToIdentifyChildCareMorbidities.setChildNotAbleToDrinkOrBreastfeed(UtilBean.getBooleanValue(str));
                break;
            case 41:
                dataBeanToIdentifyChildCareMorbidities.setChildVomitsEverything(UtilBean.getBooleanValue(str));
                break;
            case 42:
                dataBeanToIdentifyChildCareMorbidities.setChildHadConvulsion(UtilBean.getBooleanValue(str));
                break;
            case 44:
                dataBeanToIdentifyChildCareMorbidities.setDoesChildHaveCoughOrDifficultBreathing(UtilBean.getBooleanValue(str));
                break;
            case 45:
                dataBeanToIdentifyChildCareMorbidities.setSinceHowManyDaysOfCough(Integer.valueOf(Integer.parseInt(str)));
                break;
            case 46:
                dataBeanToIdentifyChildCareMorbidities.setRespiratoryRate(Integer.valueOf(Integer.parseInt(str)));
                dataBeanToIdentifyChildCareMorbidities.setNumberOfBreathsIn1Minute(Integer.valueOf(Integer.parseInt(str)));
                break;
            case 47:
                dataBeanToIdentifyChildCareMorbidities.setChildHaveChestIndrawing(UtilBean.getBooleanValue(str));
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                dataBeanToIdentifyChildCareMorbidities.setSinceHowManyDaysOfStools(Integer.valueOf(Integer.parseInt(str)));
                break;
            case 50:
                dataBeanToIdentifyChildCareMorbidities.setBloodInStools(UtilBean.getBooleanValue(str));
                break;
            case 51:
                dataBeanToIdentifyChildCareMorbidities.setSunkenEyes(UtilBean.getBooleanValue(str));
                break;
            case 52:
                dataBeanToIdentifyChildCareMorbidities.setRestlessOrIrritable(UtilBean.getBooleanValue(str));
                break;
            case 53:
                dataBeanToIdentifyChildCareMorbidities.setLethargicOrUnconscious(UtilBean.getBooleanValue(str));
                break;
            case 54:
                dataBeanToIdentifyChildCareMorbidities.setDoesSkinGoesBackVerySlowly(str);
                break;
            case 55:
                dataBeanToIdentifyChildCareMorbidities.setHowChildDrinks(str);
                break;
            case 56:
                dataBeanToIdentifyChildCareMorbidities.setFeverFlag(UtilBean.getBooleanValue(str));
                break;
            case 57:
                dataBeanToIdentifyChildCareMorbidities.setSinceHowManyDaysOfFever(Integer.valueOf(str));
                break;
            case 58:
                dataBeanToIdentifyChildCareMorbidities.setIfMoreThan7DaysHasFeverBeenPresentEachDay(UtilBean.getBooleanValue(str));
                break;
            case 60:
                dataBeanToIdentifyChildCareMorbidities.setTheNeckStiff(UtilBean.getBooleanValue(str));
                break;
            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                dataBeanToIdentifyChildCareMorbidities.setDoesTheChildHavePalmerPoller(str);
                break;
            case 62:
                dataBeanToIdentifyChildCareMorbidities.setVisibleSevereWasting(UtilBean.getBooleanValue(str));
                break;
            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                dataBeanToIdentifyChildCareMorbidities.setEdemaOfBothFeet(UtilBean.getBooleanValue(str));
                break;
            case 64:
                String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.LATEST_WEIGHT);
                if (str2 != null) {
                    dataBeanToIdentifyChildCareMorbidities.setWeightOfChild(Float.valueOf(Float.parseFloat(str2)));
                    break;
                } else {
                    String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PREV_WEIGHT);
                    if (str3 != null) {
                        dataBeanToIdentifyChildCareMorbidities.setWeightOfChild(Float.valueOf(Float.parseFloat(str3)));
                        break;
                    }
                }
                break;
            case 65:
                dataBeanToIdentifyChildCareMorbidities.setMalnutritionGradeOfChild(SharedStructureData.relatedPropertyHashTable.get("malnutritionGrade"));
                break;
            case 68:
                if (!str.equalsIgnoreCase("T")) {
                    if (UtilBean.split(str, GlobalTypes.KEY_VALUE_SEPARATOR).length == 3) {
                        dataBeanToIdentifyChildCareMorbidities.setMeasureAxillaryTemperatureIfFeverYes(Float.valueOf(Integer.parseInt(r3[1]) + (Integer.parseInt(r3[2]) / 10.0f)));
                        break;
                    }
                }
                break;
        }
    }

    private void setOtherDetailsForChildcareMorbidities(DataBeanToIdentifyChildCareMorbidities dataBeanToIdentifyChildCareMorbidities) {
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.AGE_FROM_ECR);
        if (str != null) {
            String[] strArrSplit = UtilBean.split(str, GlobalTypes.KEY_VALUE_SEPARATOR);
            dataBeanToIdentifyChildCareMorbidities.setAgeOfChild(Long.valueOf(UtilBean.getMilliSeconds(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]))));
        }
    }

    public List<BeneficiaryMorbidityDetails> findAvailableChildCareMorbidities(String str, String str2) throws NumberFormatException {
        DataBeanToIdentifyChildCareMorbidities dataBeanToIdentifyChildCareMorbiditiesCreateDataBeanToIdentifyChildCareMorbidity = createDataBeanToIdentifyChildCareMorbidity(str);
        ArrayList arrayList = new ArrayList();
        BeneficiaryMorbidityDetails beneficiaryMorbidityDetails = new BeneficiaryMorbidityDetails();
        ArrayList arrayList2 = new ArrayList();
        new ChildCareMorbiditiesService(dataBeanToIdentifyChildCareMorbiditiesCreateDataBeanToIdentifyChildCareMorbidity, arrayList2);
        beneficiaryMorbidityDetails.setIdentifiedMorbidities(arrayList2);
        beneficiaryMorbidityDetails.setBeneficiaryName(str2);
        beneficiaryMorbidityDetails.setBeneficiaryType("C");
        arrayList.add(beneficiaryMorbidityDetails);
        return arrayList;
    }
}
