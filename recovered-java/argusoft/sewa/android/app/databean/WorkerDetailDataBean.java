package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class WorkerDetailDataBean {
    private String aadharNumber;
    private String mobileNumber;
    private String name;
    private Long userId;

    public Long getUserId() {
        return this.userId;
    }

    public void setUserId(Long l) {
        this.userId = l;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public String getAadharNumber() {
        return this.aadharNumber;
    }

    public void setAadharNumber(String str) {
        this.aadharNumber = str;
    }

    public String toString() {
        return "WorkerDetailDataBean{userId=" + this.userId + ", name='" + this.name + "', mobileNumber='" + this.mobileNumber + "', aadharNumber='" + this.aadharNumber + "'}";
    }
}
