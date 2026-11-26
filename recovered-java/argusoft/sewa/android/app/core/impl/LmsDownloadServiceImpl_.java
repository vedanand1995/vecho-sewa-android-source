package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FileDownloadBean;
import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class LmsDownloadServiceImpl_ extends LmsDownloadServiceImpl {
    private static LmsDownloadServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private LmsDownloadServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static LmsDownloadServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            LmsDownloadServiceImpl_ lmsDownloadServiceImpl_ = new LmsDownloadServiceImpl_(context.getApplicationContext());
            instance_ = lmsDownloadServiceImpl_;
            lmsDownloadServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.lmsService = LmsServiceImpl_.getInstance_(this.context_);
        this.context = this.context_;
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.lmsCourseBeanDao = dBConnection.getDao(LmsCourseBean.class);
        } catch (SQLException e) {
            Log.e("LmsDownloadServiceImpl_", "Could not create DAO lmsCourseBeanDao", e);
        }
        try {
            this.fileDownloadBeanDao = this.dBConnection_.getDao(FileDownloadBean.class);
        } catch (SQLException e2) {
            Log.e("LmsDownloadServiceImpl_", "Could not create DAO fileDownloadBeanDao", e2);
        }
    }
}
