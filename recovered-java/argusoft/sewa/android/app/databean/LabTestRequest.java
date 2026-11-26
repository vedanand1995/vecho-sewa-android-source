package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LabTestRequest {
    private String answerString;
    private int labTestDetId;
    private String labTestVersion;
    private String token;

    public LabTestRequest(String str, int i, String str2, String str3) {
        this.answerString = str;
        this.labTestDetId = i;
        this.labTestVersion = str2;
        this.token = str3;
    }

    public String getAnswerString() {
        return this.answerString;
    }

    public void setAnswerString(String str) {
        this.answerString = str;
    }

    public int getLabTestDetId() {
        return this.labTestDetId;
    }

    public void setLabTestDetId(int i) {
        this.labTestDetId = i;
    }

    public String getLabTestVersion() {
        return this.labTestVersion;
    }

    public void setLabTestVersion(String str) {
        this.labTestVersion = str;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
