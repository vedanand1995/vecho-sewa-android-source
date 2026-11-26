package com.argusoft.sewa.android.app.service;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.view.View;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes.dex */
public final class GPSTracker extends Service implements LocationListener {
    private static final long MIN_DISTANCE_CHANGE_FOR_UPDATES = 0;
    private static final long MIN_TIME_BW_UPDATES = 1800000;
    private static final String TAG = "GPSTracker";
    private static Boolean isGPSEnabled;
    private static Boolean isNetworkEnabled;
    public static Double latitude;
    public static Double longitude;
    private MyAlertDialog alertDialog;
    private LocationManager locationManager;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    static {
        Double dValueOf = Double.valueOf(0.0d);
        latitude = dValueOf;
        longitude = dValueOf;
    }

    private void registerLocationManager() {
        this.locationManager = (LocationManager) getSystemService(FirebaseAnalytics.Param.LOCATION);
        if (isLocationProviderEnabled()) {
            if (Boolean.TRUE.equals(isGPSEnabled)) {
                try {
                    this.locationManager.requestLocationUpdates("gps", MIN_TIME_BW_UPDATES, 0.0f, this);
                    return;
                } catch (SecurityException e) {
                    Log.e(TAG, null, e);
                    return;
                }
            }
            if (Boolean.TRUE.equals(isNetworkEnabled)) {
                try {
                    this.locationManager.requestLocationUpdates("network", MIN_TIME_BW_UPDATES, 0.0f, this);
                    return;
                } catch (SecurityException e2) {
                    Log.e(TAG, null, e2);
                    return;
                }
            }
            return;
        }
        stopUsingLocationUpdates();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public void getLocation() {
        if (this.locationManager != null) {
            Location lastKnownLocation = 0;
            lastKnownLocation = 0;
            try {
                if (Boolean.TRUE.equals(isNetworkEnabled)) {
                    lastKnownLocation = this.locationManager.getLastKnownLocation("network");
                } else if (Boolean.TRUE.equals(isGPSEnabled)) {
                    lastKnownLocation = this.locationManager.getLastKnownLocation("gps");
                }
            } catch (SecurityException e) {
                Log.e(getClass().getSimpleName(), lastKnownLocation, e);
            }
            if (lastKnownLocation != 0) {
                latitude = Double.valueOf(lastKnownLocation.getLatitude());
                longitude = Double.valueOf(lastKnownLocation.getLongitude());
            }
        }
    }

    private void stopUsingLocationUpdates() {
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            locationManager.removeUpdates(this);
        }
    }

    public boolean isLocationProviderEnabled() {
        isGPSEnabled = Boolean.valueOf(this.locationManager.isProviderEnabled("gps"));
        isNetworkEnabled = Boolean.valueOf(this.locationManager.isProviderEnabled("network"));
        return isGPSEnabled.booleanValue() || isNetworkEnabled.booleanValue();
    }

    public void showSettingsAlert(final Context context) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(context, false, LabelConstants.GPS_SERVICE_NOT_STARTED_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.service.GPSTracker.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GPSTracker.this.alertDialog.dismiss();
                ((Activity) context).startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), GlobalTypes.LOCATION_SERVICE_ACTIVITY);
            }
        }, DynamicUtils.BUTTON_OK);
        this.alertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    @Override // android.app.Service
    public void onCreate() {
        try {
            registerLocationManager();
        } catch (SecurityException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        SharedStructureData.gps = this;
    }
}
