package com.argusoft.sewa.android.app.util;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class FormMetaDataUtil_ extends FormMetaDataUtil {
    private static FormMetaDataUtil_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private FormMetaDataUtil_(Context context) {
        this.context_ = context;
    }

    public static FormMetaDataUtil_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            FormMetaDataUtil_ formMetaDataUtil_ = new FormMetaDataUtil_(context.getApplicationContext());
            instance_ = formMetaDataUtil_;
            formMetaDataUtil_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.immunisationService = ImmunisationServiceImpl_.getInstance_(this.context_);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this.context_);
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.listValueBeanDao = dBConnection.getDao(ListValueBean.class);
        } catch (SQLException e) {
            Log.e("FormMetaDataUtil_", "Could not create DAO listValueBeanDao", e);
        }
        try {
            this.familyBeanDao = this.dBConnection_.getDao(FamilyBean.class);
        } catch (SQLException e2) {
            Log.e("FormMetaDataUtil_", "Could not create DAO familyBeanDao", e2);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e3) {
            Log.e("FormMetaDataUtil_", "Could not create DAO memberBeanDao", e3);
        }
        try {
            this.locationBeanDao = this.dBConnection_.getDao(LocationBean.class);
        } catch (SQLException e4) {
            Log.e("FormMetaDataUtil_", "Could not create DAO locationBeanDao", e4);
        }
        try {
            this.versionBeanDao = this.dBConnection_.getDao(VersionBean.class);
        } catch (SQLException e5) {
            Log.e("FormMetaDataUtil_", "Could not create DAO versionBeanDao", e5);
        }
        try {
            this.healthInfrastructureBeanDao = this.dBConnection_.getDao(HealthInfrastructureBean.class);
        } catch (SQLException e6) {
            Log.e("FormMetaDataUtil_", "Could not create DAO healthInfrastructureBeanDao", e6);
        }
        try {
            this.locationMasterBeanDao = this.dBConnection_.getDao(LocationMasterBean.class);
        } catch (SQLException e7) {
            Log.e("FormMetaDataUtil_", "Could not create DAO locationMasterBeanDao", e7);
        }
        try {
            this.schoolBeanDao = this.dBConnection_.getDao(SchoolBean.class);
        } catch (SQLException e8) {
            Log.e("FormMetaDataUtil_", "Could not create DAO schoolBeanDao", e8);
        }
    }
}
