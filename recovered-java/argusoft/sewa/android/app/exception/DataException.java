package com.argusoft.sewa.android.app.exception;

/* loaded from: classes.dex */
public class DataException extends RuntimeException {
    private final transient ResponseEntity response;

    public DataException(String str, Exception exc) {
        super(exc);
        this.response = new ResponseEntity(str);
    }

    public DataException(String str, int i) {
        super(str);
        this.response = new ResponseEntity(str, i);
    }

    public DataException(String str, int i, Object obj) {
        super(str);
        this.response = new ResponseEntity(str, i, obj);
    }

    public ResponseEntity getResponse() {
        return this.response;
    }
}
