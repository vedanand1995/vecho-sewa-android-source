package com.argusoft.sewa.android.app.restclient;

/* loaded from: classes.dex */
public class RestHttpException extends Exception {
    private final String message;
    private final RestHttpResponseCode statusCode;

    public RestHttpException(RestHttpResponseCode restHttpResponseCode, String str) {
        super(str);
        this.message = str;
        this.statusCode = restHttpResponseCode;
    }

    public RestHttpException(Exception exc) {
        super(exc);
        this.message = exc.getMessage();
        this.statusCode = RestHttpResponseCode.SC_INTERNAL_SERVER_ERROR;
    }

    public RestHttpResponseCode getStatusCode() {
        return this.statusCode;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "HttpRestException{message=" + this.message + ", statusCode=" + this.statusCode + '}';
    }
}
