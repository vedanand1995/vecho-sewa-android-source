package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.RISessionInventoryBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;

/* loaded from: classes.dex */
public final class RoutineImmunisationServiceImpl_ extends RoutineImmunisationServiceImpl {
    private Context context_;
    private DBConnection dBConnection_;

    private RoutineImmunisationServiceImpl_(Context context) {
        this.context_ = context;
        init_();
    }

    public static RoutineImmunisationServiceImpl_ getInstance_(Context context) {
        return new RoutineImmunisationServiceImpl_(context);
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.inventoryBeanDao = dBConnection.getDao(RISessionInventoryBean.class);
        } catch (SQLException e) {
            Log.e("RoutineImmunisationServ", "Could not create DAO inventoryBeanDao", e);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e2) {
            Log.e("RoutineImmunisationServ", "Could not create DAO memberBeanDao", e2);
        }
        try {
            this.familyBeanDao = this.dBConnection_.getDao(FamilyBean.class);
        } catch (SQLException e3) {
            Log.e("RoutineImmunisationServ", "Could not create DAO familyBeanDao", e3);
        }
    }

    public void rebind(Context context) {
        this.context_ = context;
        init_();
    }
}
