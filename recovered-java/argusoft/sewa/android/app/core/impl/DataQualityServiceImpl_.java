package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.DataQualityBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class DataQualityServiceImpl_ extends DataQualityServiceImpl {
    private static DataQualityServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private DataQualityServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static DataQualityServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            DataQualityServiceImpl_ dataQualityServiceImpl_ = new DataQualityServiceImpl_(context.getApplicationContext());
            instance_ = dataQualityServiceImpl_;
            dataQualityServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.dataQualityBeanDao = dBConnection.getDao(DataQualityBean.class);
        } catch (SQLException e) {
            Log.e("DataQualityServiceImpl_", "Could not create DAO dataQualityBeanDao", e);
        }
    }
}
