package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.model.UncaughtExceptionBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager_;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class SewaServiceImpl_ extends SewaServiceImpl {
    private static SewaServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private SewaServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static SewaServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            SewaServiceImpl_ sewaServiceImpl_ = new SewaServiceImpl_(context.getApplicationContext());
            instance_ = sewaServiceImpl_;
            sewaServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        this.techoService = TechoServiceImpl_.getInstance_(this.context_);
        this.moveToProductionService = MoveToProductionServiceImpl_.getInstance_(this.context_);
        this.lmsEventService = LmsEventServiceImpl_.getInstance_(this.context_);
        this.apiManager = ApiManager_.getInstance_(this.context_);
        this.context = this.context_;
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.loginBeanDao = dBConnection.getDao(LoginBean.class);
        } catch (SQLException e) {
            Log.e("SewaServiceImpl_", "Could not create DAO loginBeanDao", e);
        }
        try {
            this.listValueBeanDao = this.dBConnection_.getDao(ListValueBean.class);
        } catch (SQLException e2) {
            Log.e("SewaServiceImpl_", "Could not create DAO listValueBeanDao", e2);
        }
        try {
            this.labelBeanDao = this.dBConnection_.getDao(LabelBean.class);
        } catch (SQLException e3) {
            Log.e("SewaServiceImpl_", "Could not create DAO labelBeanDao", e3);
        }
        try {
            this.notificationBeanDao = this.dBConnection_.getDao(NotificationBean.class);
        } catch (SQLException e4) {
            Log.e("SewaServiceImpl_", "Could not create DAO notificationBeanDao", e4);
        }
        try {
            this.loggerBeanDao = this.dBConnection_.getDao(LoggerBean.class);
        } catch (SQLException e5) {
            Log.e("SewaServiceImpl_", "Could not create DAO loggerBeanDao", e5);
        }
        try {
            this.announcementBeanDao = this.dBConnection_.getDao(AnnouncementBean.class);
        } catch (SQLException e6) {
            Log.e("SewaServiceImpl_", "Could not create DAO announcementBeanDao", e6);
        }
        try {
            this.storeAnswerBeanDao = this.dBConnection_.getDao(StoreAnswerBean.class);
        } catch (SQLException e7) {
            Log.e("SewaServiceImpl_", "Could not create DAO storeAnswerBeanDao", e7);
        }
        try {
            this.uploadFileDataBeanDao = this.dBConnection_.getDao(UploadFileDataBean.class);
        } catch (SQLException e8) {
            Log.e("SewaServiceImpl_", "Could not create DAO uploadFileDataBeanDao", e8);
        }
        try {
            this.questionBeanDao = this.dBConnection_.getDao(QuestionBean.class);
        } catch (SQLException e9) {
            Log.e("SewaServiceImpl_", "Could not create DAO questionBeanDao", e9);
        }
        try {
            this.answerBeanDao = this.dBConnection_.getDao(AnswerBean.class);
        } catch (SQLException e10) {
            Log.e("SewaServiceImpl_", "Could not create DAO answerBeanDao", e10);
        }
        try {
            this.syncBeanDao = this.dBConnection_.getDao(VersionBean.class);
        } catch (SQLException e11) {
            Log.e("SewaServiceImpl_", "Could not create DAO syncBeanDao", e11);
        }
        try {
            this.locationBeanDao = this.dBConnection_.getDao(LocationBean.class);
        } catch (SQLException e12) {
            Log.e("SewaServiceImpl_", "Could not create DAO locationBeanDao", e12);
        }
        try {
            this.uncaughtExceptionBeanDao = this.dBConnection_.getDao(UncaughtExceptionBean.class);
        } catch (SQLException e13) {
            Log.e("SewaServiceImpl_", "Could not create DAO uncaughtExceptionBeanDao", e13);
        }
    }
}
