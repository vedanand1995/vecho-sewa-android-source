package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class MemberCbacDetailBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Long actualId;

    @DatabaseField
    private Integer ageAtMenarche;

    @DatabaseField
    private String associatedWith;

    @DatabaseField
    private String bleeding;

    @DatabaseField
    private Boolean bleedingAfterIntercourse;

    @DatabaseField
    private Boolean bleedingAfterMenopause;

    @DatabaseField
    private Boolean bleedingBetweenPeriods;

    @DatabaseField
    private Boolean bloodInSputum;

    @DatabaseField
    private Float bmi;

    @DatabaseField
    private Boolean bpDiabetesHeartHistory;

    @DatabaseField
    private Boolean changeInSizeOfBreast;

    @DatabaseField
    private Boolean changeInToneOfVoice;

    @DatabaseField
    private Boolean consumeAlcoholDaily;

    @DatabaseField
    private Boolean diagnosedForAsthama;

    @DatabaseField
    private Boolean diagnosedForBreastCancer;

    @DatabaseField
    private Boolean diagnosedForCOPD;

    @DatabaseField
    private Boolean diagnosedForCervicalCancer;

    @DatabaseField
    private Boolean diagnosedForDiabetes;

    @DatabaseField
    private Boolean diagnosedForHeartDiseases;

    @DatabaseField
    private Boolean diagnosedForHypertension;

    @DatabaseField
    private Boolean diagnosedForKidneyFailure;

    @DatabaseField
    private Boolean diagnosedForNonHealingWound;

    @DatabaseField
    private Boolean diagnosedForOralCancer;

    @DatabaseField
    private Boolean diagnosedForStroke;

    @DatabaseField
    private Boolean difficultyHoldingObjects;

    @DatabaseField
    private Integer durationOfMenoapuse;

    @DatabaseField
    private Long familyId;

    @DatabaseField
    private Boolean familyMemberSufferingFromTb;

    @DatabaseField
    private Boolean fitsHistory;

    @DatabaseField
    private Boolean foulVaginalDischarge;

    @DatabaseField
    private Integer height;

    @DatabaseField
    private Boolean historyOfTb;

    @DatabaseField
    private Boolean lactating;

    @DatabaseField
    private Date lmp;

    @DatabaseField
    private Boolean lossOfWeight;

    @DatabaseField
    private Boolean lumpInBreast;

    @DatabaseField
    private Long memberId;

    @DatabaseField
    private Boolean menopauseArrived;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private Boolean mouthOpeningDifficulty;

    @DatabaseField
    private Boolean nightSweats;

    @DatabaseField
    private Boolean nippleBloodStainedDischarge;

    @DatabaseField
    private String occupationalExposure;

    @DatabaseField
    private Boolean patchOnSkin;

    @DatabaseField
    private String physicalActivity150Min;

    @DatabaseField
    private Boolean pregnant;

    @DatabaseField
    private Boolean regularPeriods;

    @DatabaseField
    private String remarks;

    @DatabaseField
    private Integer score;

    @DatabaseField
    private Boolean sensationLossPalm;

    @DatabaseField
    private Boolean shortnessOfBreath;

    @DatabaseField
    private String smokeOrConsumeGutka;

    @DatabaseField
    private Boolean takingAntiTbDrugs;

    @DatabaseField
    private Boolean twoWeeksCoughing;

    @DatabaseField
    private Boolean twoWeeksFever;

    @DatabaseField
    private Boolean twoWeeksUlcersInMouth;

    @DatabaseField
    private Boolean underTreatementForAsthama;

    @DatabaseField
    private Boolean underTreatementForBreastCancer;

    @DatabaseField
    private Boolean underTreatementForCOPD;

    @DatabaseField
    private Boolean underTreatementForCervicalCancer;

    @DatabaseField
    private Boolean underTreatementForDiabetes;

    @DatabaseField
    private Boolean underTreatementForHeartDiseases;

    @DatabaseField
    private Boolean underTreatementForHypertension;

    @DatabaseField
    private Boolean underTreatementForKidneyFailure;

    @DatabaseField
    private Boolean underTreatementForNonHealingWound;

    @DatabaseField
    private Boolean underTreatementForOralCancer;

    @DatabaseField
    private Boolean underTreatementForStroke;

    @DatabaseField
    private String waist;

    @DatabaseField
    private Float weight;

    public Long getActualId() {
        return this.actualId;
    }

    public void setActualId(Long l) {
        this.actualId = l;
    }

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public Long getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Long l) {
        this.familyId = l;
    }

    public String getSmokeOrConsumeGutka() {
        return this.smokeOrConsumeGutka;
    }

    public void setSmokeOrConsumeGutka(String str) {
        this.smokeOrConsumeGutka = str;
    }

    public String getWaist() {
        return this.waist;
    }

    public void setWaist(String str) {
        this.waist = str;
    }

    public Boolean getConsumeAlcoholDaily() {
        return this.consumeAlcoholDaily;
    }

    public void setConsumeAlcoholDaily(Boolean bool) {
        this.consumeAlcoholDaily = bool;
    }

    public String getPhysicalActivity150Min() {
        return this.physicalActivity150Min;
    }

    public void setPhysicalActivity150Min(String str) {
        this.physicalActivity150Min = str;
    }

    public Boolean getBpDiabetesHeartHistory() {
        return this.bpDiabetesHeartHistory;
    }

    public void setBpDiabetesHeartHistory(Boolean bool) {
        this.bpDiabetesHeartHistory = bool;
    }

    public Boolean getShortnessOfBreath() {
        return this.shortnessOfBreath;
    }

    public void setShortnessOfBreath(Boolean bool) {
        this.shortnessOfBreath = bool;
    }

    public Boolean getFitsHistory() {
        return this.fitsHistory;
    }

    public void setFitsHistory(Boolean bool) {
        this.fitsHistory = bool;
    }

    public Boolean getTwoWeeksCoughing() {
        return this.twoWeeksCoughing;
    }

    public void setTwoWeeksCoughing(Boolean bool) {
        this.twoWeeksCoughing = bool;
    }

    public Boolean getMouthOpeningDifficulty() {
        return this.mouthOpeningDifficulty;
    }

    public void setMouthOpeningDifficulty(Boolean bool) {
        this.mouthOpeningDifficulty = bool;
    }

    public Boolean getBloodInSputum() {
        return this.bloodInSputum;
    }

    public void setBloodInSputum(Boolean bool) {
        this.bloodInSputum = bool;
    }

    public Boolean getTwoWeeksUlcersInMouth() {
        return this.twoWeeksUlcersInMouth;
    }

    public void setTwoWeeksUlcersInMouth(Boolean bool) {
        this.twoWeeksUlcersInMouth = bool;
    }

    public Boolean getTwoWeeksFever() {
        return this.twoWeeksFever;
    }

    public void setTwoWeeksFever(Boolean bool) {
        this.twoWeeksFever = bool;
    }

    public Boolean getChangeInToneOfVoice() {
        return this.changeInToneOfVoice;
    }

    public void setChangeInToneOfVoice(Boolean bool) {
        this.changeInToneOfVoice = bool;
    }

    public Boolean getLossOfWeight() {
        return this.lossOfWeight;
    }

    public void setLossOfWeight(Boolean bool) {
        this.lossOfWeight = bool;
    }

    public Boolean getPatchOnSkin() {
        return this.patchOnSkin;
    }

    public void setPatchOnSkin(Boolean bool) {
        this.patchOnSkin = bool;
    }

    public Boolean getNightSweats() {
        return this.nightSweats;
    }

    public void setNightSweats(Boolean bool) {
        this.nightSweats = bool;
    }

    public Boolean getTakingAntiTbDrugs() {
        return this.takingAntiTbDrugs;
    }

    public void setTakingAntiTbDrugs(Boolean bool) {
        this.takingAntiTbDrugs = bool;
    }

    public Boolean getDifficultyHoldingObjects() {
        return this.difficultyHoldingObjects;
    }

    public void setDifficultyHoldingObjects(Boolean bool) {
        this.difficultyHoldingObjects = bool;
    }

    public Boolean getSensationLossPalm() {
        return this.sensationLossPalm;
    }

    public void setSensationLossPalm(Boolean bool) {
        this.sensationLossPalm = bool;
    }

    public Boolean getFamilyMemberSufferingFromTb() {
        return this.familyMemberSufferingFromTb;
    }

    public void setFamilyMemberSufferingFromTb(Boolean bool) {
        this.familyMemberSufferingFromTb = bool;
    }

    public Boolean getHistoryOfTb() {
        return this.historyOfTb;
    }

    public void setHistoryOfTb(Boolean bool) {
        this.historyOfTb = bool;
    }

    public Boolean getLumpInBreast() {
        return this.lumpInBreast;
    }

    public void setLumpInBreast(Boolean bool) {
        this.lumpInBreast = bool;
    }

    public Boolean getBleedingAfterMenopause() {
        return this.bleedingAfterMenopause;
    }

    public void setBleedingAfterMenopause(Boolean bool) {
        this.bleedingAfterMenopause = bool;
    }

    public Boolean getNippleBloodStainedDischarge() {
        return this.nippleBloodStainedDischarge;
    }

    public void setNippleBloodStainedDischarge(Boolean bool) {
        this.nippleBloodStainedDischarge = bool;
    }

    public Boolean getBleedingAfterIntercourse() {
        return this.bleedingAfterIntercourse;
    }

    public void setBleedingAfterIntercourse(Boolean bool) {
        this.bleedingAfterIntercourse = bool;
    }

    public Boolean getChangeInSizeOfBreast() {
        return this.changeInSizeOfBreast;
    }

    public void setChangeInSizeOfBreast(Boolean bool) {
        this.changeInSizeOfBreast = bool;
    }

    public Boolean getFoulVaginalDischarge() {
        return this.foulVaginalDischarge;
    }

    public void setFoulVaginalDischarge(Boolean bool) {
        this.foulVaginalDischarge = bool;
    }

    public Boolean getBleedingBetweenPeriods() {
        return this.bleedingBetweenPeriods;
    }

    public void setBleedingBetweenPeriods(Boolean bool) {
        this.bleedingBetweenPeriods = bool;
    }

    public String getOccupationalExposure() {
        return this.occupationalExposure;
    }

    public void setOccupationalExposure(String str) {
        this.occupationalExposure = str;
    }

    public Integer getScore() {
        return this.score;
    }

    public void setScore(Integer num) {
        this.score = num;
    }

    public Integer getAgeAtMenarche() {
        return this.ageAtMenarche;
    }

    public void setAgeAtMenarche(Integer num) {
        this.ageAtMenarche = num;
    }

    public Boolean getMenopauseArrived() {
        return this.menopauseArrived;
    }

    public void setMenopauseArrived(Boolean bool) {
        this.menopauseArrived = bool;
    }

    public Integer getDurationOfMenoapuse() {
        return this.durationOfMenoapuse;
    }

    public void setDurationOfMenoapuse(Integer num) {
        this.durationOfMenoapuse = num;
    }

    public Boolean getPregnant() {
        return this.pregnant;
    }

    public void setPregnant(Boolean bool) {
        this.pregnant = bool;
    }

    public Boolean getLactating() {
        return this.lactating;
    }

    public void setLactating(Boolean bool) {
        this.lactating = bool;
    }

    public Boolean getRegularPeriods() {
        return this.regularPeriods;
    }

    public void setRegularPeriods(Boolean bool) {
        this.regularPeriods = bool;
    }

    public Date getLmp() {
        return this.lmp;
    }

    public void setLmp(Date date) {
        this.lmp = date;
    }

    public String getBleeding() {
        return this.bleeding;
    }

    public void setBleeding(String str) {
        this.bleeding = str;
    }

    public String getAssociatedWith() {
        return this.associatedWith;
    }

    public void setAssociatedWith(String str) {
        this.associatedWith = str;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public void setRemarks(String str) {
        this.remarks = str;
    }

    public Boolean getDiagnosedForHypertension() {
        return this.diagnosedForHypertension;
    }

    public void setDiagnosedForHypertension(Boolean bool) {
        this.diagnosedForHypertension = bool;
    }

    public Boolean getUnderTreatementForHypertension() {
        return this.underTreatementForHypertension;
    }

    public void setUnderTreatementForHypertension(Boolean bool) {
        this.underTreatementForHypertension = bool;
    }

    public Boolean getDiagnosedForDiabetes() {
        return this.diagnosedForDiabetes;
    }

    public void setDiagnosedForDiabetes(Boolean bool) {
        this.diagnosedForDiabetes = bool;
    }

    public Boolean getUnderTreatementForDiabetes() {
        return this.underTreatementForDiabetes;
    }

    public void setUnderTreatementForDiabetes(Boolean bool) {
        this.underTreatementForDiabetes = bool;
    }

    public Boolean getDiagnosedForHeartDiseases() {
        return this.diagnosedForHeartDiseases;
    }

    public void setDiagnosedForHeartDiseases(Boolean bool) {
        this.diagnosedForHeartDiseases = bool;
    }

    public Boolean getUnderTreatementForHeartDiseases() {
        return this.underTreatementForHeartDiseases;
    }

    public void setUnderTreatementForHeartDiseases(Boolean bool) {
        this.underTreatementForHeartDiseases = bool;
    }

    public Boolean getDiagnosedForStroke() {
        return this.diagnosedForStroke;
    }

    public void setDiagnosedForStroke(Boolean bool) {
        this.diagnosedForStroke = bool;
    }

    public Boolean getUnderTreatementForStroke() {
        return this.underTreatementForStroke;
    }

    public void setUnderTreatementForStroke(Boolean bool) {
        this.underTreatementForStroke = bool;
    }

    public Boolean getDiagnosedForKidneyFailure() {
        return this.diagnosedForKidneyFailure;
    }

    public void setDiagnosedForKidneyFailure(Boolean bool) {
        this.diagnosedForKidneyFailure = bool;
    }

    public Boolean getUnderTreatementForKidneyFailure() {
        return this.underTreatementForKidneyFailure;
    }

    public void setUnderTreatementForKidneyFailure(Boolean bool) {
        this.underTreatementForKidneyFailure = bool;
    }

    public Boolean getDiagnosedForNonHealingWound() {
        return this.diagnosedForNonHealingWound;
    }

    public void setDiagnosedForNonHealingWound(Boolean bool) {
        this.diagnosedForNonHealingWound = bool;
    }

    public Boolean getUnderTreatementForNonHealingWound() {
        return this.underTreatementForNonHealingWound;
    }

    public void setUnderTreatementForNonHealingWound(Boolean bool) {
        this.underTreatementForNonHealingWound = bool;
    }

    public Boolean getDiagnosedForCOPD() {
        return this.diagnosedForCOPD;
    }

    public void setDiagnosedForCOPD(Boolean bool) {
        this.diagnosedForCOPD = bool;
    }

    public Boolean getUnderTreatementForCOPD() {
        return this.underTreatementForCOPD;
    }

    public void setUnderTreatementForCOPD(Boolean bool) {
        this.underTreatementForCOPD = bool;
    }

    public Boolean getDiagnosedForAsthama() {
        return this.diagnosedForAsthama;
    }

    public void setDiagnosedForAsthama(Boolean bool) {
        this.diagnosedForAsthama = bool;
    }

    public Boolean getUnderTreatementForAsthama() {
        return this.underTreatementForAsthama;
    }

    public void setUnderTreatementForAsthama(Boolean bool) {
        this.underTreatementForAsthama = bool;
    }

    public Boolean getDiagnosedForOralCancer() {
        return this.diagnosedForOralCancer;
    }

    public void setDiagnosedForOralCancer(Boolean bool) {
        this.diagnosedForOralCancer = bool;
    }

    public Boolean getUnderTreatementForOralCancer() {
        return this.underTreatementForOralCancer;
    }

    public void setUnderTreatementForOralCancer(Boolean bool) {
        this.underTreatementForOralCancer = bool;
    }

    public Boolean getDiagnosedForBreastCancer() {
        return this.diagnosedForBreastCancer;
    }

    public void setDiagnosedForBreastCancer(Boolean bool) {
        this.diagnosedForBreastCancer = bool;
    }

    public Boolean getUnderTreatementForBreastCancer() {
        return this.underTreatementForBreastCancer;
    }

    public void setUnderTreatementForBreastCancer(Boolean bool) {
        this.underTreatementForBreastCancer = bool;
    }

    public Boolean getDiagnosedForCervicalCancer() {
        return this.diagnosedForCervicalCancer;
    }

    public void setDiagnosedForCervicalCancer(Boolean bool) {
        this.diagnosedForCervicalCancer = bool;
    }

    public Boolean getUnderTreatementForCervicalCancer() {
        return this.underTreatementForCervicalCancer;
    }

    public void setUnderTreatementForCervicalCancer(Boolean bool) {
        this.underTreatementForCervicalCancer = bool;
    }

    public Integer getHeight() {
        return this.height;
    }

    public void setHeight(Integer num) {
        this.height = num;
    }

    public Float getWeight() {
        return this.weight;
    }

    public void setWeight(Float f) {
        this.weight = f;
    }

    public Float getBmi() {
        return this.bmi;
    }

    public void setBmi(Float f) {
        this.bmi = f;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
