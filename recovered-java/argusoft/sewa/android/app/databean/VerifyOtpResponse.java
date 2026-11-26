package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class VerifyOtpResponse {
    private List<Accounts> accounts;
    private String authResult;
    private String message;
    private String txnId;

    public String getTxnId() {
        return this.txnId;
    }

    public void setTxnId(String str) {
        this.txnId = str;
    }

    public String getAuthResult() {
        return this.authResult;
    }

    public void setAuthResult(String str) {
        this.authResult = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public List<Accounts> getAccounts() {
        return this.accounts;
    }

    public void setAccounts(List<Accounts> list) {
        this.accounts = list;
    }
}
