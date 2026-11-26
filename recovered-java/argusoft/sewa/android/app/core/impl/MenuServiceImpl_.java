package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.MenuBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class MenuServiceImpl_ extends MenuServiceImpl {
    private static MenuServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private MenuServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static MenuServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            MenuServiceImpl_ menuServiceImpl_ = new MenuServiceImpl_(context.getApplicationContext());
            instance_ = menuServiceImpl_;
            menuServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.menuBeanDao = dBConnection.getDao(MenuBean.class);
        } catch (SQLException e) {
            Log.e("MenuServiceImpl_", "Could not create DAO menuBeanDao", e);
        }
    }
}
