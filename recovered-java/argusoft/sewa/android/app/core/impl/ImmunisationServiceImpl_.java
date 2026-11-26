package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class ImmunisationServiceImpl_ extends ImmunisationServiceImpl {
    private static ImmunisationServiceImpl_ instance_;
    private Context context_;

    private void init_() {
    }

    private ImmunisationServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static ImmunisationServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            ImmunisationServiceImpl_ immunisationServiceImpl_ = new ImmunisationServiceImpl_(context.getApplicationContext());
            instance_ = immunisationServiceImpl_;
            immunisationServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }
}
