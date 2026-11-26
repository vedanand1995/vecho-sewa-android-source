package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class MobileVerificationResponse {
    List<MobileLinkedHidResponse> mobileLinkedHid;
    private String token;
    private String txnId;

    public String getTxnId() {
        return this.txnId;
    }

    public void setTxnId(String str) {
        this.txnId = str;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public List<MobileLinkedHidResponse> getMobileLinkedHid() {
        return this.mobileLinkedHid;
    }

    public void setMobileLinkedHid(List<MobileLinkedHidResponse> list) {
        this.mobileLinkedHid = list;
    }
}
