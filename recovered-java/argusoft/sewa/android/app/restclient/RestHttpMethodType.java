package com.argusoft.sewa.android.app.restclient;

/* loaded from: classes.dex */
public enum RestHttpMethodType {
    HTTP_GET(1),
    HTTP_POST(2),
    HTTP_PUT(3),
    HTTP_DELETE(4);

    private final int value;

    RestHttpMethodType(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "HttpRestMethodType{value=" + this.value + '}';
    }
}
