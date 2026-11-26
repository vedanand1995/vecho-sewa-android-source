package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class HealthIdAccountProfileTokenResponse {
    private String expiresIn;
    private String refreshExpiresIn;
    private String refreshToken;
    private String token;

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String getExpiresIn() {
        return this.expiresIn;
    }

    public void setExpiresIn(String str) {
        this.expiresIn = str;
    }

    public String getRefreshExpiresIn() {
        return this.refreshExpiresIn;
    }

    public void setRefreshExpiresIn(String str) {
        this.refreshExpiresIn = str;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String str) {
        this.refreshToken = str;
    }
}
