package com.argusoft.sewa.android.app.restclient.impl;

import android.content.Context;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class ApiManager_ extends ApiManager {
    private static ApiManager_ instance_;
    private Context context_;

    private void init_() {
    }

    private ApiManager_(Context context) {
        this.context_ = context;
    }

    public static ApiManager_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            ApiManager_ apiManager_ = new ApiManager_(context.getApplicationContext());
            instance_ = apiManager_;
            apiManager_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }
}
