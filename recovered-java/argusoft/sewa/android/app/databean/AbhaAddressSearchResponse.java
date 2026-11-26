package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class AbhaAddressSearchResponse {
    private String abhaAddress;
    private List<String> authMethods;
    private List<String> blockedAuthMethods;
    private String fullName;
    private String healthIdNumber;
    private String message;
    private String mobile;
    private String status;

    public String getHealthIdNumber() {
        return this.healthIdNumber;
    }

    public void setHealthIdNumber(String str) {
        this.healthIdNumber = str;
    }

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public String getFullName() {
        return this.fullName;
    }

    public void setFullName(String str) {
        this.fullName = str;
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

    public List<String> getBlockedAuthMethods() {
        return this.blockedAuthMethods;
    }

    public void setBlockedAuthMethods(List<String> list) {
        this.blockedAuthMethods = list;
    }

    public List<String> getAuthMethods() {
        return this.authMethods;
    }

    public void setAuthMethods(List<String> list) {
        this.authMethods = list;
    }

    public String getAbhaAddress() {
        return this.abhaAddress;
    }

    public void setAbhaAddress(String str) {
        this.abhaAddress = str;
    }

    public AbhaAddressSearchResponse(String str, String str2, String str3, String str4, String str5, List<String> list, List<String> list2, String str6) {
        this.healthIdNumber = str;
        this.mobile = str2;
        this.fullName = str3;
        this.message = str4;
        this.status = str5;
        this.blockedAuthMethods = list;
        this.authMethods = list2;
        this.abhaAddress = str6;
    }
}
