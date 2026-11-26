package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class NotificationBean extends BaseEntity {

    @DatabaseField
    private Long ashaId;

    @DatabaseField
    private String ashaName;

    @DatabaseField
    private Long beneficiaryId;

    @DatabaseField
    private String beneficiaryName;

    @DatabaseField
    private String customField;

    @DatabaseField
    private Date dateOfNotification;

    @DatabaseField
    private String diagnosisDate;

    @DatabaseField
    private Date expectedDueDate;

    @DatabaseField
    private String expectedDueDateString;

    @DatabaseField
    private Date expiryDate;

    @DatabaseField(index = true)
    private Long familyId;

    @DatabaseField
    private String header;

    @DatabaseField(index = true)
    private Long locationId;

    @DatabaseField(index = true)
    private Long memberId;

    @DatabaseField
    private Long migrationId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private int noOfNotificationType;

    @DatabaseField
    private String notificationCode;

    @DatabaseField
    private Long notificationId;

    @DatabaseField
    private String notificationOf;

    @DatabaseField
    private String otherDetails;

    @DatabaseField
    private Long overDueDate;

    @DatabaseField
    private Boolean overdueFlag;

    @DatabaseField
    private String positiveFindings;

    @DatabaseField
    private Date scheduledDate;

    @DatabaseField
    private boolean skipNotification;

    @DatabaseField
    private String state;

    public String getPositiveFindings() {
        return this.positiveFindings;
    }

    public void setPositiveFindings(String str) {
        this.positiveFindings = str;
    }

    public Date getExpectedDueDate() {
        return this.expectedDueDate;
    }

    public void setExpectedDueDate(Date date) {
        this.expectedDueDate = date;
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

    public Long getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(Long l) {
        this.notificationId = l;
    }

    public String getNotificationCode() {
        return this.notificationCode;
    }

    public void setNotificationCode(String str) {
        this.notificationCode = str;
    }

    public Long getBeneficiaryId() {
        return this.beneficiaryId;
    }

    public void setBeneficiaryId(Long l) {
        this.beneficiaryId = l;
    }

    public String getBeneficiaryName() {
        return this.beneficiaryName;
    }

    public void setBeneficiaryName(String str) {
        this.beneficiaryName = str;
    }

    public Date getDateOfNotification() {
        return this.dateOfNotification;
    }

    public void setDateOfNotification(Date date) {
        this.dateOfNotification = date;
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

    public int getNoOfNotificationType() {
        return this.noOfNotificationType;
    }

    public void setNoOfNotificationType(int i) {
        this.noOfNotificationType = i;
    }

    public boolean isSkipNotification() {
        return this.skipNotification;
    }

    public void setSkipNotification(boolean z) {
        this.skipNotification = z;
    }

    public String getNotificationOf() {
        return this.notificationOf;
    }

    public void setNotificationOf(String str) {
        this.notificationOf = str;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Date getExpiryDate() {
        return this.expiryDate;
    }

    public void setExpiryDate(Date date) {
        this.expiryDate = date;
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

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
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

    public Date getScheduledDate() {
        return this.scheduledDate;
    }

    public void setScheduledDate(Date date) {
        this.scheduledDate = date;
    }

    public String toString() {
        return "NotificationBean{notificationId=" + this.notificationId + ", dateOfNotification=" + this.dateOfNotification + ", notificationCode=" + this.notificationCode + ", beneficiaryId=" + this.beneficiaryId + ", beneficiaryName=" + this.beneficiaryName + ", expectedDueDateString=" + this.expectedDueDateString + ", overdueFlag=" + this.overdueFlag + ", noOfNotificationType=" + this.noOfNotificationType + ", skipNotification=" + this.skipNotification + ", notificationOf=" + this.notificationOf + '}';
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
