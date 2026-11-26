package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class LoggerBean extends BaseEntity {

    @DatabaseField
    private String beneficiaryName;

    @DatabaseField
    private String checkSum;

    @DatabaseField
    private Long date;

    @DatabaseField
    private String formType;

    @DatabaseField
    private String generatedId;

    @DatabaseField
    private String location;

    @DatabaseField
    private String message;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private int noOfAttempt = 0;

    @DatabaseField
    private Long notificationId;

    @DatabaseField
    private String recordUrl;

    @DatabaseField
    private String status;

    @DatabaseField
    private String taskName;

    public LoggerBean() {
    }

    public LoggerBean(String str, Long l, String str2, String str3) {
        this.checkSum = str;
        this.date = l;
        this.beneficiaryName = str2;
        this.taskName = str3;
    }

    public String getRecordUrl() {
        return this.recordUrl;
    }

    public void setRecordUrl(String str) {
        this.recordUrl = str;
    }

    public String getCheckSum() {
        return this.checkSum;
    }

    public void setCheckSum(String str) {
        this.checkSum = str;
    }

    public Long getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(Long l) {
        this.notificationId = l;
    }

    public Long getDate() {
        return this.date;
    }

    public void setDate(Long l) {
        this.date = l;
    }

    public String getBeneficiaryName() {
        return this.beneficiaryName;
    }

    public void setBeneficiaryName(String str) {
        this.beneficiaryName = str;
    }

    public String getTaskName() {
        return this.taskName;
    }

    public void setTaskName(String str) {
        this.taskName = str;
    }

    public int getNoOfAttempt() {
        return this.noOfAttempt;
    }

    public void setNoOfAttempt(int i) {
        this.noOfAttempt = i;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getFormType() {
        return this.formType;
    }

    public void setFormType(String str) {
        this.formType = str;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public String getGeneratedId() {
        return this.generatedId;
    }

    public void setGeneratedId(String str) {
        this.generatedId = str;
    }

    public String getDisplayBeneficiaryName() {
        String str = this.generatedId;
        if (str != null && !str.trim().isEmpty() && "OA_NPCB".equals(this.formType)) {
            String str2 = this.beneficiaryName;
            String strTrim = str2 != null ? str2.trim() : "";
            if (strTrim.isEmpty()) {
                return this.generatedId;
            }
            return this.generatedId + " - " + strTrim;
        }
        return this.beneficiaryName;
    }

    public String toString() {
        return "LoggerBean{checkSum=" + this.checkSum + ", notificationId=" + this.notificationId + ", date=" + this.date + ", beneficiaryName=" + this.beneficiaryName + ", taskName=" + this.taskName + ", noOfAttempt=" + this.noOfAttempt + ", status=" + this.status + ", formType=" + this.formType + ", locationId=" + this.location + "}\n";
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
