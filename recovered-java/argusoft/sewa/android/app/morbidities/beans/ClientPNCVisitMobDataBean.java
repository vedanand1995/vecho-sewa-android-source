package com.argusoft.sewa.android.app.morbidities.beans;

import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class ClientPNCVisitMobDataBean {
    private Boolean abnormalBehaviourFlag;
    private Boolean bleedingFlag;
    private String breastProblemFlag;
    private Boolean breastfeedingDifficultyFlag;
    private long byUser;
    private List<ChildPNCVisitMobDataBean> childPNCVisitMobDataBeans;
    private long client;
    private Date createdOn;
    private Boolean familyFlag;
    private Boolean feverFlag;
    private Boolean foulSmellFlag;
    private Boolean headacheFlag;
    private String healthId;
    private Long id;
    private String imageName;
    private Boolean isActive;
    private Boolean isArchive;
    private Boolean isInterimVisit;
    private Boolean isMotherAlive;
    private String lastModifiedBy;
    private Date lastModifiedOn;
    private String motherName;
    private Integer padsCount;
    private String pcmTabletStatus;
    private Boolean presentFlag;
    private String problemPresent;
    private Boolean sleepFlag;
    private Boolean startIfaFlag;

    public Boolean getIsMotherAlive() {
        return this.isMotherAlive;
    }

    public void setIsMotherAlive(Boolean bool) {
        this.isMotherAlive = bool;
    }

    public List<ChildPNCVisitMobDataBean> getChildPNCVisitMobDataBeans() {
        return this.childPNCVisitMobDataBeans;
    }

    public void setChildPNCVisitMobDataBeans(List<ChildPNCVisitMobDataBean> list) {
        this.childPNCVisitMobDataBeans = list;
    }

    public Boolean getAbnormalBehaviourFlag() {
        return this.abnormalBehaviourFlag;
    }

    public void setAbnormalBehaviourFlag(Boolean bool) {
        this.abnormalBehaviourFlag = bool;
    }

    public Boolean getBleedingFlag() {
        return this.bleedingFlag;
    }

    public void setBleedingFlag(Boolean bool) {
        this.bleedingFlag = bool;
    }

    public String getBreastProblemFlag() {
        return this.breastProblemFlag;
    }

    public void setBreastProblemFlag(String str) {
        this.breastProblemFlag = str;
    }

    public Boolean getBreastfeedingDifficultyFlag() {
        return this.breastfeedingDifficultyFlag;
    }

    public void setBreastfeedingDifficultyFlag(Boolean bool) {
        this.breastfeedingDifficultyFlag = bool;
    }

    public long getByUser() {
        return this.byUser;
    }

    public void setByUser(long j) {
        this.byUser = j;
    }

    public long getClient() {
        return this.client;
    }

    public void setClient(long j) {
        this.client = j;
    }

    public Date getCreatedOn() {
        return this.createdOn;
    }

    public void setCreatedOn(Date date) {
        this.createdOn = date;
    }

    public Boolean getFamilyFlag() {
        return this.familyFlag;
    }

    public void setFamilyFlag(Boolean bool) {
        this.familyFlag = bool;
    }

    public Boolean getFeverFlag() {
        return this.feverFlag;
    }

    public void setFeverFlag(Boolean bool) {
        this.feverFlag = bool;
    }

    public Boolean getFoulSmellFlag() {
        return this.foulSmellFlag;
    }

    public void setFoulSmellFlag(Boolean bool) {
        this.foulSmellFlag = bool;
    }

    public Boolean getHeadacheFlag() {
        return this.headacheFlag;
    }

    public void setHeadacheFlag(Boolean bool) {
        this.headacheFlag = bool;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public String getImageName() {
        return this.imageName;
    }

    public void setImageName(String str) {
        this.imageName = str;
    }

    public Boolean isIsActive() {
        return this.isActive;
    }

    public void setIsActive(Boolean bool) {
        this.isActive = bool;
    }

    public Boolean isIsArchive() {
        return this.isArchive;
    }

    public void setIsArchive(Boolean bool) {
        this.isArchive = bool;
    }

    public Boolean getIsInterimVisit() {
        return this.isInterimVisit;
    }

    public void setIsInterimVisit(Boolean bool) {
        this.isInterimVisit = bool;
    }

    public String getLastModifiedBy() {
        return this.lastModifiedBy;
    }

    public void setLastModifiedBy(String str) {
        this.lastModifiedBy = str;
    }

    public Date getLastModifiedOn() {
        return this.lastModifiedOn;
    }

    public void setLastModifiedOn(Date date) {
        this.lastModifiedOn = date;
    }

    public Integer getPadsCount() {
        return this.padsCount;
    }

    public void setPadsCount(Integer num) {
        this.padsCount = num;
    }

    public String getPcmTabletStatus() {
        return this.pcmTabletStatus;
    }

    public void setPcmTabletStatus(String str) {
        this.pcmTabletStatus = str;
    }

    public Boolean getPresentFlag() {
        return this.presentFlag;
    }

    public void setPresentFlag(Boolean bool) {
        this.presentFlag = bool;
    }

    public String getProblemPresent() {
        return this.problemPresent;
    }

    public void setProblemPresent(String str) {
        this.problemPresent = str;
    }

    public Boolean getSleepFlag() {
        return this.sleepFlag;
    }

    public void setSleepFlag(Boolean bool) {
        this.sleepFlag = bool;
    }

    public Boolean getStartIfaFlag() {
        return this.startIfaFlag;
    }

    public void setStartIfaFlag(Boolean bool) {
        this.startIfaFlag = bool;
    }

    public String getMotherName() {
        return this.motherName;
    }

    public void setMotherName(String str) {
        this.motherName = str;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String toString() {
        return "ClientPNCVisitMobDataBean{id=" + this.id + ", client=" + this.client + ", presentFlag=" + this.presentFlag + ", familyFlag=" + this.familyFlag + ", pcmTabletStatus=" + this.pcmTabletStatus + ", startIfaFlag=" + this.startIfaFlag + ", bleedingFlag=" + this.bleedingFlag + ", padsCount=" + this.padsCount + ", foulSmellFlag=" + this.foulSmellFlag + ", sleepFlag=" + this.sleepFlag + ", abnormalBehaviourFlag=" + this.abnormalBehaviourFlag + ", feverFlag=" + this.feverFlag + ", headacheFlag=" + this.headacheFlag + ", breastfeedingDifficultyFlag=" + this.breastfeedingDifficultyFlag + ", problemPresent=" + this.problemPresent + ", breastProblemFlag=" + this.breastProblemFlag + ", isActive=" + this.isActive + ", isArchive=" + this.isArchive + ", lastModifiedBy=" + this.lastModifiedBy + ", createdOn=" + this.createdOn + ", imageName=" + this.imageName + ", isInterimVisit=" + this.isInterimVisit + ", lastModifiedOn=" + this.lastModifiedOn + ", byUser=" + this.byUser + ", childPNCVisitMobDataBeans=" + this.childPNCVisitMobDataBeans + ", motherName=" + this.motherName + '}';
    }
}
