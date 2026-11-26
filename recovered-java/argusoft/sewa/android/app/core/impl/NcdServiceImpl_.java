package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class NcdServiceImpl_ extends NcdServiceImpl {
    private static NcdServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private NcdServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static NcdServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            NcdServiceImpl_ ncdServiceImpl_ = new NcdServiceImpl_(context.getApplicationContext());
            instance_ = ncdServiceImpl_;
            ncdServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.memberBeanDao = dBConnection.getDao(MemberBean.class);
        } catch (SQLException e) {
            Log.e("NcdServiceImpl_", "Could not create DAO memberBeanDao", e);
        }
        try {
            this.familyBeanDao = this.dBConnection_.getDao(FamilyBean.class);
        } catch (SQLException e2) {
            Log.e("NcdServiceImpl_", "Could not create DAO familyBeanDao", e2);
        }
        try {
            this.memberCbacDetailBeanDao = this.dBConnection_.getDao(MemberCbacDetailBean.class);
        } catch (SQLException e3) {
            Log.e("NcdServiceImpl_", "Could not create DAO memberCbacDetailBeanDao", e3);
        }
    }
}
