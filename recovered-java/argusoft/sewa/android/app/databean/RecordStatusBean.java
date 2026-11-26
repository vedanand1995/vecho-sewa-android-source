package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class RecordStatusBean {
    private String checksum;
    private String generatedId;
    private String message;
    private String status;

    public String getChecksum() {
        return this.checksum;
    }

    public void setChecksum(String str) {
        this.checksum = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getGeneratedId() {
        return this.generatedId;
    }

    public void setGeneratedId(String str) {
        this.generatedId = str;
    }

    public String toString() {
        return "RecordStatusBean{checksum='" + this.checksum + "', status='" + this.status + "', message='" + this.message + "', generatedId='" + this.generatedId + "'}";
    }
}
