package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleExceptionBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleMasterBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class HealthInfrastructureServiceImpl_ extends HealthInfrastructureServiceImpl {
    private static HealthInfrastructureServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private HealthInfrastructureServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static HealthInfrastructureServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            HealthInfrastructureServiceImpl_ healthInfrastructureServiceImpl_ = new HealthInfrastructureServiceImpl_(context.getApplicationContext());
            instance_ = healthInfrastructureServiceImpl_;
            healthInfrastructureServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.infrastructureBeanDao = dBConnection.getDao(HealthInfrastructureBean.class);
        } catch (SQLException e) {
            Log.e("HealthInfrastructureSer", "Could not create DAO infrastructureBeanDao", e);
        }
        try {
            this.smartReferralScheduleMasterBeanDao = this.dBConnection_.getDao(SmartReferralScheduleMasterBean.class);
        } catch (SQLException e2) {
            Log.e("HealthInfrastructureSer", "Could not create DAO smartReferralScheduleMasterBeanDao", e2);
        }
        try {
            this.smartReferralScheduleExceptionBeanDao = this.dBConnection_.getDao(SmartReferralScheduleExceptionBean.class);
        } catch (SQLException e3) {
            Log.e("HealthInfrastructureSer", "Could not create DAO smartReferralScheduleExceptionBeanDao", e3);
        }
    }
}
