package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class AbhaConsentCheckboxModel {
    private Boolean isAadhaarSharingConsentGiven;
    private Boolean isAbhaUsageConsentGiven;
    private Boolean isAnonymizationConsentGiven;
    private Boolean isBeneficiaryConsentGiven;
    private Boolean isDocOtherThanAadhaarConsentGiven;
    private Boolean isHealthWorkerConsentGiven;
    private Boolean isSharingHealthRecordsConsentGiven;

    public Boolean getAadhaarSharingConsentGiven() {
        return this.isAadhaarSharingConsentGiven;
    }

    public void setAadhaarSharingConsentGiven(Boolean bool) {
        this.isAadhaarSharingConsentGiven = bool;
    }

    public Boolean getDocOtherThanAadhaarConsentGiven() {
        return this.isDocOtherThanAadhaarConsentGiven;
    }

    public void setDocOtherThanAadhaarConsentGiven(Boolean bool) {
        this.isDocOtherThanAadhaarConsentGiven = bool;
    }

    public Boolean getAbhaUsageConsentGiven() {
        return this.isAbhaUsageConsentGiven;
    }

    public void setAbhaUsageConsentGiven(Boolean bool) {
        this.isAbhaUsageConsentGiven = bool;
    }

    public Boolean getSharingHealthRecordsConsentGiven() {
        return this.isSharingHealthRecordsConsentGiven;
    }

    public void setSharingHealthRecordsConsentGiven(Boolean bool) {
        this.isSharingHealthRecordsConsentGiven = bool;
    }

    public Boolean getAnonymizationConsentGiven() {
        return this.isAnonymizationConsentGiven;
    }

    public void setAnonymizationConsentGiven(Boolean bool) {
        this.isAnonymizationConsentGiven = bool;
    }

    public Boolean getHealthWorkerConsentGiven() {
        return this.isHealthWorkerConsentGiven;
    }

    public void setHealthWorkerConsentGiven(Boolean bool) {
        this.isHealthWorkerConsentGiven = bool;
    }

    public Boolean getBeneficiaryConsentGiven() {
        return this.isBeneficiaryConsentGiven;
    }

    public void setBeneficiaryConsentGiven(Boolean bool) {
        this.isBeneficiaryConsentGiven = bool;
    }

    public String toString() {
        return "AbhaConsentCheckboxModel{isAadhaarSharingConsentGiven=" + this.isAadhaarSharingConsentGiven + ", isDocOtherThanAadhaarConsentGiven=" + this.isDocOtherThanAadhaarConsentGiven + ", isAbhaUsageConsentGiven=" + this.isAbhaUsageConsentGiven + ", isSharingHealthRecordsConsentGiven=" + this.isSharingHealthRecordsConsentGiven + ", isAnonymizationConsentGiven=" + this.isAnonymizationConsentGiven + ", isHealthWorkerConsentGiven=" + this.isHealthWorkerConsentGiven + ", isBeneficiaryConsentGiven=" + this.isBeneficiaryConsentGiven + '}';
    }
}
