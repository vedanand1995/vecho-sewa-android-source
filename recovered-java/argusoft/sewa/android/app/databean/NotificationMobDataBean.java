package com.argusoft.sewa.android.app.databean;

import java.io.Serializable;

/* loaded from: classes.dex */
public class NotificationMobDataBean implements Serializable {
    private Long ashaId;
    private String ashaName;
    private Long beneficiaryId;
    private String beneficiaryName;
    private String customField;
    private String diagnosisDate;
    private Long expectedDueDate;
    private String expectedDueDateString;
    private Long expiryDate;
    private Long familyId;
    private String header;
    private Long id;
    private Boolean isChild;
    private Long locationId;
    private Long memberId;
    private String memberUniqueId;
    private Long migrationId;
    private Long modifiedOn;
    private int noOfNotificationType;
    private String otherDetails;
    private Long overDueDate;
    private Boolean overdueFlag;
    private String positiveFindings;
    private Long scheduledDate;
    private String state;
    private String task;

    public String getPositiveFindings() {
        return this.positiveFindings;
    }

    public void setPositiveFindings(String str) {
        this.positiveFindings = str;
    }

    public String getDiagnosisDate() {
        return this.diagnosisDate;
    }

    public void setDiagnosisDate(String str) {
        this.diagnosisDate = str;
    }

    public Long getOverDueDate() {
        return this.overDueDate;
    }

    public void setOverDueDate(Long l) {
        this.overDueDate = l;
    }

    public String getCustomField() {
        return this.customField;
    }

    public void setCustomField(String str) {
        this.customField = str;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public int getNoOfNotificationType() {
        return this.noOfNotificationType;
    }

    public void setNoOfNotificationType(int i) {
        this.noOfNotificationType = i;
    }

    public Boolean getIsChild() {
        return this.isChild;
    }

    public void setIsChild(Boolean bool) {
        this.isChild = bool;
    }

    public String getExpectedDueDateString() {
        return this.expectedDueDateString;
    }

    public void setExpectedDueDateString(String str) {
        this.expectedDueDateString = str;
    }

    public Boolean getOverdueFlag() {
        return this.overdueFlag;
    }

    public void setOverdueFlag(Boolean bool) {
        this.overdueFlag = bool;
    }

    public Long getAshaId() {
        return this.ashaId;
    }

    public void setAshaId(Long l) {
        this.ashaId = l;
    }

    public String getAshaName() {
        return this.ashaName;
    }

    public void setAshaName(String str) {
        this.ashaName = str;
    }

    public String getTask() {
        return this.task;
    }

    public void setTask(String str) {
        this.task = str;
    }

    public Long getExpectedDueDate() {
        return this.expectedDueDate;
    }

    public void setExpectedDueDate(Long l) {
        this.expectedDueDate = l;
    }

    public String getBeneficiaryName() {
        return this.beneficiaryName;
    }

    public void setBeneficiaryName(String str) {
        this.beneficiaryName = str;
    }

    public Long getBeneficiaryId() {
        return this.beneficiaryId;
    }

    public void setBeneficiaryId(Long l) {
        this.beneficiaryId = l;
    }

    public Long getExpiryDate() {
        return this.expiryDate;
    }

    public void setExpiryDate(Long l) {
        this.expiryDate = l;
    }

    public Long getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Long l) {
        this.locationId = l;
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

    public String getOtherDetails() {
        return this.otherDetails;
    }

    public void setOtherDetails(String str) {
        this.otherDetails = str;
    }

    public Long getMigrationId() {
        return this.migrationId;
    }

    public void setMigrationId(Long l) {
        this.migrationId = l;
    }

    public Long getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Long l) {
        this.modifiedOn = l;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getHeader() {
        return this.header;
    }

    public void setHeader(String str) {
        this.header = str;
    }

    public Long getScheduledDate() {
        return this.scheduledDate;
    }

    public void setScheduledDate(Long l) {
        this.scheduledDate = l;
    }

    public String getMemberUniqueId() {
        return this.memberUniqueId;
    }

    public void setMemberUniqueId(String str) {
        this.memberUniqueId = str;
    }

    public String toString() {
        return "NotificationMobDataBean{id=" + this.id + ", ashaId=" + this.ashaId + ", ashaName='" + this.ashaName + "', beneficiaryName='" + this.beneficiaryName + "', beneficiaryId=" + this.beneficiaryId + ", noOfNotificationType=" + this.noOfNotificationType + ", task='" + this.task + "', expectedDueDate=" + this.expectedDueDate + ", expectedDueDateString='" + this.expectedDueDateString + "', overdueFlag=" + this.overdueFlag + ", isChild=" + this.isChild + ", customField='" + this.customField + "', overDueDate=" + this.overDueDate + ", diagnosisDate='" + this.diagnosisDate + "', positiveFindings='" + this.positiveFindings + "', expiryDate=" + this.expiryDate + ", locationId=" + this.locationId + ", memberId=" + this.memberId + ", familyId=" + this.familyId + ", otherDetails='" + this.otherDetails + "', migrationId=" + this.migrationId + '}';
    }
}
