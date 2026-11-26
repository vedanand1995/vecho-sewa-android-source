package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.UserBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class UserServiceImpl_ extends UserServiceImpl {
    private static UserServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private UserServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static UserServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            UserServiceImpl_ userServiceImpl_ = new UserServiceImpl_(context.getApplicationContext());
            instance_ = userServiceImpl_;
            userServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.userBeanDao = dBConnection.getDao(UserBean.class);
        } catch (SQLException e) {
            Log.e("UserServiceImpl_", "Could not create DAO userBeanDao", e);
        }
        try {
            this.loginBeanDao = this.dBConnection_.getDao(LoginBean.class);
        } catch (SQLException e2) {
            Log.e("UserServiceImpl_", "Could not create DAO loginBeanDao", e2);
        }
    }
}
