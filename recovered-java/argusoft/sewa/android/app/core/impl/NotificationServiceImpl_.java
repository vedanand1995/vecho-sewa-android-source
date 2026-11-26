package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class NotificationServiceImpl_ extends NotificationServiceImpl {
    private static NotificationServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private NotificationServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static NotificationServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            NotificationServiceImpl_ notificationServiceImpl_ = new NotificationServiceImpl_(context.getApplicationContext());
            instance_ = notificationServiceImpl_;
            notificationServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.notificationBeanDao = dBConnection.getDao(NotificationBean.class);
        } catch (SQLException e) {
            Log.e("NotificationServiceImpl", "Could not create DAO notificationBeanDao", e);
        }
        try {
            this.locationBeanDao = this.dBConnection_.getDao(LocationBean.class);
        } catch (SQLException e2) {
            Log.e("NotificationServiceImpl", "Could not create DAO locationBeanDao", e2);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e3) {
            Log.e("NotificationServiceImpl", "Could not create DAO memberBeanDao", e3);
        }
        try {
            this.familyBeanDao = this.dBConnection_.getDao(FamilyBean.class);
        } catch (SQLException e4) {
            Log.e("NotificationServiceImpl", "Could not create DAO familyBeanDao", e4);
        }
        try {
            this.covidTravellersInfoBeanDao = this.dBConnection_.getDao(CovidTravellersInfoBean.class);
        } catch (SQLException e5) {
            Log.e("NotificationServiceImpl", "Could not create DAO covidTravellersInfoBeanDao", e5);
        }
    }
}
