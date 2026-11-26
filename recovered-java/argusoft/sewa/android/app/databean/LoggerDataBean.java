package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LoggerDataBean {
    private String beneficiaryName;
    private String checkSum;
    private Long date;
    private String formType;
    private int noOfAttempt = 0;
    private Long notificationId;
    private String recordUrl;
    private String status;
    private String taskName;

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

    public String toString() {
        return "LoggerBean{checkSum=" + this.checkSum + ", notificationId=" + this.notificationId + ", date=" + this.date + ", beneficiaryName=" + this.beneficiaryName + ", taskName=" + this.taskName + ", noOfAttempt=" + this.noOfAttempt + ", status=" + this.status + ", formType=" + this.formType + '}';
    }
}
