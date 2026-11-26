package com.argusoft.sewa.android.app.restclient;

import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: classes.dex */
public interface RestRequest {
    void addFixedHeader(Map<String, String> map);

    <T> T callWebService(String str, RestHttpMethodType restHttpMethodType, Map<String, Object> map, Object obj, Type type) throws RestHttpException;
}
