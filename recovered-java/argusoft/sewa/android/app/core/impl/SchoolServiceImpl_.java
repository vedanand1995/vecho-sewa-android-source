package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class SchoolServiceImpl_ extends SchoolServiceImpl {
    private static SchoolServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private SchoolServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static SchoolServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            SchoolServiceImpl_ schoolServiceImpl_ = new SchoolServiceImpl_(context.getApplicationContext());
            instance_ = schoolServiceImpl_;
            schoolServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.schoolBeanDao = dBConnection.getDao(SchoolBean.class);
        } catch (SQLException e) {
            Log.e("SchoolServiceImpl_", "Could not create DAO schoolBeanDao", e);
        }
    }
}
