package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.util.Log;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignRescheduleBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.ChlorinationStatusBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.DataQualityBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.FormAccessibilityBean;
import com.argusoft.sewa.android.app.model.HealthInfraAssignedBean;
import com.argusoft.sewa.android.app.model.HealthInfraTypeLocationBean;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.IncentiveOccurrenceBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationCoordinatesBean;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.LocationTypeBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.argusoft.sewa.android.app.model.MemberPregnancyStatusBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.MenuBean;
import com.argusoft.sewa.android.app.model.MergedFamiliesBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.PreviousYearIncentive;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.model.RchVillageProfileBean;
import com.argusoft.sewa.android.app.model.ReadNotificationsBean;
import com.argusoft.sewa.android.app.model.SchoolBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleExceptionBean;
import com.argusoft.sewa.android.app.model.SmartReferralScheduleMasterBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.model.UserBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class TechoServiceImpl_ extends TechoServiceImpl {
    private static TechoServiceImpl_ instance_;
    private Context context_;
    private DBConnection dBConnection_;

    private TechoServiceImpl_(Context context) {
        this.context_ = context;
    }

    public static TechoServiceImpl_ getInstance_(Context context) {
        if (instance_ == null) {
            OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(null);
            TechoServiceImpl_ techoServiceImpl_ = new TechoServiceImpl_(context.getApplicationContext());
            instance_ = techoServiceImpl_;
            techoServiceImpl_.init_();
            OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
        }
        return instance_;
    }

    private void init_() {
        this.sewaService = SewaServiceImpl_.getInstance_(this.context_);
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this.context_);
        this.libraryDownloadService = LibraryDownloadServiceImpl_.getInstance_(this.context_);
        this.locationService = LocationMasterServiceImpl_.getInstance_(this.context_);
        this.notificationService = NotificationServiceImpl_.getInstance_(this.context_);
        this.lmsDownloadService = LmsDownloadServiceImpl_.getInstance_(this.context_);
        this.lmsService = LmsServiceImpl_.getInstance_(this.context_);
        this.context = this.context_;
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this.context_, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.menuBeanDao = dBConnection.getDao(MenuBean.class);
        } catch (SQLException e) {
            Log.e("TechoServiceImpl_", "Could not create DAO menuBeanDao", e);
        }
        try {
            this.versionBeanDao = this.dBConnection_.getDao(VersionBean.class);
        } catch (SQLException e2) {
            Log.e("TechoServiceImpl_", "Could not create DAO versionBeanDao", e2);
        }
        try {
            this.familyBeanDao = this.dBConnection_.getDao(FamilyBean.class);
        } catch (SQLException e3) {
            Log.e("TechoServiceImpl_", "Could not create DAO familyBeanDao", e3);
        }
        try {
            this.memberBeanDao = this.dBConnection_.getDao(MemberBean.class);
        } catch (SQLException e4) {
            Log.e("TechoServiceImpl_", "Could not create DAO memberBeanDao", e4);
        }
        try {
            this.locationBeanDao = this.dBConnection_.getDao(LocationBean.class);
        } catch (SQLException e5) {
            Log.e("TechoServiceImpl_", "Could not create DAO locationBeanDao", e5);
        }
        try {
            this.fhwServiceDetailBeanDao = this.dBConnection_.getDao(FhwServiceDetailBean.class);
        } catch (SQLException e6) {
            Log.e("TechoServiceImpl_", "Could not create DAO fhwServiceDetailBeanDao", e6);
        }
        try {
            this.mergedFamiliesBeanDao = this.dBConnection_.getDao(MergedFamiliesBean.class);
        } catch (SQLException e7) {
            Log.e("TechoServiceImpl_", "Could not create DAO mergedFamiliesBeanDao", e7);
        }
        try {
            this.formAccessibilityBeanDao = this.dBConnection_.getDao(FormAccessibilityBean.class);
        } catch (SQLException e8) {
            Log.e("TechoServiceImpl_", "Could not create DAO formAccessibilityBeanDao", e8);
        }
        try {
            this.notificationBeanDao = this.dBConnection_.getDao(NotificationBean.class);
        } catch (SQLException e9) {
            Log.e("TechoServiceImpl_", "Could not create DAO notificationBeanDao", e9);
        }
        try {
            this.questionBeanDao = this.dBConnection_.getDao(QuestionBean.class);
        } catch (SQLException e10) {
            Log.e("TechoServiceImpl_", "Could not create DAO questionBeanDao", e10);
        }
        try {
            this.answerBeanDao = this.dBConnection_.getDao(AnswerBean.class);
        } catch (SQLException e11) {
            Log.e("TechoServiceImpl_", "Could not create DAO answerBeanDao", e11);
        }
        try {
            this.labelBeanDao = this.dBConnection_.getDao(LabelBean.class);
        } catch (SQLException e12) {
            Log.e("TechoServiceImpl_", "Could not create DAO labelBeanDao", e12);
        }
        try {
            this.loginBeanDao = this.dBConnection_.getDao(LoginBean.class);
        } catch (SQLException e13) {
            Log.e("TechoServiceImpl_", "Could not create DAO loginBeanDao", e13);
        }
        try {
            this.listValueBeanDao = this.dBConnection_.getDao(ListValueBean.class);
        } catch (SQLException e14) {
            Log.e("TechoServiceImpl_", "Could not create DAO listValueBeanDao", e14);
        }
        try {
            this.dataQualityBeanDao = this.dBConnection_.getDao(DataQualityBean.class);
        } catch (SQLException e15) {
            Log.e("TechoServiceImpl_", "Could not create DAO dataQualityBeanDao", e15);
        }
        try {
            this.announcementBeanDao = this.dBConnection_.getDao(AnnouncementBean.class);
        } catch (SQLException e16) {
            Log.e("TechoServiceImpl_", "Could not create DAO announcementBeanDao", e16);
        }
        try {
            this.rchVillageProfileBeanDao = this.dBConnection_.getDao(RchVillageProfileBean.class);
        } catch (SQLException e17) {
            Log.e("TechoServiceImpl_", "Could not create DAO rchVillageProfileBeanDao", e17);
        }
        try {
            this.locationMasterBeanDao = this.dBConnection_.getDao(LocationMasterBean.class);
        } catch (SQLException e18) {
            Log.e("TechoServiceImpl_", "Could not create DAO locationMasterBeanDao", e18);
        }
        try {
            this.libraryBeanDao = this.dBConnection_.getDao(LibraryBean.class);
        } catch (SQLException e19) {
            Log.e("TechoServiceImpl_", "Could not create DAO libraryBeanDao", e19);
        }
        try {
            this.migratedMembersBeanDao = this.dBConnection_.getDao(MigratedMembersBean.class);
        } catch (SQLException e20) {
            Log.e("TechoServiceImpl_", "Could not create DAO migratedMembersBeanDao", e20);
        }
        try {
            this.readNotificationsBeanDao = this.dBConnection_.getDao(ReadNotificationsBean.class);
        } catch (SQLException e21) {
            Log.e("TechoServiceImpl_", "Could not create DAO readNotificationsBeanDao", e21);
        }
        try {
            this.memberCbacDetailBeanDao = this.dBConnection_.getDao(MemberCbacDetailBean.class);
        } catch (SQLException e22) {
            Log.e("TechoServiceImpl_", "Could not create DAO memberCbacDetailBeanDao", e22);
        }
        try {
            this.healthInfrastructureBeanDao = this.dBConnection_.getDao(HealthInfrastructureBean.class);
        } catch (SQLException e23) {
            Log.e("TechoServiceImpl_", "Could not create DAO healthInfrastructureBeanDao", e23);
        }
        try {
            this.smartReferralScheduleMasterBeanDao = this.dBConnection_.getDao(SmartReferralScheduleMasterBean.class);
        } catch (SQLException e24) {
            Log.e("TechoServiceImpl_", "Could not create DAO smartReferralScheduleMasterBeanDao", e24);
        }
        try {
            this.smartReferralScheduleExceptionBeanDao = this.dBConnection_.getDao(SmartReferralScheduleExceptionBean.class);
        } catch (SQLException e25) {
            Log.e("TechoServiceImpl_", "Could not create DAO smartReferralScheduleExceptionBeanDao", e25);
        }
        try {
            this.schoolBeanDao = this.dBConnection_.getDao(SchoolBean.class);
        } catch (SQLException e26) {
            Log.e("TechoServiceImpl_", "Could not create DAO schoolBeanDao", e26);
        }
        try {
            this.locationCoordinatesBeansDao = this.dBConnection_.getDao(LocationCoordinatesBean.class);
        } catch (SQLException e27) {
            Log.e("TechoServiceImpl_", "Could not create DAO locationCoordinatesBeansDao", e27);
        }
        try {
            this.storeAnswerBeanDao = this.dBConnection_.getDao(StoreAnswerBean.class);
        } catch (SQLException e28) {
            Log.e("TechoServiceImpl_", "Could not create DAO storeAnswerBeanDao", e28);
        }
        try {
            this.pregnancyStatusBeanDao = this.dBConnection_.getDao(MemberPregnancyStatusBean.class);
        } catch (SQLException e29) {
            Log.e("TechoServiceImpl_", "Could not create DAO pregnancyStatusBeanDao", e29);
        }
        try {
            this.covidTravellersInfoBeanDao = this.dBConnection_.getDao(CovidTravellersInfoBean.class);
        } catch (SQLException e30) {
            Log.e("TechoServiceImpl_", "Could not create DAO covidTravellersInfoBeanDao", e30);
        }
        try {
            this.migratedFamilyBeanDao = this.dBConnection_.getDao(MigratedFamilyBean.class);
        } catch (SQLException e31) {
            Log.e("TechoServiceImpl_", "Could not create DAO migratedFamilyBeanDao", e31);
        }
        try {
            this.courseBeanDao = this.dBConnection_.getDao(LmsCourseBean.class);
        } catch (SQLException e32) {
            Log.e("TechoServiceImpl_", "Could not create DAO courseBeanDao", e32);
        }
        try {
            this.lmsUserMetadataBeanDao = this.dBConnection_.getDao(LmsUserMetaDataBean.class);
        } catch (SQLException e33) {
            Log.e("TechoServiceImpl_", "Could not create DAO lmsUserMetadataBeanDao", e33);
        }
        try {
            this.lmsViewedMediaBeanDao = this.dBConnection_.getDao(LmsViewedMediaBean.class);
        } catch (SQLException e34) {
            Log.e("TechoServiceImpl_", "Could not create DAO lmsViewedMediaBeanDao", e34);
        }
        try {
            this.memberRchIdBeanDao = this.dBConnection_.getDao(MemberRchIdBean.class);
        } catch (SQLException e35) {
            Log.e("TechoServiceImpl_", "Could not create DAO memberRchIdBeanDao", e35);
        }
        try {
            this.incentiveMasterBeanDao = this.dBConnection_.getDao(IncentiveMaster.class);
        } catch (SQLException e36) {
            Log.e("TechoServiceImpl_", "Could not create DAO incentiveMasterBeanDao", e36);
        }
        try {
            this.incentiveMonthlyDetailsBeanDao = this.dBConnection_.getDao(IncentiveMonthlyDetailsBean.class);
        } catch (SQLException e37) {
            Log.e("TechoServiceImpl_", "Could not create DAO incentiveMonthlyDetailsBeanDao", e37);
        }
        try {
            this.userBeanDao = this.dBConnection_.getDao(UserBean.class);
        } catch (SQLException e38) {
            Log.e("TechoServiceImpl_", "Could not create DAO userBeanDao", e38);
        }
        try {
            this.previousYearIncentiveDao = this.dBConnection_.getDao(PreviousYearIncentive.class);
        } catch (SQLException e39) {
            Log.e("TechoServiceImpl_", "Could not create DAO previousYearIncentiveDao", e39);
        }
        try {
            this.healthInfraTypeLocationBeanDao = this.dBConnection_.getDao(HealthInfraTypeLocationBean.class);
        } catch (SQLException e40) {
            Log.e("TechoServiceImpl_", "Could not create DAO healthInfraTypeLocationBeanDao", e40);
        }
        try {
            this.locationTypeBeanDao = this.dBConnection_.getDao(LocationTypeBean.class);
        } catch (SQLException e41) {
            Log.e("TechoServiceImpl_", "Could not create DAO locationTypeBeanDao", e41);
        }
        try {
            this.campaignMasterBeanDao = this.dBConnection_.getDao(CampaignMasterBean.class);
        } catch (SQLException e42) {
            Log.e("TechoServiceImpl_", "Could not create DAO campaignMasterBeanDao", e42);
        }
        try {
            this.campaignSessionBeanDao = this.dBConnection_.getDao(CampaignSessionBean.class);
        } catch (SQLException e43) {
            Log.e("TechoServiceImpl_", "Could not create DAO campaignSessionBeanDao", e43);
        }
        try {
            this.healthInfraAssignedBeanDao = this.dBConnection_.getDao(HealthInfraAssignedBean.class);
        } catch (SQLException e44) {
            Log.e("TechoServiceImpl_", "Could not create DAO healthInfraAssignedBeanDao", e44);
        }
        try {
            this.incentiveOccurrenceBeansDao = this.dBConnection_.getDao(IncentiveOccurrenceBean.class);
        } catch (SQLException e45) {
            Log.e("TechoServiceImpl_", "Could not create DAO incentiveOccurrenceBeansDao", e45);
        }
        try {
            this.campaignRescheduleBeanDao = this.dBConnection_.getDao(CampaignRescheduleBean.class);
        } catch (SQLException e46) {
            Log.e("TechoServiceImpl_", "Could not create DAO campaignRescheduleBeanDao", e46);
        }
        try {
            this.chlorinationStatusBeanDao = this.dBConnection_.getDao(ChlorinationStatusBean.class);
        } catch (SQLException e47) {
            Log.e("TechoServiceImpl_", "Could not create DAO chlorinationStatusBeanDao", e47);
        }
    }
}
