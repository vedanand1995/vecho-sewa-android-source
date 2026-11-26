package com.argusoft.sewa.android.app;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.lang.Thread;

/* loaded from: classes.dex */
public class SewaApplication extends Application {
    private static Context context;
    private static FirebaseAnalytics mFirebaseAnalytics;
    private Thread.UncaughtExceptionHandler defaultUEH;

    public static FirebaseAnalytics firebaseAnalyticsInstance() {
        return mFirebaseAnalytics;
    }

    public SewaApplication() {
        Log.d("APPS_INSTALLED", "Configurations Called");
        this.defaultUEH = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.argusoft.sewa.android.app.SewaApplication.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                SharedStructureData.sewaService.storeException(th, GlobalTypes.EXCEPTION_TYPE_UNHANDLED);
                OpenHelperManager.releaseHelper();
                SewaApplication.this.defaultUEH.uncaughtException(thread, th);
            }
        });
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Log.d("APPS_INSTALLED", "onCreate of Main");
        WSConstants.setLiveContextUrl();
        context = getApplicationContext();
        mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);
    }

    public static Context getContext() {
        return context;
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        OpenHelperManager.releaseHelper();
    }
}
