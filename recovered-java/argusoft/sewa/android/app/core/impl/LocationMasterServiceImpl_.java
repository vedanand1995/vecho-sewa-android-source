package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LocationTypeBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class LocationMasterServiceImpl_ extends LocationMasterServiceImpl {
    private static LocationMasterServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private LocationMasterServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static LocationMasterServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            LocationMasterServiceImpl_ locationMasterServiceImpl_ = new LocationMasterServiceImpl_(context.getApplicationContext());
            instance_ = locationMasterServiceImpl_;
            locationMasterServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.locationMasterBeanDao = dBConnection.getDao(LocationMasterBean.class);
        } catch (SQLException e) {
            Log.e("LocationMasterServiceIm", "Could not create DAO locationMasterBeanDao", e);
        }
        try {
            this.locationBeanDao = this.dBConnection_.getDao(LocationBean.class);
        } catch (SQLException e2) {
            Log.e("LocationMasterServiceIm", "Could not create DAO locationBeanDao", e2);
        }
        try {
            this.locationTypeBeanDao = this.dBConnection_.getDao(LocationTypeBean.class);
        } catch (SQLException e3) {
            Log.e("LocationMasterServiceIm", "Could not create DAO locationTypeBeanDao", e3);
        }
    }
}
