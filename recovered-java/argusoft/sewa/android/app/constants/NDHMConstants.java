package com.argusoft.sewa.android.app.constants;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class NDHMConstants {
    public static final String AUTH_MODE_AADHAAR_BIO = "AADHAAR_BIO";
    public static final String AUTH_MODE_AADHAAR_OTP = "AADHAAR_OTP";
    public static final String AUTH_MODE_DEMOGRAPHICS = "DEMOGRAPHICS";
    public static final String AUTH_MODE_DIRECT = "DIRECT";
    public static final String AUTH_MODE_EMAIL_OTP = "EMAIL_OTP";
    public static final String AUTH_MODE_MOBILE_OTP = "MOBILE_OTP";
    public static final String AUTH_MODE_PASSWORD = "PASSWORD";
    public static final Map<String, String> AUTH_MODES = Collections.unmodifiableMap(getAuthModes());
    public static final Map<String, String> AUTH_MODE_VALUE_MAP = Collections.unmodifiableMap(getAuthModeValueMap());

    private NDHMConstants() {
        throw new IllegalStateException("Utility Class");
    }

    private static Map<String, String> getAuthModes() {
        HashMap map = new HashMap();
        map.put(AUTH_MODE_DEMOGRAPHICS, "Demographics");
        map.put(AUTH_MODE_AADHAAR_OTP, "Aadhaar OTP");
        map.put(AUTH_MODE_MOBILE_OTP, "Mobile OTP");
        map.put(AUTH_MODE_EMAIL_OTP, "Email OTP");
        map.put(AUTH_MODE_AADHAAR_BIO, "Aadhaar BIO");
        map.put(AUTH_MODE_PASSWORD, "Password");
        map.put(AUTH_MODE_DIRECT, "Direct");
        return map;
    }

    private static Map<String, String> getAuthModeValueMap() {
        HashMap map = new HashMap();
        map.put("Demographics", AUTH_MODE_DEMOGRAPHICS);
        map.put("Aadhaar OTP", AUTH_MODE_AADHAAR_OTP);
        map.put("Mobile OTP", AUTH_MODE_MOBILE_OTP);
        map.put("Email OTP", AUTH_MODE_EMAIL_OTP);
        map.put("Aadhaar BIO", AUTH_MODE_AADHAAR_BIO);
        map.put("Password", AUTH_MODE_PASSWORD);
        map.put("Direct", AUTH_MODE_DIRECT);
        return map;
    }

    public static String getAuthModeFullName(String str) {
        Map<String, String> map = AUTH_MODES;
        return map.containsKey(str) ? map.get(str) : str;
    }

    public static String getAuthModeKey(String str) {
        Map<String, String> map = AUTH_MODE_VALUE_MAP;
        return map.containsKey(str) ? map.get(str) : str;
    }
}
