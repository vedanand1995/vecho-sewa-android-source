package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class MoveToProductionServiceImpl_ extends MoveToProductionServiceImpl {
    private static MoveToProductionServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private MoveToProductionServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static MoveToProductionServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            MoveToProductionServiceImpl_ moveToProductionServiceImpl_ = new MoveToProductionServiceImpl_(context.getApplicationContext());
            instance_ = moveToProductionServiceImpl_;
            moveToProductionServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.formAccessibilityBeanDao = dBConnection.getDao(FormAccessibilityBean.class);
        } catch (SQLException e) {
            Log.e("MoveToProductionService", "Could not create DAO formAccessibilityBeanDao", e);
        }
    }
}
