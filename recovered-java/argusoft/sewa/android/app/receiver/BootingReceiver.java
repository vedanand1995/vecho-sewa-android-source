package com.argusoft.sewa.android.app.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.argusoft.sewa.android.app.service.GPSTracker;

/* loaded from: classes.dex */
public class BootingReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null || !action.matches("android.location.PROVIDERS_CHANGED")) {
            return;
        }
        context.startService(new Intent(context, (Class<?>) GPSTracker.class));
    }
}
