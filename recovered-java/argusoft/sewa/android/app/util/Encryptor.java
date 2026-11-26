package com.argusoft.sewa.android.app.util;

import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public final class Encryptor {
    private static final String TAG = "Encryptor";

    private Encryptor() {
        throw new IllegalStateException("Utility Class");
    }

    public static synchronized String encrypt(String str) {
        String strEncodeToString = null;
        if (str == null) {
            return null;
        }
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(str.getBytes("UTF-8"));
                strEncodeToString = Base64.encodeToString(messageDigest.digest(), 0);
            } catch (NoSuchAlgorithmException e) {
                Log.e(TAG, "No Such Algorithm Exists", e);
            }
        } catch (UnsupportedEncodingException e2) {
            Log.e(TAG, "The Encoding Is Not Supported", e2);
        }
        return strEncodeToString;
    }
}
