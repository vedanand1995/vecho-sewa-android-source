package com.argusoft.sewa.android.app.rdservice;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public class RDServiceManager {
    private static final int RC_RDSERVICE_CAPTURE_START_INDEX = 8300;
    private static final int RC_RDSERVICE_DISCOVER_START_INDEX = 8500;
    private static final String TAG = "RDServiceManager";
    private RDServiceEvents mRDEvent;
    private static final Map<String, Integer> mapRDDriverRCIndex = new HashMap();
    private static final Map<Integer, String> mapRDDiscoverRC = new HashMap();
    private static final Map<Integer, String> mapRDCaptureRC = new HashMap();
    private static final Map<String, String> mapRDDriverWhitelist = new HashMap<String, String>() { // from class: com.argusoft.sewa.android.app.rdservice.RDServiceManager.1
        {
            put("com.secugen.rdservice", "Secugen");
            put("com.scl.rdservice", "Morpho");
            put("com.mantra.rdservice", "Mantra");
            put("com.acpl.registersdk", "Startek FM220");
            put("com.rd.gemalto.com.rdserviceapp", "Gemalto 3M Cogent CSD200");
            put("com.tatvik.bio.tmf20", "Tatvik TMF20");
            put("com.evolute.rdservice", "Evolute");
            put("com.precision.pb510.rdservice", "PB510");
            put("com.mantra.mis100v2.rdservice", "MIS100V2 by Mantra");
            put("com.nextbiometrics.rdservice", "NEXT Biometrics NB-3023");
            put("com.iritech.rdservice", "IriTech IriShield");
        }
    };
    private static final Map<String, String> mapRDDriverBlacklist = new HashMap();

    private int getRDServiceCaptureRC(int i) {
        return i + RC_RDSERVICE_CAPTURE_START_INDEX;
    }

    private int getRDServiceDiscoverRC(int i) {
        return i + RC_RDSERVICE_DISCOVER_START_INDEX;
    }

    private RDServiceManager(Builder builder) {
        this.mRDEvent = builder._rdevent;
        mapRDDriverWhitelist.putAll(builder.mapNewWhitelistedRDDrivers);
        mapRDDriverBlacklist.putAll(builder.mapBlacklistedRDDrivers);
    }

    public static class Builder {
        private RDServiceEvents _rdevent;
        private Map<String, String> mapNewWhitelistedRDDrivers = new HashMap();
        private Map<String, String> mapBlacklistedRDDrivers = new HashMap();

        public Builder(RDServiceEvents rDServiceEvents) {
            this._rdevent = null;
            this._rdevent = rDServiceEvents;
        }

        public Builder whitelistRDDrivers(Map<String, String> map) {
            this.mapNewWhitelistedRDDrivers = map;
            return this;
        }

        public Builder blacklistRDDrivers(Map<String, String> map) {
            this.mapBlacklistedRDDrivers = map;
            return this;
        }

        public RDServiceManager create() {
            if (this._rdevent == null) {
                throw new IllegalStateException("First set your Activity that implements RDServiceEvent by calling setRDServiceEventActivity()");
            }
            return new RDServiceManager(this);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) throws JSONException {
        StringBuilder sb = new StringBuilder("onActivityResult: ");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(" ~~ ");
        Map<Integer, String> map = mapRDDiscoverRC;
        sb.append(map.toString());
        Log.i(TAG, sb.toString());
        if (map.containsKey(Integer.valueOf(i))) {
            String str = map.get(Integer.valueOf(i));
            if (i2 == -1) {
                onRDServiceInfoResponse(intent, str);
                return;
            } else {
                this.mRDEvent.onRDServiceDriverDiscoveryFailed(i2, intent, str, "");
                return;
            }
        }
        Map<Integer, String> map2 = mapRDCaptureRC;
        if (map2.containsKey(Integer.valueOf(i))) {
            String str2 = map2.get(Integer.valueOf(i));
            if (i2 == -1) {
                onRDServiceCaptureIntentResponse(intent, str2);
            } else {
                this.mRDEvent.onRDServiceCaptureFailed(i2, intent, str2);
            }
        }
    }

    public void discoverRdService() {
        List<ResolveInfo> listQueryIntentActivities = ((Activity) this.mRDEvent).getPackageManager().queryIntentActivities(new Intent("in.gov.uidai.rdservice.fp.INFO"), 0);
        if (listQueryIntentActivities.isEmpty()) {
            this.mRDEvent.onRDServiceDriverNotFound();
            return;
        }
        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
        int i = 0;
        while (it.hasNext()) {
            String str = it.next().activityInfo.packageName;
            if (!mapRDDriverBlacklist.containsKey(str)) {
                try {
                    Map<String, Integer> map = mapRDDriverRCIndex;
                    int size = map.size() + 1;
                    map.put(str, Integer.valueOf(size));
                    int rDServiceDiscoverRC = getRDServiceDiscoverRC(size);
                    Map<Integer, String> map2 = mapRDDiscoverRC;
                    map2.put(Integer.valueOf(rDServiceDiscoverRC), str);
                    mapRDCaptureRC.put(Integer.valueOf(getRDServiceCaptureRC(size)), str);
                    Intent intent = new Intent("in.gov.uidai.rdservice.fp.INFO");
                    intent.setPackage(str);
                    ((Activity) this.mRDEvent).startActivityForResult(intent, rDServiceDiscoverRC);
                    Log.e(TAG, "RD SERVICE Package Found: (" + size + ") " + rDServiceDiscoverRC + " ~ " + str + " ~~ " + map + " ~ " + map2);
                } catch (Exception e) {
                    e.printStackTrace();
                    this.mRDEvent.onRDServiceDriverDiscoveryFailed(0, null, str, e.getMessage());
                }
            } else {
                this.mRDEvent.onRDServiceDriverDiscoveryFailed(0, null, str, "Package not whitelisted");
            }
            i++;
            if (i > 10) {
                return;
            }
        }
    }

    public void captureRdService(String str, String str2) {
        Map<String, Integer> map = mapRDDriverRCIndex;
        if (map.containsKey(str)) {
            int iIntValue = map.get(str).intValue();
            int rDServiceCaptureRC = getRDServiceCaptureRC(iIntValue);
            Log.d(TAG, "RDSERVICE BEFORE CAPTURE: pid_options: (" + iIntValue + ") " + rDServiceCaptureRC + " ~ " + str2);
            Intent intent = new Intent("in.gov.uidai.rdservice.fp.CAPTURE");
            intent.setPackage(str);
            intent.putExtra("PID_OPTIONS", str2);
            ((Activity) this.mRDEvent).startActivityForResult(intent, rDServiceCaptureRC);
            return;
        }
        this.mRDEvent.onRDServiceDriverDiscoveryFailed(0, null, str, "Package not found or not whitelisted");
        Log.d(TAG, "RDSERVICE CAPTURE ERROR: package not found or not whitelisted: " + str);
    }

    private void onRDServiceInfoResponse(Intent intent, String str) throws JSONException {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            Log.d(TAG, "onRDServiceInfoResponse: " + extras.getString("RD_SERVICE_INFO", "") + " //// " + str);
            this.mRDEvent.onRDServiceDriverDiscovery(extras.getString("RD_SERVICE_INFO", ""), str, Boolean.valueOf(mapRDDriverWhitelist.containsKey(str)));
            Log.i(TAG, "onRDServiceInfoResponse: Device Info: \n\n Device = " + extras.getString("DEVICE_INFO", "") + "    \n\nRDService = " + extras.getString("RD_SERVICE_INFO", ""));
        }
    }

    private void onRDServiceCaptureIntentResponse(Intent intent, String str) throws JSONException {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.mRDEvent.onRDServiceCaptureResponse(extras.getString("PID_DATA", ""), str);
            Log.i(TAG, "onRDServiceCaptureIntentResponse: Capture Info: \n\n PID-DATA = " + extras.getString("PID_DATA", "") + "    \n\nDeviceNotConnected = " + extras.getString("DNC", ""));
        }
    }
}
