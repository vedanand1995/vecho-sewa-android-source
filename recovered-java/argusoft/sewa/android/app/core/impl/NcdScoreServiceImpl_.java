package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class NcdScoreServiceImpl_ extends NcdScoreServiceImpl {
    private static NcdScoreServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private NcdScoreServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static NcdScoreServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            NcdScoreServiceImpl_ ncdScoreServiceImpl_ = new NcdScoreServiceImpl_(context.getApplicationContext());
            instance_ = ncdScoreServiceImpl_;
            ncdScoreServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.memberBeanDao = dBConnection.getDao(MemberBean.class);
        } catch (SQLException e) {
            Log.e("NcdScoreServiceImpl_", "Could not create DAO memberBeanDao", e);
        }
    }
}
