package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class EnrollUsingAadhaar {
    private HealthIdAccountProfileResponse healthIdAccountProfileResponse;
    private String txnId;

    public HealthIdAccountProfileResponse getHealthIdAccountProfileResponse() {
        return this.healthIdAccountProfileResponse;
    }

    public void setHealthIdAccountProfileResponse(HealthIdAccountProfileResponse healthIdAccountProfileResponse) {
        this.healthIdAccountProfileResponse = healthIdAccountProfileResponse;
    }

    public String getTxnId() {
        return this.txnId;
    }

    public void setTxnId(String str) {
        this.txnId = str;
    }

    public EnrollUsingAadhaar(HealthIdAccountProfileResponse healthIdAccountProfileResponse, String str) {
        this.healthIdAccountProfileResponse = healthIdAccountProfileResponse;
        this.txnId = str;
    }
}
