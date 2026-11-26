package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.DailyPresenceReport;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class DailyPresenceReportServiceImpl_ extends DailyPresenceReportServiceImpl {
    private static DailyPresenceReportServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private DailyPresenceReportServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static DailyPresenceReportServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            DailyPresenceReportServiceImpl_ dailyPresenceReportServiceImpl_ = new DailyPresenceReportServiceImpl_(context.getApplicationContext());
            instance_ = dailyPresenceReportServiceImpl_;
            dailyPresenceReportServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this.context_);
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.versionBeanDao = dBConnection.getDao(VersionBean.class);
        } catch (SQLException e) {
            Log.e("DailyPresenceReportServ", "Could not create DAO versionBeanDao", e);
        }
        try {
            this.dailyPresenceReportBeanDao = this.dBConnection_.getDao(DailyPresenceReport.class);
        } catch (SQLException e2) {
            Log.e("DailyPresenceReportServ", "Could not create DAO dailyPresenceReportBeanDao", e2);
        }
    }
}
