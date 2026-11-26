package com.argusoft.sewa.android.app.restclient;

/* loaded from: classes.dex */
public enum RestContentType {
    APPLICATION_JSON("application/json");

    private final String value;

    RestContentType(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "RestContentType{value=" + this.value + '}';
    }
}
