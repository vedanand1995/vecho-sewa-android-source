package com.argusoft.sewa.android.app.exception;

/* loaded from: classes.dex */
public class ResponseEntity {
    private Object data;
    private int errorcode;
    private String message;

    public ResponseEntity(String str, int i) {
        this.message = str;
        this.errorcode = i;
    }

    public ResponseEntity(String str, int i, Object obj) {
        this.message = str;
        this.data = obj;
        this.errorcode = i;
    }

    ResponseEntity(String str) {
        this.message = str;
        this.errorcode = 1;
    }

    public String getMessage() {
        return this.message;
    }

    public Object getData() {
        return this.data;
    }

    public int getErrorcode() {
        return this.errorcode;
    }
}
