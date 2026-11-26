package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.HealthInfraAssignedBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberPregnancyStatusBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.MergedFamiliesBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.model.RchVillageProfileBean;
import com.argusoft.sewa.android.app.model.ReadNotificationsBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class SewaFhsServiceImpl_ extends SewaFhsServiceImpl {
    private static SewaFhsServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private SewaFhsServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static SewaFhsServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            SewaFhsServiceImpl_ sewaFhsServiceImpl_ = new SewaFhsServiceImpl_(context.getApplicationContext());
            instance_ = sewaFhsServiceImpl_;
            sewaFhsServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        this.context = this.context_;
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.familyBeanDao = dBConnection.getDao(FamilyBean.class);
        } catch (SQLException e) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO familyBeanDao", e);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e2) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO memberBeanDao", e2);
        }
        try {
            this.locationBeanDao = this.dBConnection_.getDao(LocationBean.class);
        } catch (SQLException e3) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO locationBeanDao", e3);
        }
        try {
            this.fhwServiceDetailBeanDao = this.dBConnection_.getDao(FhwServiceDetailBean.class);
        } catch (SQLException e4) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO fhwServiceDetailBeanDao", e4);
        }
        try {
            this.versionBeanDao = this.dBConnection_.getDao(VersionBean.class);
        } catch (SQLException e5) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO versionBeanDao", e5);
        }
        try {
            this.mergedFamiliesBeanDao = this.dBConnection_.getDao(MergedFamiliesBean.class);
        } catch (SQLException e6) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO mergedFamiliesBeanDao", e6);
        }
        try {
            this.loggerBeanDao = this.dBConnection_.getDao(LoggerBean.class);
        } catch (SQLException e7) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO loggerBeanDao", e7);
        }
        try {
            this.notificationBeanDao = this.dBConnection_.getDao(NotificationBean.class);
        } catch (SQLException e8) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO notificationBeanDao", e8);
        }
        try {
            this.questionBeanDao = this.dBConnection_.getDao(QuestionBean.class);
        } catch (SQLException e9) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO questionBeanDao", e9);
        }
        try {
            this.answerBeanDao = this.dBConnection_.getDao(AnswerBean.class);
        } catch (SQLException e10) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO answerBeanDao", e10);
        }
        try {
            this.labelBeanDao = this.dBConnection_.getDao(LabelBean.class);
        } catch (SQLException e11) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO labelBeanDao", e11);
        }
        try {
            this.loginBeanDao = this.dBConnection_.getDao(LoginBean.class);
        } catch (SQLException e12) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO loginBeanDao", e12);
        }
        try {
            this.listValueBeanDao = this.dBConnection_.getDao(ListValueBean.class);
        } catch (SQLException e13) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO listValueBeanDao", e13);
        }
        try {
            this.announcementBeanDao = this.dBConnection_.getDao(AnnouncementBean.class);
        } catch (SQLException e14) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO announcementBeanDao", e14);
        }
        try {
            this.rchVillageProfileBeanDao = this.dBConnection_.getDao(RchVillageProfileBean.class);
        } catch (SQLException e15) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO rchVillageProfileBeanDao", e15);
        }
        try {
            this.locationMasterBeanDao = this.dBConnection_.getDao(LocationMasterBean.class);
        } catch (SQLException e16) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO locationMasterBeanDao", e16);
        }
        try {
            this.libraryBeanDao = this.dBConnection_.getDao(LibraryBean.class);
        } catch (SQLException e17) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO libraryBeanDao", e17);
        }
        try {
            this.migratedMembersBeanDao = this.dBConnection_.getDao(MigratedMembersBean.class);
        } catch (SQLException e18) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO migratedMembersBeanDao", e18);
        }
        try {
            this.readNotificationsBeanDao = this.dBConnection_.getDao(ReadNotificationsBean.class);
        } catch (SQLException e19) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO readNotificationsBeanDao", e19);
        }
        try {
            this.memberPregnancyStatusBeanDao = this.dBConnection_.getDao(MemberPregnancyStatusBean.class);
        } catch (SQLException e20) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO memberPregnancyStatusBeanDao", e20);
        }
        try {
            this.covidTravellersInfoBeanDao = this.dBConnection_.getDao(CovidTravellersInfoBean.class);
        } catch (SQLException e21) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO covidTravellersInfoBeanDao", e21);
        }
        try {
            this.memberRchIdBeanDao = this.dBConnection_.getDao(MemberRchIdBean.class);
        } catch (SQLException e22) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO memberRchIdBeanDao", e22);
        }
        try {
            this.healthInfraAssignedBeanDao = this.dBConnection_.getDao(HealthInfraAssignedBean.class);
        } catch (SQLException e23) {
            Log.e("SewaFhsServiceImpl_", "Could not create DAO healthInfraAssignedBeanDao", e23);
        }
    }
}
