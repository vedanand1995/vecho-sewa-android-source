package com.argusoft.sewa.android.app.restclient.impl;

import android.content.Context;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class RestRequestImpl_ extends RestRequestImpl {
    private static RestRequestImpl_ instance_;
    private Context context_;

    private void init_() {
    }

    private RestRequestImpl_(Context context) {
        this.context_ = context;
    }

    public static RestRequestImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            RestRequestImpl_ restRequestImpl_ = new RestRequestImpl_(context.getApplicationContext());
            instance_ = restRequestImpl_;
            restRequestImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }
}
