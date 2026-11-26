package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.argusoft.sewa.android.app.model.LmsEventBean;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class LmsServiceImpl_ extends LmsServiceImpl {
    private static LmsServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private LmsServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static LmsServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            LmsServiceImpl_ lmsServiceImpl_ = new LmsServiceImpl_(context.getApplicationContext());
            instance_ = lmsServiceImpl_;
            lmsServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.courseBeanDao = dBConnection.getDao(LmsCourseBean.class);
        } catch (SQLException e) {
            Log.e("LmsServiceImpl_", "Could not create DAO courseBeanDao", e);
        }
        try {
            this.bookMarkBeanDao = this.dBConnection_.getDao(LmsBookMarkBean.class);
        } catch (SQLException e2) {
            Log.e("LmsServiceImpl_", "Could not create DAO bookMarkBeanDao", e2);
        }
        try {
            this.viewedMediaBeanDao = this.dBConnection_.getDao(LmsViewedMediaBean.class);
        } catch (SQLException e3) {
            Log.e("LmsServiceImpl_", "Could not create DAO viewedMediaBeanDao", e3);
        }
        try {
            this.quizMetadataBeanDao = this.dBConnection_.getDao(LmsUserMetaDataBean.class);
        } catch (SQLException e4) {
            Log.e("LmsServiceImpl_", "Could not create DAO quizMetadataBeanDao", e4);
        }
        try {
            this.eventBeanDao = this.dBConnection_.getDao(LmsEventBean.class);
        } catch (SQLException e5) {
            Log.e("LmsServiceImpl_", "Could not create DAO eventBeanDao", e5);
        }
    }
}
