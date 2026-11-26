package com.argusoft.sewa.android.app.service;

import android.content.Context;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager_;
import org.androidannotations.api.builder.ServiceIntentBuilder;

/* loaded from: classes.dex */
public final class FileUploadForegroundService_ extends FileUploadForegroundService {
    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this);
        this.apiManager = ApiManager_.getInstance_(this);
    }

    @Override // com.argusoft.sewa.android.app.service.FileUploadForegroundService, android.app.Service
    public void onCreate() {
        init_();
        super.onCreate();
    }

    public static class IntentBuilder_ extends ServiceIntentBuilder<IntentBuilder_> {
        public IntentBuilder_(Context context) {
            super(context, (Class<?>) FileUploadForegroundService_.class);
        }
    }
}
