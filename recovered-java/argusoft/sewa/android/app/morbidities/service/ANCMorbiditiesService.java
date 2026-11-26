package com.argusoft.sewa.android.app.morbidities.service;

import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyANCMorbidities;
import com.argusoft.sewa.android.app.morbidities.beans.IdentifiedMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.List;

/* loaded from: classes.dex */
public class ANCMorbiditiesService {
    private DataBeanToIdentifyANCMorbidities dtim;
    private List<IdentifiedMorbidityDetails> identifiedMorbidities;

    public ANCMorbiditiesService(DataBeanToIdentifyANCMorbidities dataBeanToIdentifyANCMorbidities, List<IdentifiedMorbidityDetails> list) {
        this.dtim = dataBeanToIdentifyANCMorbidities;
        this.identifiedMorbidities = list;
        isAph();
        isEmesisOfPregnancy();
        isFever();
        isHepatitis();
        isMalariaInPregnancy();
        isMildPregnancyInducedHypertension();
        isModerateAnemia();
        isPossibleTB();
        isPrematureRuptureOfMembrane();
        isProbableSevereAnemia();
        isSevereAnemia();
        isSeverePregnancyInducedHypertension();
        isSickleCellCrisis();
        isUpperRespiratoryTractInfection();
        isUrinaryTractInfection();
        isVaginitis();
        if (this.dtim.isIsFirstAncHomeVisitDone()) {
            return;
        }
        isBadObstetricHistory();
        isUnintendedPregnancy();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0263 A[PHI: r3 r8
      0x0263: PHI (r3v6 boolean) = (r3v5 boolean), (r3v39 boolean), (r3v39 boolean) binds: [B:31:0x0188, B:43:0x0203, B:45:0x0217] A[DONT_GENERATE, DONT_INLINE]
      0x0263: PHI (r8v6 char) = (r8v5 char), (r8v8 char), (r8v8 char) binds: [B:31:0x0188, B:43:0x0203, B:45:0x0217] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void isSeverePregnancyInducedHypertension() {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.morbidities.service.ANCMorbiditiesService.isSeverePregnancyInducedHypertension():void");
    }

    private void isAph() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isVaginalBleedingSinceLastVisit())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VAGINAL_BLEEDING_SINCE_LAST_VISIT) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("APH", identifiedMorbidityDetails);
        }
    }

    private void isHepatitis() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isJaundice())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.JAUNDICE) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("HEP", identifiedMorbidityDetails);
        }
    }

    private void isSickleCellCrisis() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isSevereJointPain())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.SEVERE_JOINT_PAIN) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("SCC", identifiedMorbidityDetails);
        }
    }

    private void isPrematureRuptureOfMembrane() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getGestationalWeek() != null && Boolean.TRUE.equals(this.dtim.isLeakingPerVaginally()) && UtilBean.isNotInGivenRange(this.dtim.getGestationalWeek().intValue(), 28, 37)) {
            StringBuilder sb = new StringBuilder();
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.LEAKING_PER_VAGINALLY));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.GESTATIONAL_WEEK));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(this.dtim.getGestationalWeek().toString());
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            addIdentifiedMorbidityIntoList("PRM", identifiedMorbidityDetails);
        }
    }

    private void isSevereAnemia() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getHaemoglobin() == null || this.dtim.getHaemoglobin().intValue() > 7) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HAEMOGLOBIN_IS) + MorbiditiesConstant.EQUALS_SYMBOL + this.dtim.getHaemoglobin().toString());
        addIdentifiedMorbidityIntoList("SEAM", identifiedMorbidityDetails);
    }

    private void isBadObstetricHistory() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        boolean z2 = true;
        if (this.dtim.getAge() == null || (this.dtim.getAge().longValue() >= 18 && this.dtim.getAge().longValue() <= 35)) {
            z = false;
        } else {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AGE_IS) + MorbiditiesConstant.EQUALS_SYMBOL + this.dtim.getAge());
            z = true;
        }
        if (this.dtim.getGravida() != null && this.dtim.getGravida().intValue() > 4) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.GRAVIDA_IS_MORE_THAN_4));
            z = true;
        }
        if (this.dtim.getComplicationPresentDuringPreviousPregnancy() != null) {
            int i = 0;
            while (true) {
                if (i >= this.dtim.getComplicationPresentDuringPreviousPregnancy().size()) {
                    break;
                }
                String str = this.dtim.getComplicationPresentDuringPreviousPregnancy().get(i);
                if (str.equals("NONE") || str.equals("NK")) {
                    i++;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.COMPLICATION_PRESENT_DURING_PREVIOUS_PREGNANCY_IS));
                    for (int i2 = 0; i2 < this.dtim.getComplicationPresentDuringPreviousPregnancy().size(); i2++) {
                        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getComplicationPresentDuringPreviousPregnancy().get(i2))));
                        sb.append(GlobalTypes.COMMA);
                    }
                    sb.deleteCharAt(sb.length() - 1);
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    z = true;
                }
            }
        }
        if (this.dtim.getMaritalStatus() == null || this.dtim.getMaritalStatus().equalsIgnoreCase(MorbiditiesConstant.MARRIED)) {
            z2 = z;
        } else {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.MARITAL_STATUS_IS) + UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getMaritalStatus())));
        }
        if (z2) {
            addIdentifiedMorbidityIntoList("BOH", identifiedMorbidityDetails);
        }
    }

    private void isUnintendedPregnancy() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getMaritalStatus() == null || this.dtim.getMaritalStatus().equalsIgnoreCase(MorbiditiesConstant.MARRIED)) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.MARITAL_STATUS_IS) + UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getMaritalStatus())));
        addIdentifiedMorbidityIntoList("UP", identifiedMorbidityDetails);
    }

    private void isMildPregnancyInducedHypertension() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        boolean z2 = false;
        if (this.dtim.getUrineProtein() != null && Boolean.FALSE.equals(this.dtim.isHeadache()) && Boolean.FALSE.equals(this.dtim.isVisionDisturbance()) && ((this.dtim.getSystolicBP() != null || this.dtim.getDiastolicBP() != null) && this.dtim.getUrineProtein().intValue() != 3 && this.dtim.getUrineProtein().intValue() != 4 && this.dtim.getUrineProtein().intValue() != -1)) {
            StringBuilder sb = new StringBuilder(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HEADACHE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VISION_DISTURBANCE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.URINE_PROTEIN));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            if (this.dtim.getUrineProtein().intValue() == 1) {
                sb.append(GlobalTypes.ADD_SEPARATOR);
            } else if (this.dtim.getUrineProtein().intValue() == 2) {
                sb.append("++");
            } else {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(MorbiditiesConstant.ABSENT)));
            }
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            if (this.dtim.getSystolicBP().intValue() > 140) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.SYSTOLIC_BP));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(this.dtim.getSystolicBP().intValue());
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z = true;
            } else {
                z = false;
            }
            sb.delete(0, sb.length());
            if (this.dtim.getDiastolicBP().intValue() > 90) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DIASTOLIC_BP));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(this.dtim.getDiastolicBP().intValue());
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            } else {
                z2 = z;
            }
        }
        if (z2) {
            addIdentifiedMorbidityIntoList("MPIH", identifiedMorbidityDetails);
        }
    }

    private void isMalariaInPregnancy() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isFever()) && Boolean.TRUE.equals(this.dtim.isChillsOrRigours()) && Boolean.FALSE.equals(this.dtim.isBurningUrination())) {
            StringBuilder sb = new StringBuilder(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.FEVER));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.CHILLS_RIGOURS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.BURNING_URINATION));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            addIdentifiedMorbidityIntoList("MIP", identifiedMorbidityDetails);
        }
    }

    private void isFever() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getPresenceOfCough() != null && Boolean.TRUE.equals(this.dtim.isFever()) && Boolean.TRUE.equals(this.dtim.isChillsOrRigours()) && Boolean.FALSE.equals(this.dtim.isBurningUrination()) && this.dtim.getPresenceOfCough().equalsIgnoreCase(MorbiditiesConstant.NO_COUGH)) {
            StringBuilder sb = new StringBuilder(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.FEVER));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.CHILLS_RIGOURS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.BURNING_URINATION));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.PRESENCE_OF_COUGH));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No cough"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            addIdentifiedMorbidityIntoList("FEVER", identifiedMorbidityDetails);
        }
    }

    private void isPossibleTB() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (MorbiditiesConstant.MORE_THAN_15_DAYS.equalsIgnoreCase(this.dtim.getPresenceOfCough())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.PRESENCE_OF_COUGH) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel(LabelConstants.MORE_THAN_15_DAYS));
            addIdentifiedMorbidityIntoList("PT", identifiedMorbidityDetails);
        }
    }

    private void isUrinaryTractInfection() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isBurningUrination())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.BURNING_URINATION) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("UTI", identifiedMorbidityDetails);
        }
    }

    private void isVaginitis() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getVaginalDischarge() == null || this.dtim.getVaginalDischarge().equalsIgnoreCase(MorbiditiesConstant.NO_OR_MINIMAL_DISCHARGE)) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VAGINAL_DISCHARGE) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getVaginalDischarge())));
        addIdentifiedMorbidityIntoList("VAGIN", identifiedMorbidityDetails);
    }

    private void isProbableSevereAnemia() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        if (Boolean.TRUE.equals(this.dtim.isDoYouGetTiredEasily()) && Boolean.TRUE.equals(this.dtim.isShortOfBreathDuringRoutingHouseholdWork())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DO_YOU_GET_TIRED_EASILY));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.ARE_YOU_SHORT_OF_BREATH_DURING_ROUTING_HOUSEHOLD_WORK));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            z = true;
        } else {
            z = false;
        }
        if (Boolean.TRUE.equals(this.dtim.isConjunctivaAndPalmsPale())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_CONJUNCTIVA_AND_PALMS_PALE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            z = true;
        }
        if (Boolean.TRUE.equals(this.dtim.isSwellingOfFaceHandsOrFeet())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.SWELLING_OF_FACE_HANDS_OR_FEET));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        } else {
            z2 = z;
        }
        if (z2) {
            addIdentifiedMorbidityIntoList("PSA", identifiedMorbidityDetails);
        }
    }

    private void isEmesisOfPregnancy() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isVomiting())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VOMITING) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("EOP", identifiedMorbidityDetails);
        }
    }

    private void isUpperRespiratoryTractInfection() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (MorbiditiesConstant.LESS_THAN_15_DAYS.equalsIgnoreCase(this.dtim.getPresenceOfCough())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.PRESENCE_OF_COUGH) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel(LabelConstants.LESS_THAN_15_DAYS));
            addIdentifiedMorbidityIntoList("URTI", identifiedMorbidityDetails);
        }
    }

    private void isModerateAnemia() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getHaemoglobin() == null || !UtilBean.isNotInGivenRange(this.dtim.getHaemoglobin().intValue(), 7, 11)) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HAEMOGLOBIN_IS) + MorbiditiesConstant.EQUALS_SYMBOL + this.dtim.getHaemoglobin());
        addIdentifiedMorbidityIntoList("MDAN", identifiedMorbidityDetails);
    }

    private void addIdentifiedMorbidityIntoList(String str, IdentifiedMorbidityDetails identifiedMorbidityDetails) {
        identifiedMorbidityDetails.setMorbidityCode(str);
        identifiedMorbidityDetails.setRiskFactorOfIdentifiedMorbidities(MorbiditiesConstant.getMorbidityCodeAsKEYandRiskFactorAsVALUE(str));
        this.identifiedMorbidities.add(identifiedMorbidityDetails);
    }
}
