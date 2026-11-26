package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class NPCBServiceImpl_ extends NPCBServiceImpl {
    private static NPCBServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private NPCBServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static NPCBServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            NPCBServiceImpl_ nPCBServiceImpl_ = new NPCBServiceImpl_(context.getApplicationContext());
            instance_ = nPCBServiceImpl_;
            nPCBServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.familyBeanDao = dBConnection.getDao(FamilyBean.class);
        } catch (SQLException e) {
            Log.e("NPCBServiceImpl_", "Could not create DAO familyBeanDao", e);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e2) {
            Log.e("NPCBServiceImpl_", "Could not create DAO memberBeanDao", e2);
        }
    }
}
