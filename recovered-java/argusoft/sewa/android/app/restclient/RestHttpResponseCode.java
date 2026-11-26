package com.argusoft.sewa.android.app.restclient;

import com.google.firebase.messaging.ServiceStarter;

/* loaded from: classes.dex */
public enum RestHttpResponseCode {
    SC_OK(200),
    SC_OK_NO_CONTENT(204),
    SC_BAD_REQUEST(400),
    SC_UNAUTHORIZED(401),
    SC_FORBIDDEN(403),
    SC_NOT_FOUND(404),
    SC_NOT_ACCEPTABLE(406),
    SC_REQUEST_TIMEOUT(408),
    SC_INTERNAL_SERVER_ERROR(ServiceStarter.ERROR_UNKNOWN),
    SC_PERAMETER_NOT_PROPER(600),
    SC_RESPONSE_NOT_FORMATED(601),
    SC_URL_NULL(602),
    SC_NOT_IMPLEMENTED_STILL(603),
    SC_NO_HTTP_METHOD_TYPE(604),
    SC_ERROR_IN_READING_RESONSE(605),
    SC_OTHER(666);

    private final int value;

    RestHttpResponseCode(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "RestHttpResponseCode{code=" + this.value + '}';
    }
}
