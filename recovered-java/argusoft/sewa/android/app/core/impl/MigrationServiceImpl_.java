package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class MigrationServiceImpl_ extends MigrationServiceImpl {
    private static MigrationServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private MigrationServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static MigrationServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            MigrationServiceImpl_ migrationServiceImpl_ = new MigrationServiceImpl_(context.getApplicationContext());
            instance_ = migrationServiceImpl_;
            migrationServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.familyBeanDao = dBConnection.getDao(FamilyBean.class);
        } catch (SQLException e) {
            Log.e("MigrationServiceImpl_", "Could not create DAO familyBeanDao", e);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e2) {
            Log.e("MigrationServiceImpl_", "Could not create DAO memberBeanDao", e2);
        }
        try {
            this.locationMasterBeanDao = this.dBConnection_.getDao(LocationMasterBean.class);
        } catch (SQLException e3) {
            Log.e("MigrationServiceImpl_", "Could not create DAO locationMasterBeanDao", e3);
        }
        try {
            this.migratedMembersBeanDao = this.dBConnection_.getDao(MigratedMembersBean.class);
        } catch (SQLException e4) {
            Log.e("MigrationServiceImpl_", "Could not create DAO migratedMembersBeanDao", e4);
        }
        try {
            this.migratedFamilyBeanDao = this.dBConnection_.getDao(MigratedFamilyBean.class);
        } catch (SQLException e5) {
            Log.e("MigrationServiceImpl_", "Could not create DAO migratedFamilyBeanDao", e5);
        }
    }
}
