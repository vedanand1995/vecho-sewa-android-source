package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class HealthIdProfileLoginVerifyResponse {
    private List<HealthIdProfileLoginAccount> accounts;
    private String authResult;
    private Integer expiresIn;
    private String message;
    private Integer refreshExpiresIn;
    private String refreshToken;
    private String token;
    private String txnId;

    public String getTxnId() {
        return this.txnId;
    }

    public void setTxnId(String str) {
        this.txnId = str;
    }

    public List<HealthIdProfileLoginAccount> getAccounts() {
        return this.accounts;
    }

    public void setAccounts(List<HealthIdProfileLoginAccount> list) {
        this.accounts = list;
    }

    public Integer getRefreshExpiresIn() {
        return this.refreshExpiresIn;
    }

    public void setRefreshExpiresIn(Integer num) {
        this.refreshExpiresIn = num;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String str) {
        this.refreshToken = str;
    }

    public Integer getExpiresIn() {
        return this.expiresIn;
    }

    public void setExpiresIn(Integer num) {
        this.expiresIn = num;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getAuthResult() {
        return this.authResult;
    }

    public void setAuthResult(String str) {
        this.authResult = str;
    }

    public HealthIdProfileLoginVerifyResponse(String str, String str2, String str3, String str4, Integer num, List<HealthIdProfileLoginAccount> list, Integer num2, String str5) {
        this.txnId = str;
        this.message = str2;
        this.authResult = str3;
        this.token = str4;
        this.expiresIn = num;
        this.accounts = list;
        this.refreshExpiresIn = num2;
        this.refreshToken = str5;
    }
}
