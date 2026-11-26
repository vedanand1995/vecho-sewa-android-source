package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class HealthIdProfileLoginAccount {
    private String ABHANumber;
    private String kycStatus;
    private String name;
    private String preferredAbhaAddress;
    private String profilePhoto;
    private String status;

    public String getKycStatus() {
        return this.kycStatus;
    }

    public void setKycStatus(String str) {
        this.kycStatus = str;
    }

    public String getABHANumber() {
        return this.ABHANumber;
    }

    public void setABHANumber(String str) {
        this.ABHANumber = str;
    }

    public String getPreferredAbhaAddress() {
        return this.preferredAbhaAddress;
    }

    public void setPreferredAbhaAddress(String str) {
        this.preferredAbhaAddress = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getProfilePhoto() {
        return this.profilePhoto;
    }

    public void setProfilePhoto(String str) {
        this.profilePhoto = str;
    }

    public HealthIdProfileLoginAccount(String str, String str2, String str3, String str4, String str5) {
        this.ABHANumber = str;
        this.profilePhoto = str2;
        this.status = str3;
        this.name = str4;
        this.preferredAbhaAddress = str5;
    }
}
