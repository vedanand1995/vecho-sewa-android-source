package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class RchHighRiskServiceImpl_ extends RchHighRiskServiceImpl {
    private static RchHighRiskServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private RchHighRiskServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static RchHighRiskServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            RchHighRiskServiceImpl_ rchHighRiskServiceImpl_ = new RchHighRiskServiceImpl_(context.getApplicationContext());
            instance_ = rchHighRiskServiceImpl_;
            rchHighRiskServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.listValueBeanDao = dBConnection.getDao(ListValueBean.class);
        } catch (SQLException e) {
            Log.e("RchHighRiskServiceImpl_", "Could not create DAO listValueBeanDao", e);
        }
    }
}
