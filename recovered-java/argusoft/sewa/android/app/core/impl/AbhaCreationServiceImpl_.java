package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class AbhaCreationServiceImpl_ extends AbhaCreationServiceImpl {
    private static AbhaCreationServiceImpl_ instance_;
    private Context context_;

    private AbhaCreationServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static AbhaCreationServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            AbhaCreationServiceImpl_ abhaCreationServiceImpl_ = new AbhaCreationServiceImpl_(context.getApplicationContext());
            instance_ = abhaCreationServiceImpl_;
            abhaCreationServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
    }
}
