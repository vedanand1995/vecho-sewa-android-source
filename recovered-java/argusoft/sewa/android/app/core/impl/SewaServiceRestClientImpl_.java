package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager_;
import com.argusoft.sewa.android.app.restclient.impl.RestRequestImpl_;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class SewaServiceRestClientImpl_ extends SewaServiceRestClientImpl {
    private static SewaServiceRestClientImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private SewaServiceRestClientImpl_(Context context) {
        this.context_ = context;
    }

    public static SewaServiceRestClientImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            SewaServiceRestClientImpl_ sewaServiceRestClientImpl_ = new SewaServiceRestClientImpl_(context.getApplicationContext());
            instance_ = sewaServiceRestClientImpl_;
            sewaServiceRestClientImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.apiManager = ApiManager_.getInstance_(this.context_);
        this.restRequest = RestRequestImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.versionBeanDao = dBConnection.getDao(VersionBean.class);
        } catch (SQLException e) {
            Log.e("SewaServiceRestClientIm", "Could not create DAO versionBeanDao", e);
        }
    }
}
