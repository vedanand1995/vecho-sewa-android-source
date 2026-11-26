package com.argusoft.sewa.android.app.support;

import android.content.Context;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager_;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class SupportApi_ extends SupportApi {
    private static SupportApi_ instance_;
    private Context context_;

    private SupportApi_(Context context) {
        this.context_ = context;
    }

    public static SupportApi_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            SupportApi_ supportApi_ = new SupportApi_(context.getApplicationContext());
            instance_ = supportApi_;
            supportApi_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.apiManager = ApiManager_.getInstance_(this.context_);
    }
}
