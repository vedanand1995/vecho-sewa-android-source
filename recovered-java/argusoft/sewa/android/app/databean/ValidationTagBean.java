package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class ValidationTagBean {
    private String message;
    private String method;

    public ValidationTagBean(String str, String str2) {
        this.method = str;
        this.message = str2;
    }

    public ValidationTagBean() {
    }

    public String getMethod() {
        return this.method;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
