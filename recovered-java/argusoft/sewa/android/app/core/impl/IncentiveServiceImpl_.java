package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.IncentiveOccurrenceBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.PreviousYearIncentive;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class IncentiveServiceImpl_ extends IncentiveServiceImpl {
    private static IncentiveServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private IncentiveServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static IncentiveServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            IncentiveServiceImpl_ incentiveServiceImpl_ = new IncentiveServiceImpl_(context.getApplicationContext());
            instance_ = incentiveServiceImpl_;
            incentiveServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.incentiveMonthlyDetailBeanDao = dBConnection.getDao(IncentiveMonthlyDetailsBean.class);
        } catch (SQLException e) {
            Log.e("IncentiveServiceImpl_", "Could not create DAO incentiveMonthlyDetailBeanDao", e);
        }
        try {
            this.incentiveMasterDao = this.dBConnection_.getDao(IncentiveMaster.class);
        } catch (SQLException e2) {
            Log.e("IncentiveServiceImpl_", "Could not create DAO incentiveMasterDao", e2);
        }
        try {
            this.previousYearIncentivesDao = this.dBConnection_.getDao(PreviousYearIncentive.class);
        } catch (SQLException e3) {
            Log.e("IncentiveServiceImpl_", "Could not create DAO previousYearIncentivesDao", e3);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e4) {
            Log.e("IncentiveServiceImpl_", "Could not create DAO memberBeanDao", e4);
        }
        try {
            this.familyBeanDao = this.dBConnection_.getDao(FamilyBean.class);
        } catch (SQLException e5) {
            Log.e("IncentiveServiceImpl_", "Could not create DAO familyBeanDao", e5);
        }
        try {
            this.incentiveOccurrenceBeansDao = this.dBConnection_.getDao(IncentiveOccurrenceBean.class);
        } catch (SQLException e6) {
            Log.e("IncentiveServiceImpl_", "Could not create DAO incentiveOccurrenceBeansDao", e6);
        }
    }
}
