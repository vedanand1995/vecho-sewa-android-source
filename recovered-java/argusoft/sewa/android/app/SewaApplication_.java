package com.argusoft.sewa.android.app;

/* loaded from: classes.dex */
public final class SewaApplication_ extends SewaApplication {
    private static SewaApplication INSTANCE_;

    private void init_() {
    }

    public static SewaApplication getInstance() {
        return INSTANCE_;
    }

    public static void setForTesting(SewaApplication sewaApplication) {
        INSTANCE_ = sewaApplication;
    }

    @Override // com.argusoft.sewa.android.app.SewaApplication, android.app.Application
    public void onCreate() {
        INSTANCE_ = this;
        init_();
        super.onCreate();
    }
}
