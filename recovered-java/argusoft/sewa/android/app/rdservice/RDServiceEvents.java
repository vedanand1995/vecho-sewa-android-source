package com.argusoft.sewa.android.app.rdservice;

import android.content.Intent;
import org.json.JSONException;

/* loaded from: classes.dex */
public interface RDServiceEvents {
    void onRDServiceCaptureFailed(int i, Intent intent, String str);

    void onRDServiceCaptureResponse(String str, String str2) throws JSONException;

    void onRDServiceDriverDiscovery(String str, String str2, Boolean bool) throws JSONException;

    void onRDServiceDriverDiscoveryFailed(int i, Intent intent, String str, String str2);

    void onRDServiceDriverNotFound();
}
