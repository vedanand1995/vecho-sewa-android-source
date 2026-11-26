package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class LmsEventServiceImpl_ extends LmsEventServiceImpl {
    private static LmsEventServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private LmsEventServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static LmsEventServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            LmsEventServiceImpl_ lmsEventServiceImpl_ = new LmsEventServiceImpl_(context.getApplicationContext());
            instance_ = lmsEventServiceImpl_;
            lmsEventServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.eventBeanDao = dBConnection.getDao(LmsEventBean.class);
        } catch (SQLException e) {
            Log.e("LmsEventServiceImpl_", "Could not create DAO eventBeanDao", e);
        }
    }
}
