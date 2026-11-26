package com.argusoft.sewa.android.app.morbidities.service;

import com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyPNCMorbidities;
import com.argusoft.sewa.android.app.morbidities.beans.IdentifiedMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
public final class PNCMorbiditiesService {
    private DataBeanToIdentifyPNCMorbidities dtim;
    private List<IdentifiedMorbidityDetails> identifiedMorbidities;
    private boolean isSepsisFound;

    public PNCMorbiditiesService(DataBeanToIdentifyPNCMorbidities dataBeanToIdentifyPNCMorbidities, List<IdentifiedMorbidityDetails> list) {
        this.dtim = dataBeanToIdentifyPNCMorbidities;
        this.identifiedMorbidities = list;
        isHypothermia();
        isJaundice();
        isPIH();
        isPPH();
        isPostPartumInfection();
        isPostpartumMoodDisorder();
        boolean zIsSepsisP2 = isSepsisP2();
        this.isSepsisFound = zIsSepsisP2;
        if (!zIsSepsisP2) {
            isPneumonia();
            isFever();
        }
        isLocalInfection();
        if ("M".equalsIgnoreCase(dataBeanToIdentifyPNCMorbidities.getBeneficiaryType())) {
            isFeedingProblems();
        }
        if (!dataBeanToIdentifyPNCMorbidities.getIsChildFirstPncDone()) {
            isBirthAsphyxia();
            isLowBirthWeight();
            isVeryLowBirthWeight();
        }
        isConjunctivitis();
    }

    private boolean isSepsisP2() {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (this.dtim.getWhetherBabyLimbsNeckLastState() || !MorbiditiesConstant.LIMP.equals(this.dtim.getWhetherBabyLimbsAndNeckMoreLimpThanBefore())) {
            i = 0;
        } else {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WHETHER_BABYS_LIMBS_AND_NECK_MORE_LIMP_THAN_BEFORE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getWhetherBabyLimbsAndNeckMoreLimpThanBefore())));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            i = 1;
        }
        if ((!this.dtim.getAnyDifficultyInBreastfeedingLastStatus() && Boolean.TRUE.equals(this.dtim.getAnyDifficultyInBreastfeeding())) || ((!this.dtim.getWhetherBabyFedLessLastStatus() && "LTUSL".equalsIgnoreCase(this.dtim.getWasBabyFedLessThanUsual())) || ((!this.dtim.getHowIsBabySucklingLastStatus() && MorbiditiesConstant.NO_SUCKLING.equalsIgnoreCase(this.dtim.getHowIsBabySuckling())) || (!this.dtim.getHowIsBabySucklingLastStatus() && MorbiditiesConstant.WEAK.equalsIgnoreCase(this.dtim.getHowIsBabySuckling()))))) {
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.getAnyDifficultyInBreastfeeding())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.ANY_DIFFICULTY_IN_BREASTFEEDING));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
            }
            if ("LTUSL".equalsIgnoreCase(this.dtim.getWasBabyFedLessThanUsual())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WAS_BABY_FED_LESS_THAN_USUAL));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getWasBabyFedLessThanUsual())));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
            }
            if (MorbiditiesConstant.NO_SUCKLING.equalsIgnoreCase(this.dtim.getHowIsBabySuckling()) || MorbiditiesConstant.WEAK.equalsIgnoreCase(this.dtim.getHowIsBabySuckling())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_IS_BABY_SUCKLING));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowIsBabySuckling())));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            }
            i++;
        }
        sb.delete(0, sb.length());
        if (this.dtim.getHowIsBabyCryLastStatus() || !(MorbiditiesConstant.WEAK.equalsIgnoreCase(this.dtim.getHowIsBabyCry()) || MorbiditiesConstant.STOP.equalsIgnoreCase(this.dtim.getHowIsBabyCry()))) {
            z = false;
        } else {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_IS_BABY_CRY));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowIsBabyCry())));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z = true;
        }
        sb.delete(0, sb.length());
        if (z) {
            i++;
        }
        if (Boolean.TRUE.equals(this.dtim.getAreBabyHandsAndFeetColdToTouch())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.BABY_HAND_AND_FEET_COLD_TO_TOUCH));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z2 = true;
        } else {
            z2 = false;
        }
        sb.delete(0, sb.length());
        if (this.dtim.getTemperature() != null && this.dtim.getTemperature().floatValue() > 99.0d) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.TEMPERATURE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(this.dtim.getTemperature().toString());
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z2 = true;
        }
        sb.delete(0, sb.length());
        if (z2) {
            i++;
        }
        if (Boolean.TRUE.equals(this.dtim.getWhetherBabyVomits())) {
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WHETHER_BABY_VOMITS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z3 = true;
        } else {
            z3 = false;
        }
        sb.delete(0, sb.length());
        if (MorbiditiesConstant.DISTENDED.equalsIgnoreCase(this.dtim.getAbdomen())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.ABDOMEN));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Distended"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z3 = true;
        }
        sb.delete(0, sb.length());
        if (z3) {
            i++;
        }
        if (Boolean.TRUE.equals(this.dtim.getChestIndrawing())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.CHEST_INDRAWING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z4 = true;
        } else {
            z4 = false;
        }
        sb.delete(0, sb.length());
        if (z4) {
            i++;
        }
        if (MorbiditiesConstant.PUS.equalsIgnoreCase(this.dtim.getUmbilicus())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.UMBILICUS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Pus"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z5 = true;
        } else {
            z5 = false;
        }
        sb.delete(0, sb.length());
        if (z5) {
            i++;
        }
        if (i <= 1) {
            return false;
        }
        addIdentifiedMorbidityIntoList("SEP", identifiedMorbidityDetails);
        return true;
    }

    private void isPPH() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getNoOfPadsChangedIn24Hours() == null || this.dtim.getNoOfPadsChangedIn24Hours().intValue() <= 5) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.PADS_ARE_CHANGED_IN_24_HOURS) + MorbiditiesConstant.EQUALS_SYMBOL + this.dtim.getNoOfPadsChangedIn24Hours());
        addIdentifiedMorbidityIntoList("PPH", identifiedMorbidityDetails);
    }

    private void isJaundice() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        int i = 0;
        if (this.dtim.getHowIsTheSkinOfTheBaby() != null) {
            int i2 = 0;
            while (i < this.dtim.getHowIsTheSkinOfTheBaby().size()) {
                if (this.dtim.getHowIsTheSkinOfTheBaby().get(i).equalsIgnoreCase("YLLW")) {
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_IS_THE_SKIN_OF_THE_BABY) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yellow"));
                    i2 = 1;
                }
                i++;
            }
            i = i2;
        }
        if (i != 0) {
            addIdentifiedMorbidityIntoList("JAUND", identifiedMorbidityDetails);
        }
    }

    private void isPostPartumInfection() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (Boolean.TRUE.equals(this.dtim.getFoulSmellingDischarge()) && Boolean.TRUE.equals(this.dtim.getFeverForMother())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.FOUL_SMELLING_DISCHARGE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.FEVER));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            addIdentifiedMorbidityIntoList("PPI", identifiedMorbidityDetails);
        }
    }

    private void isPostpartumMoodDisorder() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.getAbnormalTalkOrBehaviourOrMoodChanges())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.ABNORMAL_TALK_BEHAVIOURS_OR_MOOD_CHANGE) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("PPMD", identifiedMorbidityDetails);
        }
    }

    private void isPIH() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.getHasHeadacheWithVisualDisturbances())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HEADACHE_WITH_VISION_DISTURBANCE) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("PIHH", identifiedMorbidityDetails);
        }
    }

    private void isHypothermia() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        if (Boolean.TRUE.equals(this.dtim.getAreBabyHandsAndFeetColdToTouch())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.BABY_HAND_AND_FEET_COLD_TO_TOUCH));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z = true;
        } else {
            z = false;
        }
        sb.delete(0, sb.length());
        if (this.dtim.getTemperature() == null || this.dtim.getTemperature().floatValue() >= 97.0d) {
            z2 = z;
        } else {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.TEMPERATURE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(this.dtim.getTemperature().toString());
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        }
        if (z2) {
            addIdentifiedMorbidityIntoList("HYTH", identifiedMorbidityDetails);
        }
    }

    private void isPneumonia() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (Boolean.TRUE.equals(this.dtim.getChestIndrawing())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.CHEST_INDRAWING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z = true;
        } else {
            z = false;
        }
        sb.delete(0, sb.length());
        if (z) {
            addIdentifiedMorbidityIntoList("PNEUM", identifiedMorbidityDetails);
        }
    }

    private void isLocalInfection() {
        boolean z;
        boolean z2;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        List<IdentifiedMorbidityDetails> list = this.identifiedMorbidities;
        boolean z3 = true;
        if (list == null || list.isEmpty()) {
            z = false;
        } else {
            for (int i = 0; i < this.identifiedMorbidities.size(); i++) {
                if ("SEP".equals(this.identifiedMorbidities.get(i).getMorbidityCode())) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        sb.delete(0, sb.length());
        if (z) {
            z3 = false;
        } else {
            if (this.dtim.getUmbilicus() == null || !this.dtim.getUmbilicus().equalsIgnoreCase(MorbiditiesConstant.PUS)) {
                z2 = false;
            } else {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.UMBILICUS));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Pus"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (this.dtim.getSkinPustules() == null || !Boolean.TRUE.equals(this.dtim.getSkinPustules())) {
                z3 = z2;
            } else {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.SKIN_PUSTULES));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append("Yes");
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(sb.toString()));
            }
        }
        if (z3) {
            addIdentifiedMorbidityIntoList("LI", identifiedMorbidityDetails);
        }
    }

    private void isVeryLowBirthWeight() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (this.dtim.getNewBornWeight() == null || this.dtim.getNewBornWeight().floatValue() >= 2.0d || this.dtim.getNewBornWeight().floatValue() <= 0.0d) {
            return;
        }
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WEIGHT_IS));
        sb.append(this.dtim.getNewBornWeight());
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        addIdentifiedMorbidityIntoList("LBWSH", identifiedMorbidityDetails);
    }

    public void isHighRiskLowBirthWeightOrPreterm(List<IdentifiedMorbidityDetails> list) {
        boolean z;
        boolean z2;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        if (list != null && list.isEmpty()) {
            if (this.dtim.getWeightOfChild() == null || this.dtim.getAgeOfChild() == null) {
                z = false;
            } else {
                z = true;
                if (this.dtim.getWeightOfChild().floatValue() >= 1.999d || this.dtim.getWeightOfChild().floatValue() < 1.5d || this.dtim.getAgeOfChild().longValue() > UtilBean.getMilliSeconds(0, 0, 15)) {
                    z2 = false;
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WEIGHT_IS));
                    sb.append(this.dtim.getWeightOfChild());
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AGE_IS));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.calculateAgeYearMonthDay(Calendar.getInstance().getTimeInMillis() - this.dtim.getAgeOfChild().longValue())[2]);
                    sb.append(UtilBean.getMyLabel(" Days"));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    z2 = true;
                }
                if (this.dtim.getWeightOfChild().floatValue() > 0.0d && this.dtim.getWeightOfChild().floatValue() < 2.1d && this.dtim.getAgeOfChild().longValue() >= UtilBean.getMilliSeconds(0, 0, 15) && this.dtim.getAgeOfChild().longValue() <= UtilBean.getMilliSeconds(0, 0, 21)) {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WEIGHT_IS));
                    sb.append(this.dtim.getWeightOfChild());
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AGE_IS));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.calculateAgeYearMonthDay(Calendar.getInstance().getTimeInMillis() - this.dtim.getAgeOfChild().longValue())[2]);
                    sb.append(UtilBean.getMyLabel(" Days"));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    z2 = true;
                }
                if (this.dtim.getWeightOfChild().floatValue() > 0.0d && this.dtim.getWeightOfChild().floatValue() < 2.2d && this.dtim.getAgeOfChild().longValue() >= UtilBean.getMilliSeconds(0, 0, 22) && this.dtim.getAgeOfChild().longValue() <= UtilBean.getMilliSeconds(0, 0, 27)) {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WEIGHT_IS));
                    sb.append(this.dtim.getWeightOfChild());
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AGE_IS));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(Calendar.getInstance().getTimeInMillis() - this.dtim.getAgeOfChild().longValue());
                    sb.append(iArrCalculateAgeYearMonthDay[1]);
                    sb.append(UtilBean.getMyLabel(" Months "));
                    sb.append(iArrCalculateAgeYearMonthDay[2]);
                    sb.append(UtilBean.getMyLabel(" Days "));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    z2 = true;
                }
                if (this.dtim.getWeightOfChild().floatValue() <= 0.0d || this.dtim.getWeightOfChild().floatValue() >= 2.3d || this.dtim.getAgeOfChild().longValue() <= UtilBean.getMilliSeconds(0, 0, 27)) {
                    z = z2;
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WEIGHT_IS));
                    sb.append(this.dtim.getWeightOfChild());
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AGE_IS));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(" 28 Days "));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                }
            }
            sb.delete(0, sb.length());
            z3 = z;
        }
        if (z3) {
            this.identifiedMorbidities = list;
            addIdentifiedMorbidityIntoList("HRLB", identifiedMorbidityDetails);
        }
    }

    private void isBirthAsphyxia() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getWhenDidBabyCry() == null || !this.dtim.getWhenDidBabyCry().equalsIgnoreCase(MorbiditiesConstant.CRY_AFTER_EFFORTS)) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WHEN_DID_BABY_CRY) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getWhenDidBabyCry())));
        addIdentifiedMorbidityIntoList("BASP", identifiedMorbidityDetails);
    }

    private void isFeedingProblems() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        if (Boolean.TRUE.equals(this.dtim.getAnyDifficultyInBreastfeeding())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.ANY_DIFFICULTY_IN_BREASTFEEDING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z = true;
        } else {
            z = false;
        }
        sb.delete(0, sb.length());
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_MOTHER_HAVE_ANY_OF_THE_FOLLOWING));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        if (this.dtim.getDoesMotherHaveAnyOfFollowingProblems() != null) {
            int i = 0;
            boolean z3 = false;
            while (i < this.dtim.getDoesMotherHaveAnyOfFollowingProblems().size()) {
                String str = this.dtim.getDoesMotherHaveAnyOfFollowingProblems().get(i);
                if (MorbiditiesConstant.NO_PROBLEM.equalsIgnoreCase(str)) {
                    break;
                }
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(str)));
                sb.append(GlobalTypes.COMMA);
                i++;
                z = true;
                z3 = true;
            }
            if (z3) {
                sb.deleteCharAt(sb.length() - 1);
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            }
        }
        sb.delete(0, sb.length());
        if (this.isSepsisFound || !"LTUSL".equalsIgnoreCase(this.dtim.getWasBabyFedLessThanUsual())) {
            z2 = z;
        } else {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WAS_BABY_FED_LESS_THAN_USUAL));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getWasBabyFedLessThanUsual())));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
        }
        if (z2) {
            addIdentifiedMorbidityIntoList("FPRO", identifiedMorbidityDetails);
        }
    }

    private void isConjunctivitis() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (this.dtim.getHowAreBabyEyes() != null) {
            if (MorbiditiesConstant.PUS_PRESENT.equals(this.dtim.getHowAreBabyEyes()) || MorbiditiesConstant.SWOLLEN.equals(this.dtim.getHowAreBabyEyes())) {
                sb.append(UtilBean.getMyLabel(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_ARE_BABYS_EYES)));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowAreBabyEyes())));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                addIdentifiedMorbidityIntoList("CONJUC", identifiedMorbidityDetails);
            }
        }
    }

    private void isLowBirthWeight() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (this.dtim.getNewBornWeight() == null || this.dtim.getNewBornWeight().floatValue() < 2.0d || this.dtim.getNewBornWeight().floatValue() >= 2.5d) {
            return;
        }
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.WEIGHT_IS));
        sb.append(": ");
        sb.append(this.dtim.getNewBornWeight());
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        addIdentifiedMorbidityIntoList("BWLPC", identifiedMorbidityDetails);
    }

    private void isFever() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (this.dtim.getTemperature() == null || this.dtim.getTemperature().floatValue() <= 99.0d) {
            z = false;
        } else {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.TEMPERATURE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(this.dtim.getTemperature().toString());
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z = true;
        }
        sb.delete(0, sb.length());
        if (z) {
            addIdentifiedMorbidityIntoList("FVRIP", identifiedMorbidityDetails);
        }
    }

    private void addIdentifiedMorbidityIntoList(String str, IdentifiedMorbidityDetails identifiedMorbidityDetails) {
        identifiedMorbidityDetails.setMorbidityCode(str);
        identifiedMorbidityDetails.setRiskFactorOfIdentifiedMorbidities(MorbiditiesConstant.getMorbidityCodeAsKEYandRiskFactorAsVALUE(str));
        this.identifiedMorbidities.add(identifiedMorbidityDetails);
    }
}
