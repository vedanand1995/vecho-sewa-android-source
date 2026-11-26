package com.argusoft.sewa.android.app.morbidities.beans;

import java.util.List;

/* loaded from: classes.dex */
public class DataBeanToIdentifyPNCMorbidities {
    private String abdomen;
    private Boolean abnormalTalkOrBehaviourOrMoodChanges;
    private Long ageOfChild;
    private Boolean anyDifficultyInBreastfeeding;
    private List<String> anySkinProblems;
    private Boolean areBabyHandsAndFeetColdToTouch;
    private Boolean babyHasWateryOrLooseMotion;
    private Boolean chestIndrawing;
    private String consciousness;
    private String cry;
    private Long deliveryDate;
    private String doesBabyChinTouchTheBreast;
    private List<String> doesMotherHaveAnyOfFollowingOnBREAST;
    private List<String> doesMotherHaveAnyOfFollowingProblems;
    private Boolean feverForMother;
    private Boolean foulSmellingDischarge;
    private Boolean hasHeadacheWithVisualDisturbances;
    private String howAreBabyEyes;
    private String howIsBabyCry;
    private String howIsBabySuckling;
    private List<String> howIsTheSkinOfTheBaby;
    private String howsTheBabyConsciousness;
    private String isAreolaMoreAboveTheMouthAndLessBeneathTheMouth;
    private boolean isChildFirstPncDone;
    private String isLowerLipTurnedOutward;
    private String isMouthWidelyOpen;
    private List<String> isThereBleedingFromAnyPartOfTheBody;
    private Long lmpDate;
    private Float newBornWeight;
    private Integer noOfPadsChangedIn24Hours;
    private Integer rateOfRespiration;
    private Boolean skinPustules;
    private Float temperature;
    private String umbilicus;
    private String wasBabyFedLessThanUsual;
    private Float weightOfChild;
    private String whenDidBabyCry;
    private String whetherBabyLimbsAndNeckMoreLimpThanBefore;
    private Boolean whetherBabyVomits;
    private String healthId = "";
    private String beneficiaryName = "";
    private String beneficiaryType = "";
    private boolean isBeneficiaryAlive = true;
    private boolean whetherBabyLimbsNeckLastState = false;
    private boolean anyDifficultyInBreastfeedingLastStatus = false;
    private boolean whetherBabyFedLessLastStatus = false;
    private boolean howIsBabySucklingLastStatus = false;
    private boolean howIsBabyCryLastStatus = false;

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public Float getNewBornWeight() {
        return this.newBornWeight;
    }

    public void setNewBornWeight(Float f) {
        this.newBornWeight = f;
    }

    public boolean getWhetherBabyLimbsNeckLastState() {
        return this.whetherBabyLimbsNeckLastState;
    }

    public void setWhetherBabyLimbsNeckLastState(boolean z) {
        this.whetherBabyLimbsNeckLastState = z;
    }

    public boolean getAnyDifficultyInBreastfeedingLastStatus() {
        return this.anyDifficultyInBreastfeedingLastStatus;
    }

    public void setAnyDifficultyInBreastfeedingLastStatus(boolean z) {
        this.anyDifficultyInBreastfeedingLastStatus = z;
    }

    public boolean getWhetherBabyFedLessLastStatus() {
        return this.whetherBabyFedLessLastStatus;
    }

    public void setWhetherBabyFedLessLastStatus(boolean z) {
        this.whetherBabyFedLessLastStatus = z;
    }

    public boolean getHowIsBabySucklingLastStatus() {
        return this.howIsBabySucklingLastStatus;
    }

    public void setHowIsBabySucklingLastStatus(boolean z) {
        this.howIsBabySucklingLastStatus = z;
    }

    public boolean getHowIsBabyCryLastStatus() {
        return this.howIsBabyCryLastStatus;
    }

    public void setHowIsBabyCryLastStatus(boolean z) {
        this.howIsBabyCryLastStatus = z;
    }

    public String getWhetherBabyLimbsAndNeckMoreLimpThanBefore() {
        return this.whetherBabyLimbsAndNeckMoreLimpThanBefore;
    }

    public void setWhetherBabyLimbsAndNeckMoreLimpThanBefore(String str) {
        this.whetherBabyLimbsAndNeckMoreLimpThanBefore = str;
    }

    public String getHowAreBabyEyes() {
        return this.howAreBabyEyes;
    }

    public void setHowAreBabyEyes(String str) {
        this.howAreBabyEyes = str;
    }

    public String getDoesBabyChinTouchTheBreast() {
        return this.doesBabyChinTouchTheBreast;
    }

    public void setDoesBabyChinTouchTheBreast(String str) {
        this.doesBabyChinTouchTheBreast = str;
    }

    public String getIsMouthWidelyOpen() {
        return this.isMouthWidelyOpen;
    }

    public void setIsMouthWidelyOpen(String str) {
        this.isMouthWidelyOpen = str;
    }

    public String getIsLowerLipTurnedOutward() {
        return this.isLowerLipTurnedOutward;
    }

    public void setIsLowerLipTurnedOutward(String str) {
        this.isLowerLipTurnedOutward = str;
    }

    public String getIsAreolaMoreAboveTheMouthAndLessBeneathTheMouth() {
        return this.isAreolaMoreAboveTheMouthAndLessBeneathTheMouth;
    }

    public void setIsAreolaMoreAboveTheMouthAndLessBeneathTheMouth(String str) {
        this.isAreolaMoreAboveTheMouthAndLessBeneathTheMouth = str;
    }

    public Long getDeliveryDate() {
        return this.deliveryDate;
    }

    public void setDeliveryDate(Long l) {
        this.deliveryDate = l;
    }

    public Long getLmpDate() {
        return this.lmpDate;
    }

    public void setLmpDate(Long l) {
        this.lmpDate = l;
    }

    public boolean getIsChildFirstPncDone() {
        return this.isChildFirstPncDone;
    }

    public void setIsChildFirstPncDone(boolean z) {
        this.isChildFirstPncDone = z;
    }

    public List<String> getDoesMotherHaveAnyOfFollowingOnBREAST() {
        return this.doesMotherHaveAnyOfFollowingOnBREAST;
    }

    public void setDoesMotherHaveAnyOfFollowingOnBREAST(List<String> list) {
        this.doesMotherHaveAnyOfFollowingOnBREAST = list;
    }

    public List<String> getAnySkinProblems() {
        return this.anySkinProblems;
    }

    public void setAnySkinProblems(List<String> list) {
        this.anySkinProblems = list;
    }

    public boolean getIsBeneficiaryAlive() {
        return this.isBeneficiaryAlive;
    }

    public void setIsBeneficiaryAlive(boolean z) {
        this.isBeneficiaryAlive = z;
    }

    public String getBeneficiaryName() {
        return this.beneficiaryName;
    }

    public void setBeneficiaryName(String str) {
        this.beneficiaryName = str;
    }

    public String getBeneficiaryType() {
        return this.beneficiaryType;
    }

    public void setBeneficiaryType(String str) {
        this.beneficiaryType = str;
    }

    public Boolean getBabyHasWateryOrLooseMotion() {
        return this.babyHasWateryOrLooseMotion;
    }

    public void setBabyHasWateryOrLooseMotion(Boolean bool) {
        this.babyHasWateryOrLooseMotion = bool;
    }

    public List<String> getHowIsTheSkinOfTheBaby() {
        return this.howIsTheSkinOfTheBaby;
    }

    public void setHowIsTheSkinOfTheBaby(List<String> list) {
        this.howIsTheSkinOfTheBaby = list;
    }

    public List<String> getIsThereBleedingFromAnyPartOfTheBody() {
        return this.isThereBleedingFromAnyPartOfTheBody;
    }

    public void setIsThereBleedingFromAnyPartOfTheBody(List<String> list) {
        this.isThereBleedingFromAnyPartOfTheBody = list;
    }

    public Integer getNoOfPadsChangedIn24Hours() {
        return this.noOfPadsChangedIn24Hours;
    }

    public void setNoOfPadsChangedIn24Hours(Integer num) {
        this.noOfPadsChangedIn24Hours = num;
    }

    public Boolean getFoulSmellingDischarge() {
        return this.foulSmellingDischarge;
    }

    public void setFoulSmellingDischarge(Boolean bool) {
        this.foulSmellingDischarge = bool;
    }

    public Boolean getFeverForMother() {
        return this.feverForMother;
    }

    public void setFeverForMother(Boolean bool) {
        this.feverForMother = bool;
    }

    public Boolean getAbnormalTalkOrBehaviourOrMoodChanges() {
        return this.abnormalTalkOrBehaviourOrMoodChanges;
    }

    public void setAbnormalTalkOrBehaviourOrMoodChanges(Boolean bool) {
        this.abnormalTalkOrBehaviourOrMoodChanges = bool;
    }

    public Boolean getHasHeadacheWithVisualDisturbances() {
        return this.hasHeadacheWithVisualDisturbances;
    }

    public void setHasHeadacheWithVisualDisturbances(Boolean bool) {
        this.hasHeadacheWithVisualDisturbances = bool;
    }

    public Float getTemperature() {
        return this.temperature;
    }

    public void setTemperature(Float f) {
        this.temperature = f;
    }

    public Integer getRateOfRespiration() {
        return this.rateOfRespiration;
    }

    public void setRateOfRespiration(Integer num) {
        this.rateOfRespiration = num;
    }

    public Boolean getSkinPustules() {
        return this.skinPustules;
    }

    public void setSkinPustules(Boolean bool) {
        this.skinPustules = bool;
    }

    public String getUmbilicus() {
        return this.umbilicus;
    }

    public void setUmbilicus(String str) {
        this.umbilicus = str;
    }

    public String getWhenDidBabyCry() {
        return this.whenDidBabyCry;
    }

    public void setWhenDidBabyCry(String str) {
        this.whenDidBabyCry = str;
    }

    public Boolean getAnyDifficultyInBreastfeeding() {
        return this.anyDifficultyInBreastfeeding;
    }

    public void setAnyDifficultyInBreastfeeding(Boolean bool) {
        this.anyDifficultyInBreastfeeding = bool;
    }

    public Long getAgeOfChild() {
        return this.ageOfChild;
    }

    public void setAgeOfChild(Long l) {
        this.ageOfChild = l;
    }

    public Float getWeightOfChild() {
        return this.weightOfChild;
    }

    public void setWeightOfChild(Float f) {
        this.weightOfChild = f;
    }

    public String getHowsTheBabyConsciousness() {
        return this.howsTheBabyConsciousness;
    }

    public void setHowsTheBabyConsciousness(String str) {
        this.howsTheBabyConsciousness = str;
    }

    public String getConsciousness() {
        return this.consciousness;
    }

    public void setConsciousness(String str) {
        this.consciousness = str;
    }

    public String getWasBabyFedLessThanUsual() {
        return this.wasBabyFedLessThanUsual;
    }

    public void setWasBabyFedLessThanUsual(String str) {
        this.wasBabyFedLessThanUsual = str;
    }

    public String getHowIsBabySuckling() {
        return this.howIsBabySuckling;
    }

    public void setHowIsBabySuckling(String str) {
        this.howIsBabySuckling = str;
    }

    public String getHowIsBabyCry() {
        return this.howIsBabyCry;
    }

    public void setHowIsBabyCry(String str) {
        this.howIsBabyCry = str;
    }

    public String getCry() {
        return this.cry;
    }

    public void setCry(String str) {
        this.cry = str;
    }

    public Boolean getAreBabyHandsAndFeetColdToTouch() {
        return this.areBabyHandsAndFeetColdToTouch;
    }

    public void setAreBabyHandsAndFeetColdToTouch(Boolean bool) {
        this.areBabyHandsAndFeetColdToTouch = bool;
    }

    public String getAbdomen() {
        return this.abdomen;
    }

    public void setAbdomen(String str) {
        this.abdomen = str;
    }

    public Boolean getChestIndrawing() {
        return this.chestIndrawing;
    }

    public void setChestIndrawing(Boolean bool) {
        this.chestIndrawing = bool;
    }

    public Boolean getWhetherBabyVomits() {
        return this.whetherBabyVomits;
    }

    public void setWhetherBabyVomits(Boolean bool) {
        this.whetherBabyVomits = bool;
    }

    public List<String> getDoesMotherHaveAnyOfFollowingProblems() {
        return this.doesMotherHaveAnyOfFollowingProblems;
    }

    public void setDoesMotherHaveAnyOfFollowingProblems(List<String> list) {
        this.doesMotherHaveAnyOfFollowingProblems = list;
    }

    public String toString() {
        return "DataBeanToIdentifyPNCMorbidities{healthId='" + this.healthId + "', beneficiaryName='" + this.beneficiaryName + "', beneficiaryType='" + this.beneficiaryType + "', isChildFirstPncDone=" + this.isChildFirstPncDone + ", isBeneficiaryAlive=" + this.isBeneficiaryAlive + ", babyHasWateryOrLooseMotion=" + this.babyHasWateryOrLooseMotion + ", noOfPadsChangedIn24Hours=" + this.noOfPadsChangedIn24Hours + ", foulSmellingDischarge=" + this.foulSmellingDischarge + ", feverForMother=" + this.feverForMother + ", abnormalTalkOrBehaviourOrMoodChanges=" + this.abnormalTalkOrBehaviourOrMoodChanges + ", hasHeadacheWithVisualDisturbances=" + this.hasHeadacheWithVisualDisturbances + ", anyDifficultyInBreastfeeding=" + this.anyDifficultyInBreastfeeding + ", areBabyHandsAndFeetColdToTouch=" + this.areBabyHandsAndFeetColdToTouch + ", temperature=" + this.temperature + ", rateOfRespiration=" + this.rateOfRespiration + ", howIsTheSkinOfTheBaby=" + this.howIsTheSkinOfTheBaby + ", isThereBleedingFromAnyPartOfTheBody=" + this.isThereBleedingFromAnyPartOfTheBody + ", skinPustules=" + this.skinPustules + ", umbilicus='" + this.umbilicus + "', whenDidBabyCry='" + this.whenDidBabyCry + "', doesMotherHaveAnyOfFollowingProblems=" + this.doesMotherHaveAnyOfFollowingProblems + ", ageOfChild=" + this.ageOfChild + ", weightOfChild=" + this.weightOfChild + ", howsTheBabyConsciousness='" + this.howsTheBabyConsciousness + "', consciousness='" + this.consciousness + "', wasBabyFedLessThanUsual='" + this.wasBabyFedLessThanUsual + "', howIsBabySuckling='" + this.howIsBabySuckling + "', howIsBabyCry='" + this.howIsBabyCry + "', cry='" + this.cry + "', abdomen='" + this.abdomen + "', chestIndrawing=" + this.chestIndrawing + ", whetherBabyVomits=" + this.whetherBabyVomits + ", anySkinProblems=" + this.anySkinProblems + ", doesMotherHaveAnyOfFollowingOnBREAST=" + this.doesMotherHaveAnyOfFollowingOnBREAST + ", deliveryDate=" + this.deliveryDate + ", lmpDate=" + this.lmpDate + ", doesBabyChinTouchTheBreast='" + this.doesBabyChinTouchTheBreast + "', isMouthWidelyOpen='" + this.isMouthWidelyOpen + "', isLowerLipTurnedOutward='" + this.isLowerLipTurnedOutward + "', isAreolaMoreAboveTheMouthAndLessBeneathTheMouth='" + this.isAreolaMoreAboveTheMouthAndLessBeneathTheMouth + "', howAreBabyEyes='" + this.howAreBabyEyes + "', whetherBabyLimbsAndNeckMoreLimpThanBefore='" + this.whetherBabyLimbsAndNeckMoreLimpThanBefore + "', whetherBabyLimbsNeckLastState=" + this.whetherBabyLimbsNeckLastState + ", anyDifficultyInBreastfeedingLastStatus=" + this.anyDifficultyInBreastfeedingLastStatus + ", whetherBabyFedLessLastStatus=" + this.whetherBabyFedLessLastStatus + ", howIsBabySucklingLastStatus=" + this.howIsBabySucklingLastStatus + ", howIsBabyCryLastStatus=" + this.howIsBabyCryLastStatus + ", newBornWeight=" + this.newBornWeight + '}';
    }
}
