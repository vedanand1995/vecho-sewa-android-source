package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class HealthIdConfirmBioRequest {
    private String authType;
    private String bioType;
    private String pid;
    private String txnId;

    public String getAuthType() {
        return this.authType;
    }

    public void setAuthType(String str) {
        this.authType = str;
    }

    public String getBioType() {
        return this.bioType;
    }

    public void setBioType(String str) {
        this.bioType = str;
    }

    public String getPid() {
        return this.pid;
    }

    public void setPid(String str) {
        this.pid = str;
    }

    public String getTxnId() {
        return this.txnId;
    }

    public void setTxnId(String str) {
        this.txnId = str;
    }
}
