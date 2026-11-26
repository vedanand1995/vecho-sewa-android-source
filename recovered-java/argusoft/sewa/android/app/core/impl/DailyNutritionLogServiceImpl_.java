package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.DailyNutritionLogBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class DailyNutritionLogServiceImpl_ extends DailyNutritionLogServiceImpl {
    private static DailyNutritionLogServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private DailyNutritionLogServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static DailyNutritionLogServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            DailyNutritionLogServiceImpl_ dailyNutritionLogServiceImpl_ = new DailyNutritionLogServiceImpl_(context.getApplicationContext());
            instance_ = dailyNutritionLogServiceImpl_;
            dailyNutritionLogServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.dailyNutritionLogBeanDao = dBConnection.getDao(DailyNutritionLogBean.class);
        } catch (SQLException e) {
            Log.e("DailyNutritionLogServic", "Could not create DAO dailyNutritionLogBeanDao", e);
        }
    }
}
