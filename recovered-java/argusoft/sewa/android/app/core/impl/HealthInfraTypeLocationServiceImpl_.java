package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.HealthInfraTypeLocationBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class HealthInfraTypeLocationServiceImpl_ extends HealthInfraTypeLocationServiceImpl {
    private static HealthInfraTypeLocationServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private HealthInfraTypeLocationServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static HealthInfraTypeLocationServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            HealthInfraTypeLocationServiceImpl_ healthInfraTypeLocationServiceImpl_ = new HealthInfraTypeLocationServiceImpl_(context.getApplicationContext());
            instance_ = healthInfraTypeLocationServiceImpl_;
            healthInfraTypeLocationServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.infraTypeLocationBeanDao = dBConnection.getDao(HealthInfraTypeLocationBean.class);
        } catch (SQLException e) {
            Log.e("HealthInfraTypeLocation", "Could not create DAO infraTypeLocationBeanDao", e);
        }
    }
}
