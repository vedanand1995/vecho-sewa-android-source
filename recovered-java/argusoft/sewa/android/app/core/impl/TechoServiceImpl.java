package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.TechoService;
import com.argusoft.sewa.android.app.databean.AnnouncementMobDataBean;
import com.argusoft.sewa.android.app.databean.CampaignSessionDataBean;
import com.argusoft.sewa.android.app.databean.ComponentTagBean;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveMasterDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveMonthlyDetailsDataBean;
import com.argusoft.sewa.android.app.databean.IncentiveOccurrenceDetailsDataBean;
import com.argusoft.sewa.android.app.databean.LibraryDataBean;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsUserLessonMetaData;
import com.argusoft.sewa.android.app.databean.LmsUserMetaData;
import com.argusoft.sewa.android.app.databean.LoggedInUserPrincipleDataBean;
import com.argusoft.sewa.android.app.databean.LoginRequestParamDetailDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.MigratedFamilyDataBean;
import com.argusoft.sewa.android.app.databean.MigratedMembersDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.databean.QueryMobDataBean;
import com.argusoft.sewa.android.app.databean.RchVillageProfileDataBean;
import com.argusoft.sewa.android.app.databean.SurveyLocationMobDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
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
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.service.GPSTracker;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.table.TableUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.http.util.ByteArrayBuffer;

/* loaded from: classes.dex */
public class TechoServiceImpl implements TechoService {
    private static final String MAX_MODIFIED_ON = "MAX(modifiedOn)";
    private static final String MAX_UPDATED_ON = "MAX(updatedOn)";
    private static final String TAG = "TechoServiceImpl";
    Dao<AnnouncementBean, Integer> announcementBeanDao;
    Dao<AnswerBean, Integer> answerBeanDao;
    Dao<CampaignMasterBean, Integer> campaignMasterBeanDao;
    Dao<CampaignRescheduleBean, Integer> campaignRescheduleBeanDao;
    Dao<CampaignSessionBean, Integer> campaignSessionBeanDao;
    Dao<ChlorinationStatusBean, Integer> chlorinationStatusBeanDao;
    Context context;
    Dao<LmsCourseBean, Integer> courseBeanDao;
    Dao<CovidTravellersInfoBean, Integer> covidTravellersInfoBeanDao;
    Dao<DataQualityBean, Integer> dataQualityBeanDao;
    Dao<FamilyBean, Integer> familyBeanDao;
    Dao<FhwServiceDetailBean, Integer> fhwServiceDetailBeanDao;
    Dao<FormAccessibilityBean, Integer> formAccessibilityBeanDao;
    Dao<HealthInfraAssignedBean, Integer> healthInfraAssignedBeanDao;
    Dao<HealthInfraTypeLocationBean, Integer> healthInfraTypeLocationBeanDao;
    Dao<HealthInfrastructureBean, Integer> healthInfrastructureBeanDao;
    Dao<IncentiveMaster, Integer> incentiveMasterBeanDao;
    Dao<IncentiveMonthlyDetailsBean, Integer> incentiveMonthlyDetailsBeanDao;
    Dao<IncentiveOccurrenceBean, Integer> incentiveOccurrenceBeansDao;
    Dao<LabelBean, Integer> labelBeanDao;
    Dao<LibraryBean, Integer> libraryBeanDao;
    LibraryDownloadServiceImpl libraryDownloadService;
    Dao<ListValueBean, Integer> listValueBeanDao;
    LmsDownloadServiceImpl lmsDownloadService;
    LmsServiceImpl lmsService;
    Dao<LmsUserMetaDataBean, Integer> lmsUserMetadataBeanDao;
    Dao<LmsViewedMediaBean, Integer> lmsViewedMediaBeanDao;
    Dao<LocationBean, Integer> locationBeanDao;
    Dao<LocationCoordinatesBean, Integer> locationCoordinatesBeansDao;
    Dao<LocationMasterBean, Integer> locationMasterBeanDao;
    LocationMasterServiceImpl locationService;
    Dao<LocationTypeBean, Integer> locationTypeBeanDao;
    Dao<LoginBean, Integer> loginBeanDao;
    Dao<MemberBean, Integer> memberBeanDao;
    Dao<MemberCbacDetailBean, Integer> memberCbacDetailBeanDao;
    Dao<MemberRchIdBean, Integer> memberRchIdBeanDao;
    Dao<MenuBean, Integer> menuBeanDao;
    Dao<MergedFamiliesBean, Integer> mergedFamiliesBeanDao;
    Dao<MigratedFamilyBean, Integer> migratedFamilyBeanDao;
    Dao<MigratedMembersBean, Integer> migratedMembersBeanDao;
    Dao<NotificationBean, Integer> notificationBeanDao;
    NotificationServiceImpl notificationService;
    Dao<MemberPregnancyStatusBean, Integer> pregnancyStatusBeanDao;
    Dao<PreviousYearIncentive, Integer> previousYearIncentiveDao;
    Dao<QuestionBean, Integer> questionBeanDao;
    Dao<RchVillageProfileBean, Integer> rchVillageProfileBeanDao;
    Dao<ReadNotificationsBean, Integer> readNotificationsBeanDao;
    Dao<SchoolBean, Integer> schoolBeanDao;
    SewaServiceImpl sewaService;
    SewaServiceRestClientImpl sewaServiceRestClient;
    Dao<SmartReferralScheduleExceptionBean, Integer> smartReferralScheduleExceptionBeanDao;
    Dao<SmartReferralScheduleMasterBean, Integer> smartReferralScheduleMasterBeanDao;
    Dao<StoreAnswerBean, Integer> storeAnswerBeanDao;
    Dao<UserBean, Integer> userBeanDao;
    Dao<VersionBean, Integer> versionBeanDao;
    private SewaTransformer sewaTransformer = SewaTransformer.getInstance();
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
    private SimpleDateFormat sdf2 = new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4, Locale.getDefault());

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public Map<String, Boolean> checkIfDeviceIsBlockedOrDeleteDatabase() {
        String deviceId;
        HashMap map = new HashMap();
        map.put("isBlocked", false);
        map.put("isDatabaseDeleted", false);
        try {
            deviceId = SharedStructureData.telephonyManager.getDeviceId();
        } catch (RestHttpException | SecurityException | SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        if (deviceId != null && !deviceId.isEmpty()) {
            if (this.sewaService.isOnline()) {
                Map<String, Object> mapCheckIfDeviceIsBlockedOrDeleteDatabase = this.sewaServiceRestClient.checkIfDeviceIsBlockedOrDeleteDatabase(deviceId);
                if (mapCheckIfDeviceIsBlockedOrDeleteDatabase != null && !mapCheckIfDeviceIsBlockedOrDeleteDatabase.isEmpty()) {
                    Object obj = mapCheckIfDeviceIsBlockedOrDeleteDatabase.get(GlobalTypes.BLOCKED_DEVICE_IS_BLOCK_DEVICE);
                    Object obj2 = mapCheckIfDeviceIsBlockedOrDeleteDatabase.get(GlobalTypes.BLOCKED_DEVICE_IS_DELETE_DATABASE);
                    if (obj != null && Boolean.TRUE.equals(Boolean.valueOf(obj.toString()))) {
                        map.put("isBlocked", true);
                        storeVersionBeanForBlockedImei(true);
                        deleteDatabaseFileFromLocal(this.context);
                    } else if (obj2 != null && Boolean.TRUE.equals(Boolean.valueOf(obj2.toString()))) {
                        map.put("isDatabaseDeleted", true);
                        deleteDatabaseFileFromLocal(this.context);
                        this.sewaServiceRestClient.removeEntryForDeviceOfIMEI(deviceId);
                    } else {
                        storeVersionBeanForBlockedImei(false);
                    }
                } else {
                    storeVersionBeanForBlockedImei(false);
                }
            } else {
                List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_IMEI_BLOCKED);
                if (listQueryForEq != null && !listQueryForEq.isEmpty() && listQueryForEq.get(0).getValue().equals(MorbiditiesConstant.ONE_PLUS)) {
                    map.put("isBlocked", true);
                }
            }
            return map;
        }
        return map;
    }

    private void storeVersionBeanForBlockedImei(boolean z) {
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_IMEI_BLOCKED);
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                VersionBean versionBean = listQueryForEq.get(0);
                if (z) {
                    versionBean.setValue(MorbiditiesConstant.ONE_PLUS);
                } else {
                    versionBean.setValue("0");
                }
                this.versionBeanDao.update((Dao<VersionBean, Integer>) versionBean);
                return;
            }
            VersionBean versionBean2 = new VersionBean();
            versionBean2.setKey(GlobalTypes.VERSION_IMEI_BLOCKED);
            if (z) {
                versionBean2.setValue(MorbiditiesConstant.ONE_PLUS);
            } else {
                versionBean2.setValue("0");
            }
            this.versionBeanDao.create((Dao<VersionBean, Integer>) versionBean2);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void deleteDatabaseFileFromLocal(Context context) {
        try {
            File file = new File(SewaConstants.DIR_DATABASE);
            if (file.isDirectory()) {
                for (String str : file.list()) {
                    new File(file, str).delete();
                }
            }
        } catch (Exception e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public Boolean syncMergedFamiliesInformationWithServer() {
        try {
            List<MergedFamiliesBean> listQuery = this.mergedFamiliesBeanDao.queryBuilder().where().eq("isSyncedWithServer", false).query();
            if (listQuery != null && !listQuery.isEmpty()) {
                if (Boolean.TRUE.equals(this.sewaServiceRestClient.syncMergedFamiliesInformationWithServer(listQuery))) {
                    UpdateBuilder<MergedFamiliesBean, Integer> updateBuilder = this.mergedFamiliesBeanDao.updateBuilder();
                    updateBuilder.where().eq("isSyncedWithServer", false);
                    updateBuilder.updateColumnValue("isSyncedWithServer", true);
                    updateBuilder.update();
                }
            }
            return true;
        } catch (RestHttpException | SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            return false;
        }
    }

    private void setImeiAndPhoneNumberInLoginParam(LoginRequestParamDetailDataBean loginRequestParamDetailDataBean) {
        try {
            loginRequestParamDetailDataBean.setImeiNumber(SharedStructureData.telephonyManager.getDeviceId());
            loginRequestParamDetailDataBean.setPhoneNumber(SharedStructureData.telephonyManager.getLine1Number());
        } catch (SecurityException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void fetchLocationMasterData() {
        String str;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            if (this.locationMasterBeanDao.countOf() > 0) {
                String[] firstResult = this.locationMasterBeanDao.queryRaw(this.locationMasterBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult == null || (str = firstResult[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLocation(null);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLocation(String.valueOf(this.sdf.parse(str).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForLocation(null);
            }
            Date date = new Date();
            Log.i(TAG, LabelConstants.CALLING_LOCATION_MASTER_API);
            List<LocationMasterBean> locationMasterData = this.sewaServiceRestClient.getLocationMasterData(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_LOCATION_MASTER_API_RETRIEVED + UtilBean.getDifferenceBetweenTwoDates(date, new Date()));
            if (loginRequestParamDetailDataBean.getLastUpdateDateForLocation() != null) {
                storeLocationMasterBeans(locationMasterData, false);
                return;
            }
            Log.i(TAG, LabelConstants.ALL_LOCATION_MASTER_COUNT + locationMasterData.size());
            TableUtils.clearTable(this.locationMasterBeanDao.getConnectionSource(), LocationMasterBean.class);
            storeLocationMasterBeans(locationMasterData, true);
        } catch (Exception e) {
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_FETCHING_DATA_FOR_USER;
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForFHW() {
        boolean zStoreUpdatedFamilyData;
        Date modifiedOn;
        String str;
        List<VersionBean> listQueryForEq;
        String str2;
        List<VersionBean> listQueryForEq2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType("F");
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            if (this.familyBeanDao.countOf() > 0 && this.memberBeanDao.countOf() > 0) {
                String[] firstResult = this.familyBeanDao.queryRaw(this.familyBeanDao.queryBuilder().selectRaw("MAX(updatedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult != null && (str12 = firstResult[0]) != null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForFamily(String.valueOf(this.sdf.parse(str12).getTime()));
                }
            }
            if (this.notificationBeanDao.countOf() > 0) {
                String[] firstResult2 = this.notificationBeanDao.queryRaw(this.notificationBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult2 == null || (str11 = firstResult2[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForNotifications(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForNotifications(Long.valueOf(this.sdf.parse(str11).getTime()));
                }
            }
            if (this.incentiveMasterBeanDao.countOf() > 0) {
                String[] firstResult3 = this.incentiveMasterBeanDao.queryRaw(this.incentiveMasterBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult3 == null || (str10 = firstResult3[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveMaster(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveMaster(Long.valueOf(this.sdf.parse(str10).getTime()));
                }
            }
            if (this.incentiveMonthlyDetailsBeanDao.countOf() > 0) {
                String[] firstResult4 = this.incentiveMonthlyDetailsBeanDao.queryRaw(this.incentiveMonthlyDetailsBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult4 == null || (str9 = firstResult4[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveDetails(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveDetails(Long.valueOf(this.sdf.parse(str9).getTime()));
                }
            }
            if (this.migratedMembersBeanDao.countOf() > 0) {
                String[] firstResult5 = this.migratedMembersBeanDao.queryRaw(this.migratedMembersBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult5 == null || (str8 = firstResult5[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForMigrationDetails(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForMigrationDetails(Long.valueOf(this.sdf.parse(str8).getTime()));
                }
            }
            if (this.campaignMasterBeanDao.countOf() > 0) {
                String[] firstResult6 = this.campaignMasterBeanDao.queryRaw(this.campaignMasterBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult6 == null || (str7 = firstResult6[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForCampaignSessions(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForCampaignSessions(Long.valueOf(this.sdf.parse(str7).getTime()));
                }
            }
            if (this.readNotificationsBeanDao.countOf() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<ReadNotificationsBean> it = this.readNotificationsBeanDao.queryForAll().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getNotificationId());
                }
                loginRequestParamDetailDataBean.setReadNotifications(arrayList);
            }
            if (this.libraryBeanDao.countOf() > 0) {
                String[] firstResult7 = this.libraryBeanDao.queryRaw(this.libraryBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult7 == null || (str6 = firstResult7[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(Long.valueOf(this.sdf.parse(str6).getTime()));
                }
            }
            if (this.announcementBeanDao.countOf() > 0) {
                String[] firstResult8 = this.announcementBeanDao.queryRaw(this.announcementBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult8 == null || (str5 = firstResult8[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(Long.valueOf(this.sdf.parse(str5).getTime()));
                }
            }
            if (this.listValueBeanDao.countOf() > 0) {
                String[] firstResult9 = this.listValueBeanDao.queryRaw(this.listValueBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult9 == null || (str4 = firstResult9[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(Long.valueOf(this.sdf.parse(str4).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
            }
            if (this.dataQualityBeanDao.countOf() > 0) {
                String[] firstResult10 = this.dataQualityBeanDao.queryRaw(this.dataQualityBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult10 == null || (str3 = firstResult10[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForDataQualityValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForDataQualityValue(Long.valueOf(this.sdf.parse(str3).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForDataQualityValue(0L);
            }
            if (this.pregnancyStatusBeanDao.countOf() > 0 && (listQueryForEq2 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_PREGNANCY_STATUS)) != null && !listQueryForEq2.isEmpty()) {
                loginRequestParamDetailDataBean.setLastUpdateDateForPregnancyStatus(Long.valueOf(listQueryForEq2.get(0).getValue()));
            }
            if (this.labelBeanDao.countOf() > 0) {
                String[] firstResult11 = this.labelBeanDao.queryRaw(this.labelBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult11 == null || (str2 = firstResult11[0]) == null) {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
                } else {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(Long.valueOf(this.sdf.parse(str2).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
            }
            List<VersionBean> listQueryForEq3 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.FHW_SHEET_VERSION);
            HashMap map = new HashMap();
            if (listQueryForEq3 == null || listQueryForEq3.isEmpty()) {
                map.put(GlobalTypes.FHW_SHEET_VERSION, 0);
            } else {
                map.put(GlobalTypes.FHW_SHEET_VERSION, Integer.valueOf(listQueryForEq3.get(0).getVersion()));
            }
            loginRequestParamDetailDataBean.setSheetNameVersionMap(map);
            if (this.healthInfrastructureBeanDao.countOf() > 0 && (listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_HEALTH_INFRASTRUCTURE)) != null && !listQueryForEq.isEmpty()) {
                loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(Long.valueOf(listQueryForEq.get(0).getValue()));
            }
            if (this.schoolBeanDao.countOf() > 0) {
                String[] firstResult12 = this.schoolBeanDao.queryRaw(this.schoolBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult12 != null && (str = firstResult12[0]) != null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForSchoolMaster(String.valueOf(this.sdf.parse(str).getTime()));
                }
            }
            if (this.menuBeanDao.countOf() > 0 && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            Date date = new Date();
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA);
            LoggedInUserPrincipleDataBean details = this.sewaServiceRestClient.getDetails(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + UtilBean.getDifferenceBetweenTwoDates(date, new Date()));
            if (details == null) {
                return;
            }
            if (details.getDeletedFamilies() != null && !details.getDeletedFamilies().isEmpty()) {
                Log.i(TAG, LabelConstants.DELETE_FAMILIES_COUNT + details.getDeletedFamilies().size());
                deleteFamiliesFromDatabaseFHW(details.getDeletedFamilies());
            }
            if (details.getAssignedFamilies() != null && !details.getAssignedFamilies().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_FAMILIES_COUNT + details.getAssignedFamilies().size());
                storeAllAssignedFamilies(details.getAssignedFamilies());
            }
            if (details.getUpdatedFamilyByDate() == null || details.getUpdatedFamilyByDate().isEmpty()) {
                zStoreUpdatedFamilyData = true;
            } else {
                Log.i(TAG, LabelConstants.UPDATED_FAMILIES_COUNT + details.getUpdatedFamilyByDate().size());
                zStoreUpdatedFamilyData = storeUpdatedFamilyData(details.getUpdatedFamilyByDate());
            }
            if (details.getLocationsForFamilyDataDeletion() != null && !details.getLocationsForFamilyDataDeletion().isEmpty() && zStoreUpdatedFamilyData) {
                Log.i(TAG, LabelConstants.DELETE_FAMILIES_BY_LOCATION_COUNT + details.getLocationsForFamilyDataDeletion().size());
                deleteFamiliesByLocationFHW(details.getLocationsForFamilyDataDeletion());
            }
            if (details.getFhwServiceStatusDtos() == null || details.getFhwServiceStatusDtos().isEmpty()) {
                TableUtils.clearTable(this.fhwServiceDetailBeanDao.getConnectionSource(), FhwServiceDetailBean.class);
            } else {
                Log.i(TAG, LabelConstants.FHW_SERVICE_STATUS_COUNT + details.getFhwServiceStatusDtos().size());
                storeFhwServiceDetailBeans(details.getFhwServiceStatusDtos());
            }
            if (details.getOrphanedAndReverificationFamilies() != null && !details.getOrphanedAndReverificationFamilies().isEmpty()) {
                Log.i(TAG, LabelConstants.ORPHANED_AND_REVERIFICATION_FAMILIES_COUNT + details.getOrphanedAndReverificationFamilies().size());
                storeOrphanedAndReverificationFamiliesForFHW(details.getOrphanedAndReverificationFamilies());
            }
            if (details.getRetrievedVillageAndChildLocations() != null && !details.getRetrievedVillageAndChildLocations().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_LOCATIONS_AND_CHILD_LOCATIONS_COUNT + details.getRetrievedVillageAndChildLocations().size());
                storeLocationBeansAssignedToUser(details.getRetrievedVillageAndChildLocations());
            }
            if (details.getCsvCoordinates() != null) {
                storeLocationCoordinates(details.getCsvCoordinates());
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForNotifications() != null) {
                if (details.getDeletedNotifications() != null && !details.getDeletedNotifications().isEmpty()) {
                    Log.i(TAG, LabelConstants.DELETED_NOTIFICATIONS_COUNT + details.getDeletedNotifications().size());
                    deleteNotificationsForUser(details.getDeletedNotifications());
                }
                if (details.getNotifications() != null && !details.getNotifications().isEmpty()) {
                    Log.i(TAG, LabelConstants.NOTIFICATIONS_COUNT + details.getNotifications().size());
                    storeNotificationsForUser(details.getNotifications(), new Date(loginRequestParamDetailDataBean.getLastUpdateDateForNotifications().longValue()));
                }
            } else if (details.getNotifications() == null || details.getNotifications().isEmpty()) {
                TableUtils.clearTable(this.notificationBeanDao.getConnectionSource(), NotificationBean.class);
            } else {
                Log.i(TAG, LabelConstants.NOTIFICATIONS_COUNT + details.getNotifications().size());
                storeNotificationsForUser(details.getNotifications(), null);
            }
            if (details.getRchVillageProfileDataBeans() != null && !details.getRchVillageProfileDataBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.RCH_VILLAGE_PROFILES_COUNT + details.getRchVillageProfileDataBeans().size());
                storeRchVillageProfileBeanFromServer(details.getRchVillageProfileDataBeans());
            }
            if (details.getMigratedMembersDataBeans() != null && !details.getMigratedMembersDataBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.MIGRATED_MEMBERS_COUNT + details.getMigratedMembersDataBeans().size());
                storeMigrationDetails(details.getMigratedMembersDataBeans());
            }
            if (details.getMigratedFamilyDataBeans() != null && !details.getMigratedFamilyDataBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.MIGRATED_FAMILY_COUNT + details.getMigratedFamilyDataBeans().size());
                storeMigrationFamilyDetails(details.getMigratedFamilyDataBeans());
            }
            if (details.getRetrievedLabels() != null) {
                Log.i(TAG, LabelConstants.LABELS_COUNT + details.getRetrievedLabels().getResult().size());
                storeLabelsDetailsToDatabase(details.getRetrievedLabels());
            }
            if (details.getRetrievedXlsData() != null && !details.getRetrievedXlsData().isEmpty()) {
                Log.i(TAG, LabelConstants.XLS_DATA_COUNT + details.getRetrievedXlsData().size());
                storeXlsDataToDatabaseForFHW(details.getRetrievedXlsData(), details.getCurrentSheetVersion());
            }
            if (details.getRetrievedListValues() != null && !details.getRetrievedListValues().isEmpty()) {
                Log.i(TAG, LabelConstants.LIST_VALUES_COUNT + details.getRetrievedListValues().size());
                storeAllListValues(details.getRetrievedListValues());
            }
            if (details.getDataQualityBeans() != null && !details.getDataQualityBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.DATA_QUALITY_VALUES_COUNT + details.getDataQualityBeans().size());
                storeAllDataQualityValues(details.getDataQualityBeans());
            }
            storePregnancyStatusBeans(details);
            if (details.getRetrievedAnnouncements() == null || details.getRetrievedAnnouncements().isEmpty()) {
                downloadAnnouncementFileFromServer();
            } else {
                Log.i(TAG, LabelConstants.ANNOUNCEMENTS_COUNT + details.getRetrievedAnnouncements().size());
                storeAllAnnouncement(details.getRetrievedAnnouncements());
            }
            if (details.getFeatures() == null || details.getFeatures().isEmpty()) {
                DeleteBuilder<VersionBean, Integer> deleteBuilder = this.versionBeanDao.deleteBuilder();
                deleteBuilder.where().eq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                deleteBuilder.delete();
            } else {
                List<VersionBean> listQueryForEq4 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                if (listQueryForEq4 == null || listQueryForEq4.isEmpty()) {
                    VersionBean versionBean = new VersionBean();
                    versionBean.setKey(GlobalTypes.VERSION_FEATURES_LIST);
                    versionBean.setValue(UtilBean.stringListJoin(details.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.create((Dao<VersionBean, Integer>) versionBean);
                } else {
                    VersionBean versionBean2 = listQueryForEq4.get(0);
                    versionBean2.setValue(UtilBean.stringListJoin(details.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.update((Dao<VersionBean, Integer>) versionBean2);
                }
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForHealthInfrastructure() == null) {
                TableUtils.clearTable(this.healthInfrastructureBeanDao.getConnectionSource(), HealthInfrastructureBean.class);
                Log.i(TAG, LabelConstants.ALL_HEALTH_INFRASTRUCTURES_COUNT + details.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(details.getHealthInfrastructures(), true);
            } else {
                Log.i(TAG, LabelConstants.HEALTH_INFRASTRUCTURES_COUNT + details.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(details.getHealthInfrastructures(), false);
            }
            if (details.getFhsLastUpdateTime() != null) {
                Log.i(TAG, LabelConstants.FHS_LAST_UPDATE_TIME + details.getFhsLastUpdateTime());
                storeFhsLastUpdateTime(details.getFhsLastUpdateTime());
            }
            if (details.getAmrutpanEnabled() != null) {
                storeAmrutpanEnabledFlag(details.getAmrutpanEnabled().booleanValue());
            }
            if (details.getShowYearEndSummary() != null) {
                Log.i(TAG, LabelConstants.SHOW_YEAR_END_SUMMARY + details.getShowYearEndSummary());
                storeYearEndSummaryFlag(details.getShowYearEndSummary());
            }
            if (details.getMobileLibraryDataBeans() != null && !details.getMobileLibraryDataBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.LIBRARY_COUNT + details.getMobileLibraryDataBeans().size());
                storeLibraryDataBeans(details.getMobileLibraryDataBeans());
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForCampaignSessions() == null) {
                TableUtils.clearTable(this.campaignMasterBeanDao.getConnectionSource(), CampaignMasterBean.class);
                TableUtils.clearTable(this.campaignSessionBeanDao.getConnectionSource(), CampaignSessionBean.class);
                TableUtils.clearTable(this.campaignRescheduleBeanDao.getConnectionSource(), CampaignRescheduleBean.class);
                Log.i(TAG, LabelConstants.ALL_CAMPAIGN_COUNT + details.getCampaignSessionMasterBeanList().size());
                storeCampaignDetails(details.getCampaignSessionMasterBeanList(), Boolean.TRUE);
            } else if (details.getCampaignSessionMasterBeanList() != null && !details.getCampaignSessionMasterBeanList().isEmpty()) {
                Log.i(TAG, LabelConstants.CAMPAIGN_COUNT + details.getCampaignSessionMasterBeanList().size());
                storeCampaignDetails(details.getCampaignSessionMasterBeanList(), Boolean.FALSE);
            }
            storeLmsCourses(details.getCourseDataBeans());
            storeLmsUserMetaData(details.getLmsUserMetaData());
            storeMenuDetails(details.getMobileMenus());
            storeHealthInfraTypeLocationDetails(details.getHealthInfraTypeLocationBeanList());
            storeLocationTypeDetails(details.getLocationTypeBeanList());
            storeIncentiveMasterBeans(details.getIncentiveMasterBeans());
            storeIncentiveMonthlyDetailsDetails(details.getIncentiveMonthlyDetails());
            storeUserDetails(details.getUsers());
            storeHealthInfraAssignedDetails(details.getHealthInfraAssignedBeans());
            storeChlorinationStatusAreas(details.getVbdsChlorinationStatusAreas());
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.SQL_EXCEPTION;
            SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_SQL);
        } catch (Exception e2) {
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_FETCHING_DATA_FOR_USER;
            Log.e(TAG, e2.getMessage(), e2);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForASHA() {
        Date modifiedOn;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType(GlobalTypes.ANNOUNCE_FOR_ASHA);
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            if (this.familyBeanDao.countOf() > 0) {
                String[] firstResult = this.familyBeanDao.queryRaw(this.familyBeanDao.queryBuilder().selectRaw("MAX(updatedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult != null && (str11 = firstResult[0]) != null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForFamily(String.valueOf(this.sdf.parse(str11).getTime()));
                }
            }
            if (this.incentiveMasterBeanDao.countOf() > 0) {
                String[] firstResult2 = this.incentiveMasterBeanDao.queryRaw(this.incentiveMasterBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult2 == null || (str10 = firstResult2[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveMaster(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveMaster(Long.valueOf(this.sdf.parse(str10).getTime()));
                }
            }
            if (this.incentiveMonthlyDetailsBeanDao.countOf() > 0) {
                String[] firstResult3 = this.incentiveMonthlyDetailsBeanDao.queryRaw(this.incentiveMonthlyDetailsBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult3 == null || (str9 = firstResult3[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveDetails(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveDetails(Long.valueOf(this.sdf.parse(str9).getTime()));
                }
            }
            if (this.incentiveOccurrenceBeansDao.countOf() > 0) {
                String[] firstResult4 = this.incentiveOccurrenceBeansDao.queryRaw(this.incentiveOccurrenceBeansDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult4 == null || (str8 = firstResult4[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveOccurrenceDetails(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveOccurrenceDetails(Long.valueOf(this.sdf.parse(str8).getTime()));
                }
            }
            if (this.memberCbacDetailBeanDao.countOf() > 0) {
                String[] firstResult5 = this.memberCbacDetailBeanDao.queryRaw(this.memberCbacDetailBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult5 == null || (str7 = firstResult5[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForCbacDetails(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForCbacDetails(Long.valueOf(this.sdf.parse(str7).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForCbacDetails(0L);
            }
            if (this.libraryBeanDao.countOf() > 0) {
                String[] firstResult6 = this.libraryBeanDao.queryRaw(this.libraryBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult6 == null || (str6 = firstResult6[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(Long.valueOf(this.sdf.parse(str6).getTime()));
                }
            }
            if (this.announcementBeanDao.countOf() > 0) {
                String[] firstResult7 = this.libraryBeanDao.queryRaw(this.announcementBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult7 == null || (str5 = firstResult7[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(Long.valueOf(this.sdf.parse(str5).getTime()));
                }
            }
            if (this.listValueBeanDao.countOf() > 0) {
                String[] firstResult8 = this.listValueBeanDao.queryRaw(this.listValueBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult8 == null || (str4 = firstResult8[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(Long.valueOf(this.sdf.parse(str4).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
            }
            if (this.labelBeanDao.countOf() > 0) {
                String[] firstResult9 = this.labelBeanDao.queryRaw(this.labelBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult9 == null || (str3 = firstResult9[0]) == null) {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
                } else {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(Long.valueOf(this.sdf.parse(str3).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
            }
            if (this.notificationBeanDao.countOf() > 0) {
                String[] firstResult10 = this.notificationBeanDao.queryRaw(this.notificationBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult10 == null || (str2 = firstResult10[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForNotifications(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForNotifications(Long.valueOf(this.sdf.parse(str2).getTime()));
                }
            }
            if (this.readNotificationsBeanDao.countOf() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<ReadNotificationsBean> it = this.readNotificationsBeanDao.queryForAll().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getNotificationId());
                }
                loginRequestParamDetailDataBean.setReadNotifications(arrayList);
            }
            if (this.campaignMasterBeanDao.countOf() > 0) {
                String[] firstResult11 = this.campaignMasterBeanDao.queryRaw(this.campaignMasterBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult11 == null || (str = firstResult11[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForCampaignSessions(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForCampaignSessions(Long.valueOf(this.sdf.parse(str).getTime()));
                }
            }
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.ASHA_SHEET_VERSION);
            HashMap map = new HashMap();
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                map.put(GlobalTypes.ASHA_SHEET_VERSION, 0);
            } else {
                map.put(GlobalTypes.ASHA_SHEET_VERSION, Integer.valueOf(listQueryForEq.get(0).getVersion()));
            }
            loginRequestParamDetailDataBean.setSheetNameVersionMap(map);
            List<VersionBean> listQueryForEq2 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_HEALTH_INFRASTRUCTURE);
            if (listQueryForEq2 != null && !listQueryForEq2.isEmpty() && listQueryForEq2.get(0).getValue() != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(Long.valueOf(listQueryForEq2.get(0).getValue()));
                if (this.healthInfrastructureBeanDao.countOf() == 0) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(null);
                }
            }
            if (this.menuBeanDao.countOf() > 0 && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA + new Date());
            LoggedInUserPrincipleDataBean detailsForAsha = this.sewaServiceRestClient.getDetailsForAsha(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + new Date());
            if (detailsForAsha.getAssignedFamilies() != null && !detailsForAsha.getAssignedFamilies().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_FAMILIES_COUNT + detailsForAsha.getAssignedFamilies().size());
                storeAllAssignedFamilies(detailsForAsha.getAssignedFamilies());
            }
            if (detailsForAsha.getUpdatedFamilyByDate() != null && !detailsForAsha.getUpdatedFamilyByDate().isEmpty()) {
                Log.i(TAG, LabelConstants.UPDATED_FAMILIES_COUNT + detailsForAsha.getUpdatedFamilyByDate().size());
                storeUpdatedFamilyData(detailsForAsha.getUpdatedFamilyByDate());
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForNotifications() != null) {
                if (detailsForAsha.getDeletedNotifications() != null && !detailsForAsha.getDeletedNotifications().isEmpty()) {
                    Log.i(TAG, LabelConstants.DELETED_NOTIFICATIONS_COUNT + detailsForAsha.getDeletedNotifications().size());
                    deleteNotificationsForUser(detailsForAsha.getDeletedNotifications());
                }
                if (detailsForAsha.getNotifications() != null && !detailsForAsha.getNotifications().isEmpty()) {
                    Log.i(TAG, LabelConstants.NOTIFICATIONS_COUNT + detailsForAsha.getNotifications().size());
                    storeNotificationsForUser(detailsForAsha.getNotifications(), new Date(loginRequestParamDetailDataBean.getLastUpdateDateForNotifications().longValue()));
                }
            } else if (detailsForAsha.getNotifications() == null || detailsForAsha.getNotifications().isEmpty()) {
                TableUtils.clearTable(this.notificationBeanDao.getConnectionSource(), NotificationBean.class);
            } else {
                Log.i(TAG, LabelConstants.NOTIFICATIONS_COUNT + detailsForAsha.getNotifications().size());
                storeNotificationsForUser(detailsForAsha.getNotifications(), null);
            }
            if (detailsForAsha.getFeatures() == null || detailsForAsha.getFeatures().isEmpty()) {
                DeleteBuilder<VersionBean, Integer> deleteBuilder = this.versionBeanDao.deleteBuilder();
                deleteBuilder.where().eq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                deleteBuilder.delete();
            } else {
                List<VersionBean> listQueryForEq3 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                if (listQueryForEq3 == null || listQueryForEq3.isEmpty()) {
                    VersionBean versionBean = new VersionBean();
                    versionBean.setKey(GlobalTypes.VERSION_FEATURES_LIST);
                    versionBean.setValue(UtilBean.stringListJoin(detailsForAsha.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.create((Dao<VersionBean, Integer>) versionBean);
                } else {
                    VersionBean versionBean2 = listQueryForEq3.get(0);
                    versionBean2.setValue(UtilBean.stringListJoin(detailsForAsha.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.update((Dao<VersionBean, Integer>) versionBean2);
                }
            }
            if (detailsForAsha.getMemberCbacDetails() != null && !detailsForAsha.getMemberCbacDetails().isEmpty()) {
                Log.i(TAG, LabelConstants.CBAC_DETAILS_COUNT + detailsForAsha.getMemberCbacDetails().size());
                storeCbacDetailsToDatabaseForASHA(detailsForAsha.getMemberCbacDetails());
            }
            if (detailsForAsha.getRetrievedLabels() != null) {
                Log.i(TAG, LabelConstants.LABELS_COUNT + detailsForAsha.getRetrievedLabels().getResult().size());
                storeLabelsDetailsToDatabase(detailsForAsha.getRetrievedLabels());
            }
            if (detailsForAsha.getRetrievedListValues() != null && !detailsForAsha.getRetrievedListValues().isEmpty()) {
                Log.i(TAG, LabelConstants.LIST_VALUES_COUNT + detailsForAsha.getRetrievedListValues().size());
                storeAllListValues(detailsForAsha.getRetrievedListValues());
            }
            if (detailsForAsha.getRetrievedAnnouncements() == null || detailsForAsha.getRetrievedAnnouncements().isEmpty()) {
                downloadAnnouncementFileFromServer();
            } else {
                Log.i(TAG, LabelConstants.ANNOUNCEMENTS_COUNT + detailsForAsha.getRetrievedAnnouncements().size());
                storeAllAnnouncement(detailsForAsha.getRetrievedAnnouncements());
            }
            if (detailsForAsha.getRetrievedXlsData() != null && !detailsForAsha.getRetrievedXlsData().isEmpty()) {
                Log.i(TAG, LabelConstants.XLS_DATA_COUNT + detailsForAsha.getRetrievedXlsData().size());
                storeXlsDataToDatabaseForASHA(detailsForAsha.getRetrievedXlsData(), detailsForAsha.getCurrentSheetVersion());
            }
            if (detailsForAsha.getRetrievedVillageAndChildLocations() != null && !detailsForAsha.getRetrievedVillageAndChildLocations().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_LOCATIONS_AND_CHILD_LOCATIONS_COUNT + detailsForAsha.getRetrievedVillageAndChildLocations().size());
                storeLocationBeansAssignedToUser(detailsForAsha.getRetrievedVillageAndChildLocations());
            }
            if (detailsForAsha.getMobileLibraryDataBeans() != null && !detailsForAsha.getMobileLibraryDataBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.LIBRARY_COUNT + detailsForAsha.getMobileLibraryDataBeans().size());
                storeLibraryDataBeans(detailsForAsha.getMobileLibraryDataBeans());
            }
            if (detailsForAsha.getShowYearEndSummary() != null) {
                Log.i(TAG, LabelConstants.SHOW_YEAR_END_SUMMARY + detailsForAsha.getShowYearEndSummary());
                storeYearEndSummaryFlag(detailsForAsha.getShowYearEndSummary());
            }
            storeBaselineModuleCourseIds(detailsForAsha.getBaselineModuleCourseIds());
            if (loginRequestParamDetailDataBean.getLastUpdateDateForHealthInfrastructure() == null) {
                TableUtils.clearTable(this.healthInfrastructureBeanDao.getConnectionSource(), HealthInfrastructureBean.class);
                Log.i(TAG, LabelConstants.ALL_HEALTH_INFRASTRUCTURES_COUNT + detailsForAsha.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForAsha.getHealthInfrastructures(), true);
            } else {
                Log.i(TAG, LabelConstants.HEALTH_INFRASTRUCTURES_COUNT + detailsForAsha.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForAsha.getHealthInfrastructures(), false);
            }
            storeMenuDetails(detailsForAsha.getMobileMenus());
            storeSmartReferralMasterDetails(detailsForAsha.getSmartReferralScheduleMasterBeans(), true);
            storeSmartReferralExceptionDetails(detailsForAsha.getSmartReferralScheduleExceptionBeans(), true);
            storeLmsCourses(detailsForAsha.getCourseDataBeans());
            storeIncentiveMasterBeans(detailsForAsha.getIncentiveMasterBeans());
            storeIncentiveMonthlyDetailsDetails(detailsForAsha.getIncentiveMonthlyDetails());
            storeIncentiveOccurrenceDetails(detailsForAsha.getIncentiveOccurrenceBeans());
            storePreviousYearIncentives(detailsForAsha.getPreviousYearIncentives());
            storeLmsUserMetaData(detailsForAsha.getLmsUserMetaData());
            storeHealthInfraTypeLocationDetails(detailsForAsha.getHealthInfraTypeLocationBeanList());
            storeLocationTypeDetails(detailsForAsha.getLocationTypeBeanList());
            storeHealthInfraAssignedDetails(detailsForAsha.getHealthInfraAssignedBeans());
            if (loginRequestParamDetailDataBean.getLastUpdateDateForCampaignSessions() != null) {
                if (detailsForAsha.getCampaignSessionMasterBeanList() == null || detailsForAsha.getCampaignSessionMasterBeanList().isEmpty()) {
                    return;
                }
                Log.i(TAG, LabelConstants.CAMPAIGN_COUNT + detailsForAsha.getCampaignSessionMasterBeanList().size());
                storeCampaignDetails(detailsForAsha.getCampaignSessionMasterBeanList(), Boolean.FALSE);
                return;
            }
            TableUtils.clearTable(this.campaignMasterBeanDao.getConnectionSource(), CampaignMasterBean.class);
            TableUtils.clearTable(this.campaignSessionBeanDao.getConnectionSource(), CampaignSessionBean.class);
            TableUtils.clearTable(this.campaignRescheduleBeanDao.getConnectionSource(), CampaignRescheduleBean.class);
            Log.i(TAG, LabelConstants.ALL_CAMPAIGN_COUNT + detailsForAsha.getCampaignSessionMasterBeanList().size());
            storeCampaignDetails(detailsForAsha.getCampaignSessionMasterBeanList(), Boolean.TRUE);
        } catch (RestHttpException | SQLException | ParseException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForFHSR() {
        String str;
        Date modifiedOn;
        String str2;
        String str3;
        String str4;
        String str5;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType(GlobalTypes.ANNOUNCE_FOR_ASHA);
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            if (this.libraryBeanDao.countOf() > 0) {
                String strPrepareStatementString = this.libraryBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString();
                Dao<LibraryBean, Integer> dao = this.libraryBeanDao;
                str = LabelConstants.ALL_HEALTH_INFRASTRUCTURES_COUNT;
                String[] firstResult = dao.queryRaw(strPrepareStatementString, new String[0]).getFirstResult();
                if (firstResult == null || (str5 = firstResult[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(Long.valueOf(this.sdf.parse(str5).getTime()));
                }
            } else {
                str = LabelConstants.ALL_HEALTH_INFRASTRUCTURES_COUNT;
            }
            if (this.labelBeanDao.countOf() > 0) {
                String[] firstResult2 = this.labelBeanDao.queryRaw(this.labelBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult2 == null || (str4 = firstResult2[0]) == null) {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
                } else {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(Long.valueOf(this.sdf.parse(str4).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
            }
            if (this.announcementBeanDao.countOf() > 0) {
                String[] firstResult3 = this.libraryBeanDao.queryRaw(this.announcementBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult3 == null || (str3 = firstResult3[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(Long.valueOf(this.sdf.parse(str3).getTime()));
                }
            }
            if (this.listValueBeanDao.countOf() > 0) {
                String[] firstResult4 = this.listValueBeanDao.queryRaw(this.listValueBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult4 == null || (str2 = firstResult4[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(Long.valueOf(this.sdf.parse(str2).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
            }
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_HEALTH_INFRASTRUCTURE);
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(Long.valueOf(listQueryForEq.get(0).getValue()));
                if (this.healthInfrastructureBeanDao.countOf() == 0) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(null);
                }
            }
            if (this.menuBeanDao.countOf() > 0 && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA + new Date());
            LoggedInUserPrincipleDataBean detailsForFHSR = this.sewaServiceRestClient.getDetailsForFHSR(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + new Date());
            if (detailsForFHSR.getRetrievedListValues() != null && !detailsForFHSR.getRetrievedListValues().isEmpty()) {
                Log.i(TAG, LabelConstants.LIST_VALUES_COUNT + detailsForFHSR.getRetrievedListValues().size());
                storeAllListValues(detailsForFHSR.getRetrievedListValues());
            }
            if (detailsForFHSR.getRetrievedVillageAndChildLocations() != null && !detailsForFHSR.getRetrievedVillageAndChildLocations().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_LOCATIONS_AND_CHILD_LOCATIONS_COUNT + detailsForFHSR.getRetrievedVillageAndChildLocations().size());
                storeLocationBeansAssignedToUser(detailsForFHSR.getRetrievedVillageAndChildLocations());
            }
            if (detailsForFHSR.getRetrievedLabels() != null) {
                Log.i(TAG, LabelConstants.LABELS_COUNT + detailsForFHSR.getRetrievedLabels().getResult().size());
                storeLabelsDetailsToDatabase(detailsForFHSR.getRetrievedLabels());
            }
            if (detailsForFHSR.getRetrievedAnnouncements() == null || detailsForFHSR.getRetrievedAnnouncements().isEmpty()) {
                downloadAnnouncementFileFromServer();
            } else {
                Log.i(TAG, LabelConstants.ANNOUNCEMENTS_COUNT + detailsForFHSR.getRetrievedAnnouncements().size());
                storeAllAnnouncement(detailsForFHSR.getRetrievedAnnouncements());
            }
            if (detailsForFHSR.getMobileLibraryDataBeans() != null && !detailsForFHSR.getMobileLibraryDataBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.LIBRARY_COUNT + detailsForFHSR.getMobileLibraryDataBeans().size());
                storeLibraryDataBeans(detailsForFHSR.getMobileLibraryDataBeans());
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForHealthInfrastructure() == null) {
                TableUtils.clearTable(this.healthInfrastructureBeanDao.getConnectionSource(), HealthInfrastructureBean.class);
                Log.i(TAG, str + detailsForFHSR.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForFHSR.getHealthInfrastructures(), true);
            } else {
                Log.i(TAG, LabelConstants.HEALTH_INFRASTRUCTURES_COUNT + detailsForFHSR.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForFHSR.getHealthInfrastructures(), false);
            }
            storeMenuDetails(detailsForFHSR.getMobileMenus());
            storeSmartReferralMasterDetails(detailsForFHSR.getSmartReferralScheduleMasterBeans(), true);
            storeSmartReferralExceptionDetails(detailsForFHSR.getSmartReferralScheduleExceptionBeans(), true);
            if (Boolean.FALSE.equals(SharedStructureData.currentlyDownloadingFamilyData)) {
                SharedStructureData.currentlyDownloadingFamilyData = true;
                AsyncTask.execute(new Runnable() { // from class: com.argusoft.sewa.android.app.core.impl.TechoServiceImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TechoServiceImpl.this.retrieveFamiliesForFHSR();
                    }
                });
            }
        } catch (RestHttpException | SQLException | ParseException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForMO() {
        Date modifiedOn;
        String str;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType("F");
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.FHW_SHEET_VERSION);
            HashMap map = new HashMap();
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                map.put(GlobalTypes.FHW_SHEET_VERSION, 0);
            } else {
                map.put(GlobalTypes.FHW_SHEET_VERSION, Integer.valueOf(listQueryForEq.get(0).getVersion()));
            }
            loginRequestParamDetailDataBean.setSheetNameVersionMap(map);
            if (this.listValueBeanDao.countOf() > 0) {
                String[] firstResult = this.listValueBeanDao.queryRaw(this.listValueBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult == null || (str = firstResult[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(Long.valueOf(this.sdf.parse(str).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
            }
            if (this.menuBeanDao.countOf() > 0 && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            Date date = new Date();
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA);
            LoggedInUserPrincipleDataBean detailsForMO = this.sewaServiceRestClient.getDetailsForMO(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + UtilBean.getDifferenceBetweenTwoDates(date, new Date()));
            if (detailsForMO == null) {
                return;
            }
            if (detailsForMO.getAssignedFamilies() != null && !detailsForMO.getAssignedFamilies().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_FAMILIES_COUNT + detailsForMO.getAssignedFamilies().size());
                storeAllAssignedFamilies(detailsForMO.getAssignedFamilies());
            }
            if (detailsForMO.getRetrievedVillageAndChildLocations() != null && !detailsForMO.getRetrievedVillageAndChildLocations().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_LOCATIONS_AND_CHILD_LOCATIONS_COUNT + detailsForMO.getRetrievedVillageAndChildLocations().size());
                storeLocationBeansAssignedToUser(detailsForMO.getRetrievedVillageAndChildLocations());
            }
            if (detailsForMO.getRetrievedXlsData() != null && !detailsForMO.getRetrievedXlsData().isEmpty()) {
                Log.i(TAG, LabelConstants.XLS_DATA_COUNT + detailsForMO.getRetrievedXlsData().size());
                storeXlsDataToDatabaseForFHW(detailsForMO.getRetrievedXlsData(), detailsForMO.getCurrentSheetVersion());
            }
            if (detailsForMO.getRetrievedListValues() != null && !detailsForMO.getRetrievedListValues().isEmpty()) {
                Log.i(TAG, LabelConstants.LIST_VALUES_COUNT + detailsForMO.getRetrievedListValues().size());
                storeAllListValues(detailsForMO.getRetrievedListValues());
            }
            storeMenuDetails(detailsForMO.getMobileMenus());
            storeLocationTypeDetails(detailsForMO.getLocationTypeBeanList());
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.SQL_EXCEPTION;
            SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_SQL);
        } catch (Exception e2) {
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_FETCHING_DATA_FOR_USER;
            Log.e(TAG, e2.getMessage(), e2);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForRbsk() {
        String str;
        Date modifiedOn;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType(GlobalTypes.ANNOUNCE_FOR_ASHA);
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_HEALTH_INFRASTRUCTURE);
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(Long.valueOf(listQueryForEq.get(0).getValue()));
                if (this.healthInfrastructureBeanDao.countOf() == 0) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(null);
                }
            }
            if (this.menuBeanDao.countOf() > 0 && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            if (this.schoolBeanDao.countOf() > 0) {
                String[] firstResult = this.schoolBeanDao.queryRaw(this.schoolBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult != null && (str = firstResult[0]) != null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForSchoolMaster(String.valueOf(this.sdf.parse(str).getTime()));
                }
            }
            List<VersionBean> listQueryForEq2 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.FHW_SHEET_VERSION);
            HashMap map = new HashMap();
            if (listQueryForEq2 == null || listQueryForEq2.isEmpty()) {
                map.put(GlobalTypes.FHW_SHEET_VERSION, 0);
            } else {
                map.put(GlobalTypes.FHW_SHEET_VERSION, Integer.valueOf(listQueryForEq2.get(0).getVersion()));
            }
            loginRequestParamDetailDataBean.setSheetNameVersionMap(map);
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA + new Date());
            LoggedInUserPrincipleDataBean detailsForRbsk = this.sewaServiceRestClient.getDetailsForRbsk(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + new Date());
            if (loginRequestParamDetailDataBean.getLastUpdateDateForHealthInfrastructure() == null) {
                TableUtils.clearTable(this.healthInfrastructureBeanDao.getConnectionSource(), HealthInfrastructureBean.class);
                Log.i(TAG, LabelConstants.ALL_HEALTH_INFRASTRUCTURES_COUNT + detailsForRbsk.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForRbsk.getHealthInfrastructures(), true);
            } else {
                Log.i(TAG, LabelConstants.HEALTH_INFRASTRUCTURES_COUNT + detailsForRbsk.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForRbsk.getHealthInfrastructures(), false);
            }
            storeSmartReferralMasterDetails(detailsForRbsk.getSmartReferralScheduleMasterBeans(), true);
            storeSmartReferralExceptionDetails(detailsForRbsk.getSmartReferralScheduleExceptionBeans(), true);
            if (detailsForRbsk.getFeatures() == null || detailsForRbsk.getFeatures().isEmpty()) {
                DeleteBuilder<VersionBean, Integer> deleteBuilder = this.versionBeanDao.deleteBuilder();
                deleteBuilder.where().eq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                deleteBuilder.delete();
            } else {
                List<VersionBean> listQueryForEq3 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                if (listQueryForEq3 == null || listQueryForEq3.isEmpty()) {
                    VersionBean versionBean = new VersionBean();
                    versionBean.setKey(GlobalTypes.VERSION_FEATURES_LIST);
                    versionBean.setValue(UtilBean.stringListJoin(detailsForRbsk.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.create((Dao<VersionBean, Integer>) versionBean);
                } else {
                    VersionBean versionBean2 = listQueryForEq3.get(0);
                    versionBean2.setValue(UtilBean.stringListJoin(detailsForRbsk.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.update((Dao<VersionBean, Integer>) versionBean2);
                }
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForSchoolMaster() == null) {
                TableUtils.clearTable(this.schoolBeanDao.getConnectionSource(), SchoolBean.class);
                Log.i(TAG, LabelConstants.ALL_SCHOOLS_COUNT + detailsForRbsk.getSchools().size());
                storeSchoolDetails(detailsForRbsk.getSchools(), true);
            } else {
                Log.i(TAG, LabelConstants.SCHOOLS_COUNT + detailsForRbsk.getSchools().size());
                storeSchoolDetails(detailsForRbsk.getSchools(), false);
            }
            storeMenuDetails(detailsForRbsk.getMobileMenus());
            if (detailsForRbsk.getRetrievedVillageAndChildLocations() != null && !detailsForRbsk.getRetrievedVillageAndChildLocations().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_LOCATIONS_AND_CHILD_LOCATIONS_COUNT + detailsForRbsk.getRetrievedVillageAndChildLocations().size());
                storeLocationBeansAssignedToUser(detailsForRbsk.getRetrievedVillageAndChildLocations());
            }
            if (detailsForRbsk.getRetrievedXlsData() != null && !detailsForRbsk.getRetrievedXlsData().isEmpty()) {
                Log.i(TAG, LabelConstants.XLS_DATA_COUNT + detailsForRbsk.getRetrievedXlsData().size());
                storeXlsDataToDatabaseForFHW(detailsForRbsk.getRetrievedXlsData(), detailsForRbsk.getCurrentSheetVersion());
            }
            storeLocationTypeDetails(detailsForRbsk.getLocationTypeBeanList());
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForOA() {
        String str;
        long j;
        String str2;
        Date modifiedOn;
        String str3;
        String str4;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType(GlobalTypes.ANNOUNCE_FOR_ASHA);
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_HEALTH_INFRASTRUCTURE);
            long j2 = 0;
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(Long.valueOf(listQueryForEq.get(0).getValue()));
                if (this.healthInfrastructureBeanDao.countOf() == 0) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(null);
                }
            }
            if (this.listValueBeanDao.countOf() > 0) {
                String strPrepareStatementString = this.listValueBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString();
                Dao<ListValueBean, Integer> dao = this.listValueBeanDao;
                str = LabelConstants.LIST_VALUES_COUNT;
                String[] firstResult = dao.queryRaw(strPrepareStatementString, new String[0]).getFirstResult();
                if (firstResult == null || (str4 = firstResult[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(Long.valueOf(this.sdf.parse(str4).getTime()));
                }
                j2 = 0;
            } else {
                str = LabelConstants.LIST_VALUES_COUNT;
                loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
            }
            if (this.labelBeanDao.countOf() > j2) {
                String[] firstResult2 = this.labelBeanDao.queryRaw(this.labelBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult2 == null || (str3 = firstResult2[0]) == null) {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
                } else {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(Long.valueOf(this.sdf.parse(str3).getTime()));
                }
                j = 0;
            } else {
                j = 0;
                loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
            }
            if (this.menuBeanDao.countOf() > j && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            if (this.schoolBeanDao.countOf() > 0) {
                String[] firstResult3 = this.schoolBeanDao.queryRaw(this.schoolBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult3 != null && (str2 = firstResult3[0]) != null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForSchoolMaster(String.valueOf(this.sdf.parse(str2).getTime()));
                }
            }
            List<VersionBean> listQueryForEq2 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.FHW_SHEET_VERSION);
            HashMap map = new HashMap();
            if (listQueryForEq2 == null || listQueryForEq2.isEmpty()) {
                map.put(GlobalTypes.FHW_SHEET_VERSION, 0);
            } else {
                map.put(GlobalTypes.FHW_SHEET_VERSION, Integer.valueOf(listQueryForEq2.get(0).getVersion()));
            }
            loginRequestParamDetailDataBean.setSheetNameVersionMap(map);
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA + new Date());
            LoggedInUserPrincipleDataBean detailsForOA = this.sewaServiceRestClient.getDetailsForOA(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + new Date());
            if (loginRequestParamDetailDataBean.getLastUpdateDateForHealthInfrastructure() == null) {
                TableUtils.clearTable(this.healthInfrastructureBeanDao.getConnectionSource(), HealthInfrastructureBean.class);
                Log.i(TAG, LabelConstants.ALL_HEALTH_INFRASTRUCTURES_COUNT + detailsForOA.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForOA.getHealthInfrastructures(), true);
            } else {
                Log.i(TAG, LabelConstants.HEALTH_INFRASTRUCTURES_COUNT + detailsForOA.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForOA.getHealthInfrastructures(), false);
            }
            if (detailsForOA.getSchools() != null) {
                if (loginRequestParamDetailDataBean.getLastUpdateDateForSchoolMaster() == null) {
                    TableUtils.clearTable(this.schoolBeanDao.getConnectionSource(), SchoolBean.class);
                    Log.i(TAG, LabelConstants.ALL_SCHOOLS_COUNT + detailsForOA.getSchools().size());
                    storeSchoolDetails(detailsForOA.getSchools(), true);
                } else {
                    Log.i(TAG, LabelConstants.SCHOOLS_COUNT + detailsForOA.getSchools().size());
                    storeSchoolDetails(detailsForOA.getSchools(), false);
                }
            }
            if (detailsForOA.getFeatures() == null || detailsForOA.getFeatures().isEmpty()) {
                DeleteBuilder<VersionBean, Integer> deleteBuilder = this.versionBeanDao.deleteBuilder();
                deleteBuilder.where().eq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                deleteBuilder.delete();
            } else {
                List<VersionBean> listQueryForEq3 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
                if (listQueryForEq3 == null || listQueryForEq3.isEmpty()) {
                    VersionBean versionBean = new VersionBean();
                    versionBean.setKey(GlobalTypes.VERSION_FEATURES_LIST);
                    versionBean.setValue(UtilBean.stringListJoin(detailsForOA.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.create((Dao<VersionBean, Integer>) versionBean);
                } else {
                    VersionBean versionBean2 = listQueryForEq3.get(0);
                    versionBean2.setValue(UtilBean.stringListJoin(detailsForOA.getFeatures(), GlobalTypes.COMMA));
                    this.versionBeanDao.update((Dao<VersionBean, Integer>) versionBean2);
                }
            }
            storeMenuDetails(detailsForOA.getMobileMenus());
            if (detailsForOA.getRetrievedListValues() != null && !detailsForOA.getRetrievedListValues().isEmpty()) {
                Log.i(TAG, str + detailsForOA.getRetrievedListValues().size());
                storeAllListValues(detailsForOA.getRetrievedListValues());
            }
            if (detailsForOA.getRetrievedVillageAndChildLocations() != null && !detailsForOA.getRetrievedVillageAndChildLocations().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_LOCATIONS_AND_CHILD_LOCATIONS_COUNT + detailsForOA.getRetrievedVillageAndChildLocations().size());
                storeLocationBeansAssignedToUser(detailsForOA.getRetrievedVillageAndChildLocations());
            }
            if (detailsForOA.getRetrievedLabels() != null) {
                Log.i(TAG, LabelConstants.LABELS_COUNT + detailsForOA.getRetrievedLabels().getResult().size());
                storeLabelsDetailsToDatabase(detailsForOA.getRetrievedLabels());
            }
            if (detailsForOA.getRetrievedXlsData() != null && !detailsForOA.getRetrievedXlsData().isEmpty()) {
                Log.i(TAG, LabelConstants.XLS_DATA_COUNT + detailsForOA.getRetrievedXlsData().size());
                storeXlsDataToDatabaseForFHW(detailsForOA.getRetrievedXlsData(), detailsForOA.getCurrentSheetVersion());
            }
            storeLocationTypeDetails(detailsForOA.getLocationTypeBeanList());
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForAWW() {
        String str;
        Date modifiedOn;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType(GlobalTypes.ANNOUNCE_FOR_ASHA);
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            if (this.familyBeanDao.countOf() > 0) {
                String[] firstResult = this.familyBeanDao.queryRaw(this.familyBeanDao.queryBuilder().selectRaw("MAX(updatedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult != null && (str7 = firstResult[0]) != null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForFamily(String.valueOf(this.sdf.parse(str7).getTime()));
                }
            }
            if (this.notificationBeanDao.countOf() > 0) {
                String strPrepareStatementString = this.notificationBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString();
                Dao<NotificationBean, Integer> dao = this.notificationBeanDao;
                str = LabelConstants.LABELS_COUNT;
                String[] firstResult2 = dao.queryRaw(strPrepareStatementString, new String[0]).getFirstResult();
                if (firstResult2 == null || (str6 = firstResult2[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForNotifications(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForNotifications(Long.valueOf(this.sdf.parse(str6).getTime()));
                }
            } else {
                str = LabelConstants.LABELS_COUNT;
            }
            if (this.libraryBeanDao.countOf() > 0) {
                String[] firstResult3 = this.libraryBeanDao.queryRaw(this.libraryBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult3 == null || (str5 = firstResult3[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForLibrary(Long.valueOf(this.sdf.parse(str5).getTime()));
                }
            }
            if (this.listValueBeanDao.countOf() > 0) {
                String[] firstResult4 = this.listValueBeanDao.queryRaw(this.listValueBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult4 == null || (str4 = firstResult4[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(Long.valueOf(this.sdf.parse(str4).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
            }
            if (this.labelBeanDao.countOf() > 0) {
                String[] firstResult5 = this.labelBeanDao.queryRaw(this.labelBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult5 == null || (str3 = firstResult5[0]) == null) {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
                } else {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(Long.valueOf(this.sdf.parse(str3).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
            }
            if (this.announcementBeanDao.countOf() > 0) {
                String[] firstResult6 = this.libraryBeanDao.queryRaw(this.announcementBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult6 == null || (str2 = firstResult6[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateOfAnnouncements(Long.valueOf(this.sdf.parse(str2).getTime()));
                }
            }
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.AWW_SHEET_VERSION);
            HashMap map = new HashMap();
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                map.put(GlobalTypes.AWW_SHEET_VERSION, 0);
            } else {
                map.put(GlobalTypes.AWW_SHEET_VERSION, Integer.valueOf(listQueryForEq.get(0).getVersion()));
            }
            loginRequestParamDetailDataBean.setSheetNameVersionMap(map);
            List<VersionBean> listQueryForEq2 = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_HEALTH_INFRASTRUCTURE);
            if (listQueryForEq2 != null && !listQueryForEq2.isEmpty()) {
                loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(Long.valueOf(listQueryForEq2.get(0).getValue()));
                if (this.healthInfrastructureBeanDao.countOf() == 0) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForHealthInfrastructure(null);
                }
            }
            if (this.menuBeanDao.countOf() > 0 && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA + new Date());
            LoggedInUserPrincipleDataBean detailsForAww = this.sewaServiceRestClient.getDetailsForAww(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + new Date());
            if (detailsForAww.getAssignedFamilies() != null && !detailsForAww.getAssignedFamilies().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_FAMILIES_COUNT + detailsForAww.getAssignedFamilies().size());
                storeAllAssignedFamilies(detailsForAww.getAssignedFamilies());
            }
            if (detailsForAww.getUpdatedFamilyByDate() != null && !detailsForAww.getUpdatedFamilyByDate().isEmpty()) {
                Log.i(TAG, LabelConstants.UPDATED_FAMILIES_COUNT + detailsForAww.getUpdatedFamilyByDate().size());
                storeUpdatedFamilyData(detailsForAww.getUpdatedFamilyByDate());
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForNotifications() != null) {
                if (detailsForAww.getDeletedNotifications() != null && !detailsForAww.getDeletedNotifications().isEmpty()) {
                    Log.i(TAG, LabelConstants.DELETED_NOTIFICATIONS_COUNT + detailsForAww.getDeletedNotifications().size());
                    deleteNotificationsForUser(detailsForAww.getDeletedNotifications());
                }
                if (detailsForAww.getNotifications() != null && !detailsForAww.getNotifications().isEmpty()) {
                    Log.i(TAG, LabelConstants.NOTIFICATIONS_COUNT + detailsForAww.getNotifications().size());
                    storeNotificationsForUser(detailsForAww.getNotifications(), new Date(loginRequestParamDetailDataBean.getLastUpdateDateForNotifications().longValue()));
                }
            } else if (detailsForAww.getNotifications() == null || detailsForAww.getNotifications().isEmpty()) {
                TableUtils.clearTable(this.notificationBeanDao.getConnectionSource(), NotificationBean.class);
            } else {
                Log.i(TAG, LabelConstants.NOTIFICATIONS_COUNT + detailsForAww.getNotifications().size());
                storeNotificationsForUser(detailsForAww.getNotifications(), null);
            }
            if (detailsForAww.getRetrievedLabels() != null) {
                Log.i(TAG, str + detailsForAww.getRetrievedLabels().getResult().size());
                storeLabelsDetailsToDatabase(detailsForAww.getRetrievedLabels());
            }
            if (detailsForAww.getRetrievedListValues() != null && !detailsForAww.getRetrievedListValues().isEmpty()) {
                Log.i(TAG, LabelConstants.LIST_VALUES_COUNT + detailsForAww.getRetrievedListValues().size());
                storeAllListValues(detailsForAww.getRetrievedListValues());
            }
            if (detailsForAww.getRetrievedAnnouncements() == null || detailsForAww.getRetrievedAnnouncements().isEmpty()) {
                downloadAnnouncementFileFromServer();
            } else {
                Log.i(TAG, LabelConstants.ANNOUNCEMENTS_COUNT + detailsForAww.getRetrievedAnnouncements().size());
                storeAllAnnouncement(detailsForAww.getRetrievedAnnouncements());
            }
            if (detailsForAww.getRetrievedXlsData() != null && !detailsForAww.getRetrievedXlsData().isEmpty()) {
                Log.i(TAG, LabelConstants.XLS_DATA_COUNT + detailsForAww.getRetrievedXlsData().size());
                storeXlsDataToDatabaseForAWW(detailsForAww.getRetrievedXlsData(), detailsForAww.getCurrentSheetVersion());
            }
            if (detailsForAww.getRetrievedVillageAndChildLocations() != null && !detailsForAww.getRetrievedVillageAndChildLocations().isEmpty()) {
                Log.i(TAG, LabelConstants.ASSIGNED_LOCATIONS_AND_CHILD_LOCATIONS_COUNT + detailsForAww.getRetrievedVillageAndChildLocations().size());
                storeLocationBeansAssignedToUser(detailsForAww.getRetrievedVillageAndChildLocations());
            }
            if (detailsForAww.getMobileLibraryDataBeans() != null && !detailsForAww.getMobileLibraryDataBeans().isEmpty()) {
                Log.i(TAG, LabelConstants.LIBRARY_COUNT + detailsForAww.getMobileLibraryDataBeans().size());
                storeLibraryDataBeans(detailsForAww.getMobileLibraryDataBeans());
            }
            if (loginRequestParamDetailDataBean.getLastUpdateDateForHealthInfrastructure() == null) {
                TableUtils.clearTable(this.healthInfrastructureBeanDao.getConnectionSource(), HealthInfrastructureBean.class);
                Log.i(TAG, LabelConstants.ALL_HEALTH_INFRASTRUCTURES_COUNT + detailsForAww.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForAww.getHealthInfrastructures(), true);
            } else {
                Log.i(TAG, LabelConstants.HEALTH_INFRASTRUCTURES_COUNT + detailsForAww.getHealthInfrastructures().size());
                storeHealthInfrastructureDetails(detailsForAww.getHealthInfrastructures(), false);
            }
            storeSmartReferralMasterDetails(detailsForAww.getSmartReferralScheduleMasterBeans(), true);
            storeSmartReferralExceptionDetails(detailsForAww.getSmartReferralScheduleExceptionBeans(), true);
            storeMenuDetails(detailsForAww.getMobileMenus());
        } catch (RestHttpException | SQLException | ParseException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retrieveFamiliesForFHSR() {
        String[] strArrQueryRawFirst;
        String str;
        if (SewaTransformer.loginBean.getVillageCode() == null || SewaTransformer.loginBean.getVillageCode().isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = SewaTransformer.loginBean.getVillageCode().split(":");
        int length = strArrSplit.length;
        char c = 0;
        int i = 0;
        while (i < length) {
            Iterator<LocationBean> it = this.locationService.retrieveLocationBeansByLevelAndParent(5, Long.valueOf(strArrSplit[i])).iterator();
            while (it.hasNext()) {
                Long lValueOf = Long.valueOf(it.next().getActualID().longValue());
                try {
                    List<LocationBean> listRetrieveLocationBeansByLevelAndParent = this.locationService.retrieveLocationBeansByLevelAndParent(6, Long.valueOf(r0.getActualID().intValue()));
                    ArrayList arrayList2 = new ArrayList();
                    for (LocationBean locationBean : listRetrieveLocationBeansByLevelAndParent) {
                        arrayList2.add(locationBean.getActualID());
                        arrayList.add(locationBean.getActualID());
                    }
                    String strValueOf = (this.familyBeanDao.countOf() <= 0 || (strArrQueryRawFirst = this.familyBeanDao.queryBuilder().selectRaw("MAX(updatedOn)").where().in("locationId", arrayList2).queryRawFirst()) == null || (str = strArrQueryRawFirst[c]) == null) ? null : String.valueOf(this.sdf.parse(str).getTime());
                    List<FamilyDataBean> familiesByLocationId = this.sewaServiceRestClient.getFamiliesByLocationId(lValueOf, strValueOf);
                    if (strValueOf != null) {
                        ArrayList arrayList3 = new ArrayList();
                        Iterator<FamilyDataBean> it2 = familiesByLocationId.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(it2.next().getFamilyId());
                        }
                        DeleteBuilder<FamilyBean, Integer> deleteBuilder = this.familyBeanDao.deleteBuilder();
                        deleteBuilder.where().in("familyId", arrayList3);
                        deleteBuilder.delete();
                        DeleteBuilder<MemberBean, Integer> deleteBuilder2 = this.memberBeanDao.deleteBuilder();
                        deleteBuilder2.where().in("familyId", arrayList3);
                        deleteBuilder2.delete();
                    }
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    for (FamilyDataBean familyDataBean : familiesByLocationId) {
                        List<MemberDataBean> members = familyDataBean.getMembers();
                        if (members != null && !members.isEmpty()) {
                            Iterator<MemberDataBean> it3 = members.iterator();
                            while (it3.hasNext()) {
                                arrayList5.add(new MemberBean(it3.next()));
                            }
                        }
                        arrayList4.add(new FamilyBean(familyDataBean));
                    }
                    this.familyBeanDao.create(arrayList4);
                    this.memberBeanDao.create(arrayList5);
                } catch (RestHttpException | SQLException | ParseException e) {
                    Log.e(TAG, e.getMessage(), e);
                }
                c = 0;
            }
            i++;
            c = 0;
        }
        if (!arrayList.isEmpty()) {
            try {
                ArrayList arrayList6 = new ArrayList();
                Iterator<FamilyBean> it4 = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().notIn("locationId", arrayList).query().iterator();
                while (it4.hasNext()) {
                    arrayList6.add(it4.next().getFamilyId());
                }
                DeleteBuilder<FamilyBean, Integer> deleteBuilder3 = this.familyBeanDao.deleteBuilder();
                deleteBuilder3.where().in("familyId", arrayList6);
                deleteBuilder3.delete();
                DeleteBuilder<MemberBean, Integer> deleteBuilder4 = this.memberBeanDao.deleteBuilder();
                deleteBuilder4.where().in("familyId", arrayList6);
                deleteBuilder4.delete();
            } catch (SQLException e2) {
                Log.e(TAG, e2.getMessage(), e2);
            }
        }
        SharedStructureData.currentlyDownloadingFamilyData = false;
    }

    private void storeLocationBeansAssignedToUser(Map<Long, List<SurveyLocationMobDataBean>> map) {
        try {
            TableUtils.clearTable(this.locationBeanDao.getConnectionSource(), LocationBean.class);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
        if (map != null) {
            try {
                Iterator<Map.Entry<Long, List<SurveyLocationMobDataBean>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    Iterator<LocationBean> it2 = this.sewaTransformer.convertLocationDataBeanToLocationModel(it.next().getValue(), null).iterator();
                    while (it2.hasNext()) {
                        this.locationBeanDao.createOrUpdate(it2.next());
                    }
                }
            } catch (SQLException e2) {
                Log.e(TAG, e2.getMessage(), e2);
            }
        }
    }

    private void storeLocationCoordinates(QueryMobDataBean queryMobDataBean) throws SQLException {
        TableUtils.clearTable(this.locationCoordinatesBeansDao.getConnectionSource(), LocationCoordinatesBean.class);
        List<LinkedHashMap<String, Object>> result = queryMobDataBean.getResult();
        if (result.isEmpty()) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (LinkedHashMap<String, Object> linkedHashMap : result) {
            Object obj = linkedHashMap.get("lgd_code");
            Object obj2 = linkedHashMap.get("coordinates_csv");
            if (obj != null && obj2 != null) {
                LocationCoordinatesBean locationCoordinatesBean = new LocationCoordinatesBean();
                locationCoordinatesBean.setLgdCode(obj.toString());
                locationCoordinatesBean.setCoordinates(obj2.toString());
                linkedList.add(locationCoordinatesBean);
            }
        }
        this.locationCoordinatesBeansDao.create(linkedList);
    }

    private void deleteFamiliesFromDatabaseFHW(List<String> list) {
        for (String str : list) {
            DeleteBuilder<FamilyBean, Integer> deleteBuilder = this.familyBeanDao.deleteBuilder();
            DeleteBuilder<MemberBean, Integer> deleteBuilder2 = this.memberBeanDao.deleteBuilder();
            try {
                deleteBuilder.where().eq("familyId", str);
                deleteBuilder.delete();
                deleteBuilder2.where().eq("familyId", str);
                deleteBuilder2.delete();
            } catch (SQLException e) {
                Log.e(TAG, e.getMessage(), e);
            }
        }
    }

    private void deleteFamiliesByLocationFHW(List<Long> list) {
        try {
            LinkedList linkedList = new LinkedList();
            Iterator<FamilyBean> it = this.familyBeanDao.queryBuilder().selectColumns("familyId").where().in("locationId", list).query().iterator();
            while (it.hasNext()) {
                linkedList.add(it.next().getFamilyId());
            }
            DeleteBuilder<MemberBean, Integer> deleteBuilder = this.memberBeanDao.deleteBuilder();
            deleteBuilder.where().in("familyId", linkedList);
            deleteBuilder.delete();
            DeleteBuilder<FamilyBean, Integer> deleteBuilder2 = this.familyBeanDao.deleteBuilder();
            deleteBuilder2.where().in("familyId", linkedList);
            deleteBuilder2.delete();
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeAllAssignedFamilies(List<FamilyDataBean> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            TableUtils.clearTable(this.memberBeanDao.getConnectionSource(), MemberBean.class);
            TableUtils.clearTable(this.familyBeanDao.getConnectionSource(), FamilyBean.class);
            for (FamilyDataBean familyDataBean : list) {
                List<MemberDataBean> members = familyDataBean.getMembers();
                int i = 0;
                if (members != null && !members.isEmpty()) {
                    for (MemberDataBean memberDataBean : members) {
                        arrayList2.add(new MemberBean(memberDataBean));
                        if (memberDataBean.getHealthIdNumber() == null && !FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.contains(memberDataBean.getState())) {
                            i++;
                        }
                    }
                }
                familyDataBean.setPendingAbhaCount(i);
                FamilyBean familyBean = new FamilyBean(familyDataBean);
                familyBean.setAssignedTo(SewaTransformer.loginBean.getUserID());
                arrayList.add(familyBean);
            }
            this.memberBeanDao.create(arrayList2);
            this.familyBeanDao.create(arrayList);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private boolean storeUpdatedFamilyData(List<FamilyDataBean> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<FamilyDataBean> it = list.iterator();
        while (true) {
            int i = 0;
            if (it.hasNext()) {
                FamilyDataBean next = it.next();
                arrayList3.add(next.getFamilyId());
                List<MemberDataBean> members = next.getMembers();
                if (members != null && !members.isEmpty()) {
                    for (MemberDataBean memberDataBean : members) {
                        arrayList2.add(new MemberBean(memberDataBean));
                        if (memberDataBean.getHealthIdNumber() == null && !FhsConstants.FHS_INACTIVE_CRITERIA_MEMBER_STATES.contains(memberDataBean.getState())) {
                            i++;
                        }
                    }
                }
                next.setPendingAbhaCount(i);
                FamilyBean familyBean = new FamilyBean(next);
                familyBean.setAssignedTo(SewaTransformer.loginBean.getUserID());
                arrayList.add(familyBean);
            } else {
                try {
                    DeleteBuilder<FamilyBean, Integer> deleteBuilder = this.familyBeanDao.deleteBuilder();
                    deleteBuilder.where().in("familyId", arrayList3);
                    deleteBuilder.delete();
                    DeleteBuilder<MemberBean, Integer> deleteBuilder2 = this.memberBeanDao.deleteBuilder();
                    deleteBuilder2.where().in("familyId", arrayList3);
                    deleteBuilder2.delete();
                    this.memberBeanDao.create(arrayList2);
                    this.familyBeanDao.create(arrayList);
                    return true;
                } catch (SQLException e) {
                    Log.e(TAG, e.getMessage(), e);
                    return false;
                }
            }
        }
    }

    private void storeFhwServiceDetailBeans(List<FhwServiceDetailBean> list) {
        try {
            TableUtils.clearTable(this.fhwServiceDetailBeanDao.getConnectionSource(), FhwServiceDetailBean.class);
            Iterator<FhwServiceDetailBean> it = list.iterator();
            while (it.hasNext()) {
                this.fhwServiceDetailBeanDao.create((Dao<FhwServiceDetailBean, Integer>) it.next());
            }
        } catch (SQLException e) {
            Log.e(TAG, "SQL Exception While Inserting FHW Service Details", e);
        }
    }

    private void storeOrphanedAndReverificationFamiliesForFHW(List<FamilyDataBean> list) {
        ArrayList<FamilyDataBean> arrayList = new ArrayList();
        ArrayList<FamilyDataBean> arrayList2 = new ArrayList();
        if (list == null || list.isEmpty()) {
            return;
        }
        for (FamilyDataBean familyDataBean : list) {
            if (familyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_ORPHAN)) {
                arrayList.add(familyDataBean);
            } else {
                arrayList2.add(familyDataBean);
            }
        }
        try {
            for (FamilyDataBean familyDataBean2 : arrayList) {
                DeleteBuilder<FamilyBean, Integer> deleteBuilder = this.familyBeanDao.deleteBuilder();
                DeleteBuilder<MemberBean, Integer> deleteBuilder2 = this.memberBeanDao.deleteBuilder();
                deleteBuilder.where().eq("familyId", familyDataBean2.getFamilyId());
                deleteBuilder.delete();
                deleteBuilder2.where().eq("familyId", familyDataBean2.getFamilyId());
                deleteBuilder2.delete();
                List<MemberDataBean> members = familyDataBean2.getMembers();
                if (members != null && !members.isEmpty()) {
                    Iterator<MemberDataBean> it = members.iterator();
                    while (it.hasNext()) {
                        this.memberBeanDao.create((Dao<MemberBean, Integer>) new MemberBean(it.next()));
                    }
                }
                FamilyBean familyBean = new FamilyBean(familyDataBean2);
                familyBean.setAssignedTo(SewaTransformer.loginBean.getUserID());
                this.familyBeanDao.create((Dao<FamilyBean, Integer>) familyBean);
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
            SharedStructureData.NETWORK_MESSAGE = "Issue During Inserting Orphaned Family FHS Data";
        }
        try {
            for (FamilyDataBean familyDataBean3 : arrayList2) {
                List<FamilyBean> listQuery = this.familyBeanDao.queryBuilder().where().eq("familyId", familyDataBean3.getFamilyId()).query();
                if (listQuery != null && !listQuery.isEmpty()) {
                    for (FamilyBean familyBean2 : listQuery) {
                        this.familyBeanDao.delete((Dao<FamilyBean, Integer>) familyBean2);
                        List<MemberBean> listQuery2 = this.memberBeanDao.queryBuilder().where().eq("familyId", familyBean2.getFamilyId()).query();
                        if (listQuery2 != null && !listQuery2.isEmpty()) {
                            Iterator<MemberBean> it2 = listQuery2.iterator();
                            while (it2.hasNext()) {
                                this.memberBeanDao.delete((Dao<MemberBean, Integer>) it2.next());
                            }
                        }
                    }
                }
                List<MemberDataBean> members2 = familyDataBean3.getMembers();
                if (members2 != null && !members2.isEmpty()) {
                    Iterator<MemberDataBean> it3 = members2.iterator();
                    while (it3.hasNext()) {
                        this.memberBeanDao.create((Dao<MemberBean, Integer>) new MemberBean(it3.next()));
                    }
                }
                FamilyBean familyBean3 = new FamilyBean(familyDataBean3);
                familyBean3.setReverificationFlag(Boolean.TRUE);
                familyBean3.setAssignedTo(SewaTransformer.loginBean.getUserID());
                this.familyBeanDao.create((Dao<FamilyBean, Integer>) familyBean3);
            }
        } catch (Exception e2) {
            Log.e(TAG, e2.getMessage(), e2);
            SharedStructureData.NETWORK_MESSAGE = "Issue During Inserting Orphaned Family FHS Data";
        }
    }

    private void storeNotificationsForUser(List<NotificationMobDataBean> list, Date date) throws SQLException {
        if (date != null) {
            if (list == null || list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<NotificationMobDataBean> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getId());
            }
            DeleteBuilder<NotificationBean, Integer> deleteBuilder = this.notificationBeanDao.deleteBuilder();
            deleteBuilder.where().in("notificationId", arrayList);
            deleteBuilder.delete();
            this.notificationBeanDao.create(SewaTransformer.getInstance().convertNotificationDataBeanToNotificationBeanModel(new LinkedList(), list));
            return;
        }
        TableUtils.clearTable(this.notificationBeanDao.getConnectionSource(), NotificationBean.class);
        LinkedList linkedList = new LinkedList();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.notificationBeanDao.create(SewaTransformer.getInstance().convertNotificationDataBeanToNotificationBeanModel(linkedList, list));
    }

    private void deleteNotificationsForUser(List<Long> list) throws SQLException {
        if (list == null || list.isEmpty()) {
            return;
        }
        DeleteBuilder<NotificationBean, Integer> deleteBuilder = this.notificationBeanDao.deleteBuilder();
        deleteBuilder.where().in("notificationId", list);
        deleteBuilder.delete();
    }

    private void storeRchVillageProfileBeanFromServer(List<RchVillageProfileDataBean> list) {
        try {
            ArrayList arrayList = new ArrayList();
            for (RchVillageProfileDataBean rchVillageProfileDataBean : list) {
                RchVillageProfileBean rchVillageProfileBean = new RchVillageProfileBean();
                rchVillageProfileBean.setVillageId(rchVillageProfileDataBean.getVillage().getId());
                rchVillageProfileBean.setRchVillageProfileDto(new Gson().toJson(rchVillageProfileDataBean));
                arrayList.add(rchVillageProfileBean);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            TableUtils.clearTable(this.rchVillageProfileBeanDao.getConnectionSource(), RchVillageProfileBean.class);
            this.rchVillageProfileBeanDao.create(arrayList);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeMigrationDetails(List<MigratedMembersDataBean> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<MigratedMembersDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.sewaTransformer.convertMigratedMembersDataBeanToBean(it.next()));
        }
        try {
            TableUtils.clearTable(this.migratedMembersBeanDao.getConnectionSource(), MigratedMembersBean.class);
            this.migratedMembersBeanDao.create(arrayList);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeMigrationFamilyDetails(List<MigratedFamilyDataBean> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<MigratedFamilyDataBean> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.sewaTransformer.convertMigratedFamilyDataBeanToBean(it.next()));
        }
        try {
            TableUtils.clearTable(this.migratedFamilyBeanDao.getConnectionSource(), MigratedFamilyBean.class);
            this.migratedFamilyBeanDao.create(arrayList);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeCbacDetailsToDatabaseForASHA(List<MemberCbacDetailBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<MemberCbacDetailBean> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getActualId());
            }
            DeleteBuilder<MemberCbacDetailBean, Integer> deleteBuilder = this.memberCbacDetailBeanDao.deleteBuilder();
            deleteBuilder.where().in(FieldNameConstants.ACTUAL_I_D, arrayList);
            deleteBuilder.delete();
            this.memberCbacDetailBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeLabelsDetailsToDatabase(QueryMobDataBean queryMobDataBean) {
        for (LabelBean labelBean : this.sewaTransformer.convertQueryMobDataBeanToLabelModel(queryMobDataBean)) {
            try {
                if (SharedStructureData.listLabelBeans != null) {
                    LabelBean labelBean2 = SharedStructureData.listLabelBeans.get(labelBean.getMapIndex());
                    if (labelBean2 != null) {
                        labelBean.setId(labelBean2.getId());
                        this.labelBeanDao.createOrUpdate(labelBean);
                    } else {
                        this.labelBeanDao.create((Dao<LabelBean, Integer>) labelBean);
                    }
                } else {
                    this.labelBeanDao.create((Dao<LabelBean, Integer>) labelBean);
                }
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
        }
    }

    private void storeXlsDataToDatabaseForFHW(Map<String, List<ComponentTagBean>> map, Map<String, Integer> map2) {
        boolean zBooleanValue = Boolean.TRUE.booleanValue();
        for (Map.Entry<String, List<ComponentTagBean>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<ComponentTagBean> value = entry.getValue();
            if (value != null && !value.isEmpty()) {
                List<QuestionBean> listConvertComponentDataBeanToQuestionBeanModel = this.sewaTransformer.convertComponentDataBeanToQuestionBeanModel(null, value, key);
                List<AnswerBean> listConvertComponentDataBeanToAnswerBeanModel = this.sewaTransformer.convertComponentDataBeanToAnswerBeanModel(null, value, key);
                try {
                    DeleteBuilder<QuestionBean, Integer> deleteBuilder = this.questionBeanDao.deleteBuilder();
                    deleteBuilder.where().eq("entity", key);
                    PreparedDelete<QuestionBean> preparedDeletePrepare = deleteBuilder.prepare();
                    if (preparedDeletePrepare != null) {
                        this.questionBeanDao.delete(preparedDeletePrepare);
                    }
                    Iterator<QuestionBean> it = listConvertComponentDataBeanToQuestionBeanModel.iterator();
                    while (it.hasNext()) {
                        this.questionBeanDao.createOrUpdate(it.next());
                    }
                    DeleteBuilder<AnswerBean, Integer> deleteBuilder2 = this.answerBeanDao.deleteBuilder();
                    deleteBuilder2.where().eq("entity", key);
                    PreparedDelete<AnswerBean> preparedDeletePrepare2 = deleteBuilder2.prepare();
                    if (preparedDeletePrepare2 != null) {
                        this.answerBeanDao.delete(preparedDeletePrepare2);
                    }
                    Iterator<AnswerBean> it2 = listConvertComponentDataBeanToAnswerBeanModel.iterator();
                    while (it2.hasNext()) {
                        this.answerBeanDao.createOrUpdate(it2.next());
                    }
                } catch (SQLException e) {
                    Log.d(TAG, "Error in download sheet : " + key);
                    Log.e(TAG, null, e);
                    zBooleanValue = Boolean.FALSE.booleanValue();
                }
            }
        }
        if (zBooleanValue) {
            try {
                VersionBean versionBeanQueryForFirst = this.versionBeanDao.queryBuilder().where().eq(FieldNameConstants.KEY, GlobalTypes.FHW_SHEET_VERSION).queryForFirst();
                if (versionBeanQueryForFirst == null) {
                    versionBeanQueryForFirst = new VersionBean();
                    versionBeanQueryForFirst.setKey(GlobalTypes.FHW_SHEET_VERSION);
                }
                versionBeanQueryForFirst.setVersion(String.valueOf(map2.get(GlobalTypes.FHW_SHEET_VERSION)));
                this.versionBeanDao.createOrUpdate(versionBeanQueryForFirst);
                Log.d(TAG, "Sheet Version is set to  : " + versionBeanQueryForFirst);
            } catch (SQLException e2) {
                Log.e(TAG, e2.getMessage(), e2);
            }
        }
    }

    private void storeXlsDataToDatabaseForASHA(Map<String, List<ComponentTagBean>> map, Map<String, Integer> map2) {
        boolean zBooleanValue = Boolean.TRUE.booleanValue();
        for (Map.Entry<String, List<ComponentTagBean>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<ComponentTagBean> value = entry.getValue();
            if (value != null && !value.isEmpty()) {
                List<QuestionBean> listConvertComponentDataBeanToQuestionBeanModel = this.sewaTransformer.convertComponentDataBeanToQuestionBeanModel(null, value, key);
                List<AnswerBean> listConvertComponentDataBeanToAnswerBeanModel = this.sewaTransformer.convertComponentDataBeanToAnswerBeanModel(null, value, key);
                try {
                    DeleteBuilder<QuestionBean, Integer> deleteBuilder = this.questionBeanDao.deleteBuilder();
                    deleteBuilder.where().eq("entity", key);
                    PreparedDelete<QuestionBean> preparedDeletePrepare = deleteBuilder.prepare();
                    if (preparedDeletePrepare != null) {
                        this.questionBeanDao.delete(preparedDeletePrepare);
                    }
                    Iterator<QuestionBean> it = listConvertComponentDataBeanToQuestionBeanModel.iterator();
                    while (it.hasNext()) {
                        this.questionBeanDao.createOrUpdate(it.next());
                    }
                    DeleteBuilder<AnswerBean, Integer> deleteBuilder2 = this.answerBeanDao.deleteBuilder();
                    deleteBuilder2.where().eq("entity", key);
                    PreparedDelete<AnswerBean> preparedDeletePrepare2 = deleteBuilder2.prepare();
                    if (preparedDeletePrepare2 != null) {
                        this.answerBeanDao.delete(preparedDeletePrepare2);
                    }
                    Iterator<AnswerBean> it2 = listConvertComponentDataBeanToAnswerBeanModel.iterator();
                    while (it2.hasNext()) {
                        this.answerBeanDao.createOrUpdate(it2.next());
                    }
                } catch (SQLException e) {
                    Log.e(TAG, null, e);
                    zBooleanValue = Boolean.FALSE.booleanValue();
                }
            }
        }
        if (zBooleanValue) {
            try {
                VersionBean versionBeanQueryForFirst = this.versionBeanDao.queryBuilder().where().eq(FieldNameConstants.KEY, GlobalTypes.ASHA_SHEET_VERSION).queryForFirst();
                if (versionBeanQueryForFirst == null) {
                    versionBeanQueryForFirst = new VersionBean();
                    versionBeanQueryForFirst.setKey(GlobalTypes.ASHA_SHEET_VERSION);
                }
                versionBeanQueryForFirst.setVersion(String.valueOf(map2.get(GlobalTypes.ASHA_SHEET_VERSION)));
                this.versionBeanDao.createOrUpdate(versionBeanQueryForFirst);
            } catch (SQLException e2) {
                Log.e(TAG, e2.getMessage(), e2);
            }
        }
    }

    private void storeXlsDataToDatabaseForAWW(Map<String, List<ComponentTagBean>> map, Map<String, Integer> map2) {
        boolean zBooleanValue = Boolean.TRUE.booleanValue();
        for (Map.Entry<String, List<ComponentTagBean>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<ComponentTagBean> value = entry.getValue();
            if (value != null && !value.isEmpty()) {
                List<QuestionBean> listConvertComponentDataBeanToQuestionBeanModel = this.sewaTransformer.convertComponentDataBeanToQuestionBeanModel(null, value, key);
                List<AnswerBean> listConvertComponentDataBeanToAnswerBeanModel = this.sewaTransformer.convertComponentDataBeanToAnswerBeanModel(null, value, key);
                try {
                    DeleteBuilder<QuestionBean, Integer> deleteBuilder = this.questionBeanDao.deleteBuilder();
                    deleteBuilder.where().eq("entity", key);
                    PreparedDelete<QuestionBean> preparedDeletePrepare = deleteBuilder.prepare();
                    if (preparedDeletePrepare != null) {
                        this.questionBeanDao.delete(preparedDeletePrepare);
                    }
                    Iterator<QuestionBean> it = listConvertComponentDataBeanToQuestionBeanModel.iterator();
                    while (it.hasNext()) {
                        this.questionBeanDao.createOrUpdate(it.next());
                    }
                    DeleteBuilder<AnswerBean, Integer> deleteBuilder2 = this.answerBeanDao.deleteBuilder();
                    deleteBuilder2.where().eq("entity", key);
                    PreparedDelete<AnswerBean> preparedDeletePrepare2 = deleteBuilder2.prepare();
                    if (preparedDeletePrepare2 != null) {
                        this.answerBeanDao.delete(preparedDeletePrepare2);
                    }
                    Iterator<AnswerBean> it2 = listConvertComponentDataBeanToAnswerBeanModel.iterator();
                    while (it2.hasNext()) {
                        this.answerBeanDao.createOrUpdate(it2.next());
                    }
                } catch (SQLException e) {
                    Log.e(TAG, null, e);
                    zBooleanValue = Boolean.FALSE.booleanValue();
                }
            }
        }
        if (zBooleanValue) {
            try {
                VersionBean versionBeanQueryForFirst = this.versionBeanDao.queryBuilder().where().eq(FieldNameConstants.KEY, GlobalTypes.AWW_SHEET_VERSION).queryForFirst();
                if (versionBeanQueryForFirst == null) {
                    versionBeanQueryForFirst = new VersionBean();
                    versionBeanQueryForFirst.setKey(GlobalTypes.AWW_SHEET_VERSION);
                }
                versionBeanQueryForFirst.setVersion(String.valueOf(map2.get(GlobalTypes.AWW_SHEET_VERSION)));
                this.versionBeanDao.createOrUpdate(versionBeanQueryForFirst);
            } catch (SQLException e2) {
                Log.e(TAG, e2.getMessage(), e2);
            }
        }
    }

    private void storeAllDataQualityValues(List<DataQualityBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<DataQualityBean> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getMemberId());
            }
            DeleteBuilder<DataQualityBean, Integer> deleteBuilder = this.dataQualityBeanDao.deleteBuilder();
            deleteBuilder.where().in("memberId", arrayList);
            deleteBuilder.delete();
            this.dataQualityBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x002e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0080 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void storeAllListValues(java.util.List<com.argusoft.sewa.android.app.databean.FieldValueMobDataBean> r11) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.TechoServiceImpl.storeAllListValues(java.util.List):void");
    }

    private boolean downloadFileFromServer(String str) throws IOException {
        if (str != null) {
            try {
                URL url = new URL(WSConstants.REST_TECHO_SERVICE_URL + "getFile?fileName=" + str);
                long jCurrentTimeMillis = System.currentTimeMillis();
                URLConnection uRLConnectionOpenConnection = url.openConnection();
                uRLConnectionOpenConnection.setRequestProperty("application-version", String.valueOf(BuildConfig.VERSION_CODE));
                uRLConnectionOpenConnection.setRequestProperty("userToken", SewaTransformer.loginBean != null ? SewaTransformer.loginBean.getUserToken() : LabelConstants.NULL);
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(GlobalTypes.ISO_8601_DATE_TIME_FORMAT, Locale.getDefault());
                    simpleDateFormat.setTimeZone(TimeZone.getDefault());
                    uRLConnectionOpenConnection.setRequestProperty("X-Client-Date-Time", simpleDateFormat.format(new Date()).replaceAll("([+-]\\d{2})(\\d{2})$", "$1:$2"));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(uRLConnectionOpenConnection.getInputStream());
                ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(50);
                while (true) {
                    int i = bufferedInputStream.read();
                    if (i == -1) {
                        break;
                    }
                    byteArrayBuffer.append((byte) i);
                }
                String str2 = SewaConstants.DIR_DOWNLOADED + str;
                if (!byteArrayBuffer.isEmpty()) {
                    FileOutputStream fileOutputStream = new FileOutputStream(str2);
                    try {
                        fileOutputStream.write(byteArrayBuffer.toByteArray());
                        fileOutputStream.close();
                    } finally {
                    }
                }
                Log.i(TAG, "Downloaded file : " + str2 + "\n in " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000) + "sec");
                return true;
            } catch (Exception e2) {
                Log.e(TAG, null, e2);
            }
        }
        return false;
    }

    private void storeAllAnnouncement(List<AnnouncementMobDataBean> list) {
        List<AnnouncementBean> listQueryForEq;
        for (AnnouncementMobDataBean announcementMobDataBean : list) {
            try {
                listQueryForEq = this.announcementBeanDao.queryForEq(SewaConstants.ANNOUNCEMENT_BEAN_ANNOUNCEMENT_ID, announcementMobDataBean.getAnnouncementId());
            } catch (SQLException e) {
                Log.e(TAG, null, e);
            }
            AnnouncementBean announcementBean = (listQueryForEq == null || listQueryForEq.isEmpty()) ? null : listQueryForEq.get(0);
            if (announcementBean == null) {
                if (announcementMobDataBean.isIsActive()) {
                    AnnouncementBean announcementBean2 = new AnnouncementBean();
                    announcementBean2.setAnnouncementId(announcementMobDataBean.getAnnouncementId());
                    announcementBean2.setDefaultLanguage(announcementMobDataBean.getDefaultLanguage());
                    if (announcementMobDataBean.getSubject() != null) {
                        announcementBean2.setSubject(announcementMobDataBean.getSubject().trim());
                    }
                    announcementBean2.setPublishedOn(announcementMobDataBean.getPublishedOn());
                    announcementBean2.setIsDownloaded("F");
                    announcementBean2.setIsPlayedAnnouncement(0);
                    announcementBean2.setFileName(announcementMobDataBean.getFileName());
                    if (announcementMobDataBean.getModifiedOn() != null) {
                        announcementBean2.setModifiedOn(announcementMobDataBean.getModifiedOn());
                    }
                    try {
                        this.announcementBeanDao.create((Dao<AnnouncementBean, Integer>) announcementBean2);
                    } catch (SQLException e2) {
                        Log.e(TAG, null, e2);
                    }
                }
            } else if (announcementMobDataBean.isIsActive()) {
                announcementBean.setDefaultLanguage(announcementMobDataBean.getDefaultLanguage());
                if (announcementMobDataBean.getSubject() != null) {
                    announcementBean.setSubject(new String(announcementMobDataBean.getSubject().getBytes(), StandardCharsets.UTF_8).trim());
                }
                announcementBean.setPublishedOn(announcementMobDataBean.getPublishedOn());
                announcementBean.setIsDownloaded("F");
                announcementBean.setFileName(announcementMobDataBean.getFileName());
                if (announcementMobDataBean.getModifiedOn() != null) {
                    announcementBean.setModifiedOn(announcementMobDataBean.getModifiedOn());
                }
                try {
                    this.announcementBeanDao.update((Dao<AnnouncementBean, Integer>) announcementBean);
                } catch (SQLException e3) {
                    Log.e(TAG, null, e3);
                }
            } else {
                File file = new File(SewaConstants.DIR_DOWNLOADED + announcementBean.getFileName());
                if (file.exists()) {
                    file.delete();
                }
                try {
                    this.announcementBeanDao.delete((Dao<AnnouncementBean, Integer>) announcementBean);
                } catch (SQLException e4) {
                    Log.e(TAG, null, e4);
                }
            }
        }
        downloadAnnouncementFileFromServer();
    }

    private void downloadAnnouncementFileFromServer() {
        List<AnnouncementBean> listQueryForAll;
        try {
            listQueryForAll = this.announcementBeanDao.queryForAll();
        } catch (SQLException e) {
            Log.e(TAG, null, e);
            listQueryForAll = null;
        }
        if (listQueryForAll == null || listQueryForAll.isEmpty()) {
            return;
        }
        for (AnnouncementBean announcementBean : listQueryForAll) {
            String fileName = announcementBean.getFileName();
            if (fileName != null && fileName.trim().length() > 0) {
                try {
                    if (!UtilBean.isFileExists(SewaConstants.DIR_DOWNLOADED + "/" + fileName)) {
                        downloadFileFromServer(fileName);
                        announcementBean.setIsPlayedAnnouncement(0);
                    }
                    announcementBean.setIsDownloaded("T");
                    this.announcementBeanDao.update((Dao<AnnouncementBean, Integer>) announcementBean);
                } catch (Exception e2) {
                    Log.e(TAG, null, e2);
                }
            }
        }
    }

    private void storeLibraryDataBeans(List<LibraryDataBean> list) {
        try {
            for (LibraryDataBean libraryDataBean : list) {
                LibraryBean libraryBeanQueryForFirst = this.libraryBeanDao.queryBuilder().where().eq("actualId", libraryDataBean.getActualId()).queryForFirst();
                if (libraryDataBean.getState() != null && libraryDataBean.getState().equals(LibraryDownloadServiceImpl.INACTIVE)) {
                    File file = new File(SewaConstants.DIR_LIBRARY, libraryDataBean.getFileName());
                    if (file.exists()) {
                        file.delete();
                    }
                    if (libraryBeanQueryForFirst != null) {
                        this.libraryBeanDao.delete((Dao<LibraryBean, Integer>) libraryBeanQueryForFirst);
                    }
                } else if (libraryBeanQueryForFirst == null) {
                    this.libraryBeanDao.create((Dao<LibraryBean, Integer>) new LibraryBean(libraryDataBean));
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        this.libraryDownloadService.retrieveNotDownloadedAndStartDownload();
    }

    private void storeLocationMasterBeans(List<LocationMasterBean> list, boolean z) {
        if (list != null && !list.isEmpty()) {
            Log.i(TAG, LabelConstants.LOCATION_MASTER_COUNT + list.size());
            if (!z) {
                try {
                    for (LocationMasterBean locationMasterBean : list) {
                        DeleteBuilder<LocationMasterBean, Integer> deleteBuilder = this.locationMasterBeanDao.deleteBuilder();
                        deleteBuilder.where().eq(FieldNameConstants.ACTUAL_I_D, locationMasterBean.getActualID());
                        deleteBuilder.delete();
                    }
                } catch (SQLException e) {
                    Log.e(TAG, e.getMessage(), e);
                    return;
                }
            }
            this.locationMasterBeanDao.create(list);
        }
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_LOCATION_MASTER);
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                VersionBean versionBean = listQueryForEq.get(0);
                versionBean.setValue(Long.toString(new Date().getTime()));
                this.versionBeanDao.update((Dao<VersionBean, Integer>) versionBean);
                return;
            }
            VersionBean versionBean2 = new VersionBean();
            versionBean2.setKey(GlobalTypes.VERSION_LAST_UPDATED_LOCATION_MASTER);
            versionBean2.setValue(Long.toString(new Date().getTime()));
            this.versionBeanDao.create((Dao<VersionBean, Integer>) versionBean2);
        } catch (SQLException e2) {
            Log.e(TAG, e2.getMessage(), e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00d5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0093 -> B:45:0x009a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void storeHealthInfrastructureDetails(java.util.List<com.argusoft.sewa.android.app.model.HealthInfrastructureBean> r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.TechoServiceImpl.storeHealthInfrastructureDetails(java.util.List, boolean):void");
    }

    private void storeSmartReferralMasterDetails(List<SmartReferralScheduleMasterBean> list, boolean z) {
        if (list != null && !list.isEmpty()) {
            try {
                TableUtils.clearTable(this.smartReferralScheduleMasterBeanDao.getConnectionSource(), SmartReferralScheduleMasterBean.class);
                this.smartReferralScheduleMasterBeanDao.create(list);
                return;
            } catch (SQLException e) {
                Log.e(TAG, e.getMessage(), e);
                return;
            }
        }
        try {
            TableUtils.clearTable(this.smartReferralScheduleMasterBeanDao.getConnectionSource(), SmartReferralScheduleMasterBean.class);
        } catch (SQLException e2) {
            e2.printStackTrace();
        }
    }

    private void storeSmartReferralExceptionDetails(List<SmartReferralScheduleExceptionBean> list, boolean z) {
        if (list != null && !list.isEmpty()) {
            try {
                TableUtils.clearTable(this.smartReferralScheduleExceptionBeanDao.getConnectionSource(), SmartReferralScheduleExceptionBean.class);
                this.smartReferralScheduleExceptionBeanDao.create(list);
                return;
            } catch (SQLException e) {
                Log.e(TAG, e.getMessage(), e);
                return;
            }
        }
        try {
            TableUtils.clearTable(this.smartReferralScheduleExceptionBeanDao.getConnectionSource(), SmartReferralScheduleExceptionBean.class);
        } catch (SQLException e2) {
            e2.printStackTrace();
        }
    }

    private void storeSchoolDetails(List<SchoolBean> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!z) {
            try {
                for (SchoolBean schoolBean : list) {
                    DeleteBuilder<SchoolBean, Integer> deleteBuilder = this.schoolBeanDao.deleteBuilder();
                    deleteBuilder.where().eq("actualId", schoolBean.getActualId());
                    deleteBuilder.delete();
                }
            } catch (SQLException e) {
                Log.e(TAG, null, e);
                return;
            }
        }
        this.schoolBeanDao.create(list);
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getLgdCodeWiseCoordinates() throws SQLException, JsonSyntaxException {
        HashMap map = new HashMap();
        try {
            Gson gson = new Gson();
            for (LocationCoordinatesBean locationCoordinatesBean : this.locationCoordinatesBeansDao.queryForAll()) {
                HashMap map2 = new HashMap();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Double[] dArr : (List) gson.fromJson(locationCoordinatesBean.getCoordinates(), new TypeToken<List<Double[]>>() { // from class: com.argusoft.sewa.android.app.core.impl.TechoServiceImpl.2
                }.getType())) {
                    arrayList2.add(dArr[0]);
                    arrayList.add(dArr[1]);
                }
                map2.put("longArray", arrayList2);
                map2.put("latArray", arrayList);
                map.put(locationCoordinatesBean.getLgdCode(), map2);
            }
            SharedStructureData.mapOfLatLongWithLGDCode = map;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
            SharedStructureData.mapOfLatLongWithLGDCode = null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public boolean checkIfFeatureIsReleased() {
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FEATURES_LIST);
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                return listQueryForEq.get(0).getValue().contains(GlobalTypes.MOB_FEATURE_GEO_FENCING);
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public Boolean checkIfOfflineAnyFormFilledForMember(Long l) {
        if (l == null) {
            return false;
        }
        try {
            Iterator<StoreAnswerBean> it = this.storeAnswerBeanDao.queryForAll().iterator();
            while (it.hasNext()) {
                if (l.equals(it.next().getMemberId())) {
                    return true;
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public Boolean checkIfOfflineAnyFormFilledForFormType(String str) {
        if (str == null) {
            return false;
        }
        try {
            Iterator<StoreAnswerBean> it = this.storeAnswerBeanDao.queryForAll().iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getAnswerEntity())) {
                    return true;
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public Boolean checkIfOfflineAnyFormFilledForMemberWithFormType(Long l, String str) {
        if (l == null) {
            return false;
        }
        try {
            for (StoreAnswerBean storeAnswerBean : this.storeAnswerBeanDao.queryForAll()) {
                if (l.equals(storeAnswerBean.getMemberId()) && str.equals(storeAnswerBean.getAnswerEntity())) {
                    return true;
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public Boolean checkIfOfflineAnyFormFilledForLocation(Long l) {
        if (l == null) {
            return false;
        }
        try {
            Iterator<StoreAnswerBean> it = this.storeAnswerBeanDao.queryForAll().iterator();
            while (it.hasNext()) {
                if (l.equals(it.next().getLocationId())) {
                    return true;
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return false;
    }

    private void storePregnancyStatusBeans(LoggedInUserPrincipleDataBean loggedInUserPrincipleDataBean) {
        try {
            if (loggedInUserPrincipleDataBean.getPregnancyStatus() != null && !loggedInUserPrincipleDataBean.getPregnancyStatus().isEmpty()) {
                TableUtils.clearTable(this.pregnancyStatusBeanDao.getConnectionSource(), MemberPregnancyStatusBean.class);
                this.pregnancyStatusBeanDao.create(loggedInUserPrincipleDataBean.getPregnancyStatus());
                List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_LAST_UPDATED_PREGNANCY_STATUS);
                if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                    VersionBean versionBean = new VersionBean();
                    versionBean.setKey(GlobalTypes.VERSION_LAST_UPDATED_PREGNANCY_STATUS);
                    versionBean.setValue(loggedInUserPrincipleDataBean.getLastPregnancyStatusDate().toString());
                    this.versionBeanDao.create((Dao<VersionBean, Integer>) versionBean);
                } else {
                    VersionBean versionBean2 = listQueryForEq.get(0);
                    versionBean2.setValue(loggedInUserPrincipleDataBean.getLastPregnancyStatusDate().toString());
                    this.versionBeanDao.update((Dao<VersionBean, Integer>) versionBean2);
                }
            }
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private void storeCovidTravellersInfo(List<CovidTravellersInfoBean> list, Long l) {
        try {
            if (l == null) {
                TableUtils.clearTable(this.covidTravellersInfoBeanDao.getConnectionSource(), CovidTravellersInfoBean.class);
            } else {
                for (CovidTravellersInfoBean covidTravellersInfoBean : list) {
                    DeleteBuilder<CovidTravellersInfoBean, Integer> deleteBuilder = this.covidTravellersInfoBeanDao.deleteBuilder();
                    deleteBuilder.where().eq("actualId", covidTravellersInfoBean.getActualId());
                    deleteBuilder.delete();
                }
            }
            this.covidTravellersInfoBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void deleteQuestionAndAnswersByFormCode(String str) {
        try {
            DeleteBuilder<QuestionBean, Integer> deleteBuilder = this.questionBeanDao.deleteBuilder();
            deleteBuilder.where().eq("entity", str);
            PreparedDelete<QuestionBean> preparedDeletePrepare = deleteBuilder.prepare();
            if (preparedDeletePrepare != null) {
                this.questionBeanDao.delete(preparedDeletePrepare);
            }
            DeleteBuilder<AnswerBean, Integer> deleteBuilder2 = this.answerBeanDao.deleteBuilder();
            deleteBuilder2.where().eq("entity", str);
            PreparedDelete<AnswerBean> preparedDeletePrepare2 = deleteBuilder2.prepare();
            if (preparedDeletePrepare2 != null) {
                this.answerBeanDao.delete(preparedDeletePrepare2);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForMemberRchId() {
        String str;
        try {
            long time = 0;
            if (this.memberRchIdBeanDao.countOf() > 0) {
                String[] firstResult = this.memberRchIdBeanDao.queryRaw(this.memberRchIdBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult != null && (str = firstResult[0]) != null) {
                    time = this.sdf.parse(str).getTime();
                }
            }
            List<MemberRchIdBean> listRetrieveMemberRchIds = this.sewaServiceRestClient.retrieveMemberRchIds(SewaTransformer.loginBean.getUserToken(), Long.valueOf(time));
            if (listRetrieveMemberRchIds == null || listRetrieveMemberRchIds.isEmpty()) {
                return;
            }
            storeMemberRchIds(listRetrieveMemberRchIds, Long.valueOf(time));
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.SQL_EXCEPTION;
            SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_SQL);
        } catch (Exception e2) {
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_FETCHING_DATA_FOR_USER;
            Log.e(TAG, e2.getMessage(), e2);
        }
    }

    private void storeMemberRchIds(List<MemberRchIdBean> list, Long l) {
        try {
            if (l.longValue() == 0) {
                TableUtils.clearTable(this.memberRchIdBeanDao.getConnectionSource(), MemberRchIdBean.class);
            } else {
                for (MemberRchIdBean memberRchIdBean : list) {
                    DeleteBuilder<MemberRchIdBean, Integer> deleteBuilder = this.memberRchIdBeanDao.deleteBuilder();
                    deleteBuilder.where().eq("memberId", memberRchIdBean.getMemberId());
                    deleteBuilder.delete();
                }
            }
            this.memberRchIdBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private void storeFhsLastUpdateTime(String str) {
        VersionBean versionBean;
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_FHS_LAST_UPDATE_TIME);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                VersionBean versionBean2 = new VersionBean();
                versionBean2.setKey(GlobalTypes.VERSION_FHS_LAST_UPDATE_TIME);
                versionBean = versionBean2;
            } else {
                versionBean = listQueryForEq.get(0);
            }
            versionBean.setValue(str);
            this.versionBeanDao.createOrUpdate(versionBean);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeAmrutpanEnabledFlag(boolean z) {
        VersionBean versionBean;
        try {
            String str = "amrutpanEnabled_" + SewaTransformer.loginBean.getUserID();
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, str);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                VersionBean versionBean2 = new VersionBean();
                versionBean2.setKey(str);
                versionBean = versionBean2;
            } else {
                versionBean = listQueryForEq.get(0);
            }
            versionBean.setValue(z ? MorbiditiesConstant.ONE_PLUS : "0");
            this.versionBeanDao.createOrUpdate(versionBean);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeYearEndSummaryFlag(String str) {
        VersionBean versionBean;
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_SHOW_YEAR_END_SUMMARY);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                VersionBean versionBean2 = new VersionBean();
                versionBean2.setKey(GlobalTypes.VERSION_SHOW_YEAR_END_SUMMARY);
                versionBean = versionBean2;
            } else {
                versionBean = listQueryForEq.get(0);
            }
            versionBean.setValue(str);
            this.versionBeanDao.createOrUpdate(versionBean);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeIncentiveMasterBeans(List<IncentiveMasterDataBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (IncentiveMasterDataBean incentiveMasterDataBean : list) {
                arrayList.add(new IncentiveMaster(incentiveMasterDataBean));
                arrayList2.add(incentiveMasterDataBean.getId());
            }
            DeleteBuilder<IncentiveMaster, Integer> deleteBuilder = this.incentiveMasterBeanDao.deleteBuilder();
            deleteBuilder.where().in("actualId", arrayList2);
            deleteBuilder.delete();
            this.incentiveMasterBeanDao.create(arrayList);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private void storePreviousYearIncentives(List<PreviousYearIncentive> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        System.out.println("#### All Incentive Details : " + list.size());
        try {
            ArrayList arrayList = new ArrayList();
            new ArrayList();
            Iterator<PreviousYearIncentive> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new PreviousYearIncentive(it.next()));
            }
            this.previousYearIncentiveDao.create(arrayList);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private void storeIncentiveMonthlyDetailsDetails(List<IncentiveMonthlyDetailsDataBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        System.out.println("#### All Incentive Details : " + list.size());
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (IncentiveMonthlyDetailsDataBean incentiveMonthlyDetailsDataBean : list) {
                arrayList2.add(incentiveMonthlyDetailsDataBean.getId());
                arrayList.add(new IncentiveMonthlyDetailsBean(incentiveMonthlyDetailsDataBean));
            }
            DeleteBuilder<IncentiveMonthlyDetailsBean, Integer> deleteBuilder = this.incentiveMonthlyDetailsBeanDao.deleteBuilder();
            deleteBuilder.where().in("actualId", arrayList2);
            deleteBuilder.delete();
            this.incentiveMonthlyDetailsBeanDao.create(arrayList);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void storeIncentiveOccurrenceDetails(List<IncentiveOccurrenceDetailsDataBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        System.out.println("#### All Incentive Occurrence Details : " + list.size());
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (IncentiveOccurrenceDetailsDataBean incentiveOccurrenceDetailsDataBean : list) {
                arrayList2.add(incentiveOccurrenceDetailsDataBean.getId());
                arrayList.add(new IncentiveOccurrenceBean(incentiveOccurrenceDetailsDataBean));
            }
            DeleteBuilder<IncentiveOccurrenceBean, Integer> deleteBuilder = this.incentiveOccurrenceBeansDao.deleteBuilder();
            deleteBuilder.where().in("actualId", arrayList2);
            deleteBuilder.delete();
            this.incentiveOccurrenceBeansDao.create(arrayList);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void storeUserDetails(List<UserBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        System.out.println(list.size());
        try {
            TableUtils.clearTable(this.userBeanDao.getConnectionSource(), UserBean.class);
            this.userBeanDao.create(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void storeLmsCourses(List<LmsCourseDataBean> list) {
        if (list != null && !list.isEmpty()) {
            System.out.println("#### All Courses : " + list.size());
            try {
                List<LmsCourseBean> listQueryForAll = this.courseBeanDao.queryForAll();
                for (LmsCourseDataBean lmsCourseDataBean : list) {
                    for (LmsCourseBean lmsCourseBean : listQueryForAll) {
                        if (lmsCourseDataBean.getCourseId().equals(lmsCourseBean.getCourseId()) && lmsCourseBean.getArchived() != null) {
                            lmsCourseDataBean.setArchived(lmsCourseBean.getArchived());
                        }
                    }
                }
                TableUtils.clearTable(this.courseBeanDao.getConnectionSource(), LmsCourseBean.class);
                Iterator<LmsCourseDataBean> it = list.iterator();
                while (it.hasNext()) {
                    this.courseBeanDao.create((Dao<LmsCourseBean, Integer>) new LmsCourseBean(it.next()));
                }
                this.lmsDownloadService.addLmsMediaFilesToDownloadList();
                return;
            } catch (SQLException e) {
                e.printStackTrace();
                return;
            }
        }
        try {
            TableUtils.clearTable(this.courseBeanDao.getConnectionSource(), LmsCourseBean.class);
        } catch (SQLException e2) {
            e2.printStackTrace();
        }
    }

    private void storeLmsUserMetaData(List<LmsUserMetaDataBean> list) {
        try {
            TableUtils.clearTable(this.lmsUserMetadataBeanDao.getConnectionSource(), LmsUserMetaDataBean.class);
            if (list == null || list.isEmpty()) {
                return;
            }
            this.lmsUserMetadataBeanDao.create(list);
            storeLmsViewedMediaBean(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void storeLmsViewedMediaBean(List<LmsUserMetaDataBean> list) {
        Iterator<LmsUserMetaDataBean> it = list.iterator();
        while (it.hasNext()) {
            LmsUserMetaData lmsUserMetaData = new LmsUserMetaData(it.next());
            if (lmsUserMetaData.getLessonMetaData() != null && !lmsUserMetaData.getLessonMetaData().isEmpty()) {
                for (LmsUserLessonMetaData lmsUserLessonMetaData : lmsUserMetaData.getLessonMetaData()) {
                    if (this.lmsService.getViewedLessonById(lmsUserLessonMetaData.getLessonId()) == null) {
                        LmsViewedMediaBean lmsViewedMediaBean = new LmsViewedMediaBean();
                        lmsViewedMediaBean.setCourseId(lmsUserMetaData.getCourseId());
                        lmsViewedMediaBean.setModuleId(lmsUserLessonMetaData.getModuleId());
                        lmsViewedMediaBean.setLessonId(lmsUserLessonMetaData.getLessonId());
                        if (lmsUserLessonMetaData.getStartDate() != null) {
                            lmsViewedMediaBean.setStartDate(new Date(lmsUserLessonMetaData.getStartDate().longValue()));
                        }
                        if (lmsUserLessonMetaData.getEndDate() != null) {
                            lmsViewedMediaBean.setEndDate(new Date(lmsUserLessonMetaData.getEndDate().longValue()));
                        }
                        lmsViewedMediaBean.setUserFeedback(lmsUserLessonMetaData.getUserFeedback());
                        if (lmsUserLessonMetaData.getSessions() != null && !lmsUserLessonMetaData.getSessions().isEmpty()) {
                            lmsViewedMediaBean.setSessions(new Gson().toJson(lmsUserLessonMetaData.getSessions()));
                        }
                        lmsViewedMediaBean.setLastPausedOn(lmsUserLessonMetaData.getLastPausedOn());
                        lmsViewedMediaBean.setCompleted(lmsUserLessonMetaData.getCompleted());
                        try {
                            this.lmsViewedMediaBeanDao.create((Dao<LmsViewedMediaBean, Integer>) lmsViewedMediaBean);
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    private void storeMenuDetails(List<MenuBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        System.out.println("#### All menus : " + list.size());
        Log.e("menu", "Menubean-" + list.toString());
        try {
            TableUtils.clearTable(this.menuBeanDao.getConnectionSource(), MenuBean.class);
            this.menuBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    public boolean isNewNotification() {
        try {
            return this.announcementBeanDao.queryBuilder().where().eq("isPlayedAnnouncement", 0).query().size() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private void storeHealthInfraTypeLocationDetails(List<HealthInfraTypeLocationBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (HealthInfraTypeLocationBean healthInfraTypeLocationBean : list) {
                DeleteBuilder<HealthInfraTypeLocationBean, Integer> deleteBuilder = this.healthInfraTypeLocationBeanDao.deleteBuilder();
                deleteBuilder.where().eq(FieldNameConstants.HEALTH_INFRA_TYPE_ID, healthInfraTypeLocationBean.getHealthInfraTypeId());
                deleteBuilder.delete();
            }
            this.healthInfraTypeLocationBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private void storeLocationTypeDetails(List<LocationTypeBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (LocationTypeBean locationTypeBean : list) {
                DeleteBuilder<LocationTypeBean, Integer> deleteBuilder = this.locationTypeBeanDao.deleteBuilder();
                deleteBuilder.where().eq("type", locationTypeBean.getType());
                deleteBuilder.delete();
            }
            this.locationTypeBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private void storeCampaignDetails(List<CampaignSessionDataBean> list, Boolean bool) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, 1);
        UtilBean.clearTimeFromDate(calendar.getTime());
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<CampaignSessionBean> it = this.campaignSessionBeanDao.queryBuilder().where().lt("startedOn", Long.valueOf(calendar.getTime().getTime())).query().iterator();
            while (it.hasNext()) {
                arrayList4.add(it.next().getSessionId());
            }
            if (!arrayList4.isEmpty()) {
                DeleteBuilder<CampaignSessionBean, Integer> deleteBuilder = this.campaignSessionBeanDao.deleteBuilder();
                deleteBuilder.where().in(RelatedPropertyNameConstants.SESSION_ID, arrayList4);
                deleteBuilder.delete();
            }
            for (CampaignSessionDataBean campaignSessionDataBean : list) {
                if (!bool.booleanValue()) {
                    DeleteBuilder<CampaignMasterBean, Integer> deleteBuilder2 = this.campaignMasterBeanDao.deleteBuilder();
                    deleteBuilder2.where().eq("configId", campaignSessionDataBean.getConfigId());
                    deleteBuilder2.delete();
                    if (campaignSessionDataBean.getSessionId() != null) {
                        DeleteBuilder<CampaignSessionBean, Integer> deleteBuilder3 = this.campaignSessionBeanDao.deleteBuilder();
                        deleteBuilder3.where().eq(RelatedPropertyNameConstants.SESSION_ID, campaignSessionDataBean.getSessionId());
                        deleteBuilder3.delete();
                    }
                    if (campaignSessionDataBean.getConfigId() != null && campaignSessionDataBean.getRescheduleDtoObj() != null) {
                        DeleteBuilder<CampaignRescheduleBean, Integer> deleteBuilder4 = this.campaignRescheduleBeanDao.deleteBuilder();
                        deleteBuilder4.where().eq("configId", campaignSessionDataBean.getConfigId());
                        deleteBuilder4.delete();
                    }
                }
                if (Boolean.TRUE.equals(campaignSessionDataBean.getCampaignActive()) && Boolean.TRUE.equals(campaignSessionDataBean.getLocationActive())) {
                    arrayList.add(new CampaignMasterBean(campaignSessionDataBean));
                    if (campaignSessionDataBean.getSessionId() != null) {
                        arrayList2.add(new CampaignSessionBean(campaignSessionDataBean));
                    }
                }
                if (campaignSessionDataBean.getRescheduleDtoObj() != null && campaignSessionDataBean.getRescheduleDtoObj().getActiveFlag().booleanValue()) {
                    arrayList3.add(new CampaignRescheduleBean(campaignSessionDataBean.getRescheduleDtoObj()));
                }
            }
            this.campaignMasterBeanDao.create(arrayList);
            this.campaignSessionBeanDao.create(arrayList2);
            this.campaignRescheduleBeanDao.create(arrayList3);
        } catch (SQLException e) {
            Log.e(TAG, null, e);
        }
    }

    private void storeChlorinationStatusAreas(List<ChlorinationStatusBean> list) {
        if (list == null) {
            return;
        }
        try {
            TableUtils.clearTable(this.chlorinationStatusBeanDao.getConnectionSource(), ChlorinationStatusBean.class);
            for (ChlorinationStatusBean chlorinationStatusBean : list) {
                chlorinationStatusBean.setId(chlorinationStatusBean.getWaterQualityId());
            }
            this.chlorinationStatusBeanDao.create(list);
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    private void storeHealthInfraAssignedDetails(List<HealthInfraAssignedBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        System.out.println(list.size());
        try {
            TableUtils.clearTable(this.healthInfraAssignedBeanDao.getConnectionSource(), HealthInfraAssignedBean.class);
            this.healthInfraAssignedBeanDao.create(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void storeBaselineModuleCourseIds(String str) {
        VersionBean versionBean;
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_BASELINE_MODULE_COURSE_IDS);
            if (str != null && !str.isEmpty()) {
                Log.i(TAG, LabelConstants.BASELINE_MODULE_COURSE_IDS + str);
                if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                    versionBean = new VersionBean();
                    versionBean.setKey(GlobalTypes.VERSION_BASELINE_MODULE_COURSE_IDS);
                } else {
                    versionBean = listQueryForEq.get(0);
                }
                versionBean.setValue(str);
                this.versionBeanDao.createOrUpdate(versionBean);
                return;
            }
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                return;
            }
            DeleteBuilder<VersionBean, Integer> deleteBuilder = this.versionBeanDao.deleteBuilder();
            deleteBuilder.where().eq(FieldNameConstants.KEY, GlobalTypes.VERSION_BASELINE_MODULE_COURSE_IDS);
            deleteBuilder.delete();
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public String getBaselineModuleCourseIds() {
        try {
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.VERSION_BASELINE_MODULE_COURSE_IDS);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                return null;
            }
            return listQueryForEq.get(0).getValue();
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage(), e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.TechoService
    public void getDataForASHAFacilitator() {
        String str;
        String str2;
        Date modifiedOn;
        String str3;
        String str4;
        try {
            LoginRequestParamDetailDataBean loginRequestParamDetailDataBean = new LoginRequestParamDetailDataBean();
            loginRequestParamDetailDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            loginRequestParamDetailDataBean.setUserId(SewaTransformer.loginBean.getUserID());
            loginRequestParamDetailDataBean.setRoleType(GlobalTypes.ANNOUNCE_FOR_ASHA);
            loginRequestParamDetailDataBean.setVillageCode(SewaTransformer.loginBean.getVillageCode());
            loginRequestParamDetailDataBean.setSdkVersion(Integer.valueOf(Build.VERSION.SDK_INT));
            setImeiAndPhoneNumberInLoginParam(loginRequestParamDetailDataBean);
            if (SharedStructureData.gps != null) {
                SharedStructureData.gps.getLocation();
                loginRequestParamDetailDataBean.setLongitude(String.valueOf(GPSTracker.latitude));
                loginRequestParamDetailDataBean.setLatitude(String.valueOf(GPSTracker.longitude));
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            Log.i(TAG, LabelConstants.AVAILABLE_SPACE_IN_MB + blockSizeLong);
            loginRequestParamDetailDataBean.setFreeSpaceMB(Long.valueOf(blockSizeLong));
            if (this.listValueBeanDao.countOf() > 0) {
                String[] firstResult = this.listValueBeanDao.queryRaw(this.listValueBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult == null || (str4 = firstResult[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForListValue(Long.valueOf(this.sdf.parse(str4).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setLastUpdateDateForListValue(0L);
            }
            if (this.labelBeanDao.countOf() > 0) {
                String[] firstResult2 = this.labelBeanDao.queryRaw(this.labelBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult2 == null || (str3 = firstResult2[0]) == null) {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
                } else {
                    loginRequestParamDetailDataBean.setCreatedOnDateForLabel(Long.valueOf(this.sdf.parse(str3).getTime()));
                }
            } else {
                loginRequestParamDetailDataBean.setCreatedOnDateForLabel(0L);
            }
            if (this.menuBeanDao.countOf() > 0 && (modifiedOn = this.menuBeanDao.queryBuilder().queryForFirst().getModifiedOn()) != null) {
                loginRequestParamDetailDataBean.setLastUpdateDateForMenuMaster(Long.valueOf(modifiedOn.getTime()));
            }
            List<VersionBean> listQueryForEq = this.versionBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.ASHA_SHEET_VERSION);
            HashMap map = new HashMap();
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                map.put(GlobalTypes.ASHA_SHEET_VERSION, 0);
            } else {
                map.put(GlobalTypes.ASHA_SHEET_VERSION, Integer.valueOf(listQueryForEq.get(0).getVersion()));
            }
            loginRequestParamDetailDataBean.setSheetNameVersionMap(map);
            Log.i(TAG, LabelConstants.CALLING_MAIN_API_FOR_BRINGING_DATA + new Date());
            LoggedInUserPrincipleDataBean dataForASHAFacilitator = this.sewaServiceRestClient.getDataForASHAFacilitator(loginRequestParamDetailDataBean);
            Log.i(TAG, LabelConstants.DATA_FROM_MAIN_API_RETRIEVED + new Date());
            if (dataForASHAFacilitator.getRetrievedLabels() != null) {
                Log.i(TAG, LabelConstants.LABELS_COUNT + dataForASHAFacilitator.getRetrievedLabels().getResult().size());
                storeLabelsDetailsToDatabase(dataForASHAFacilitator.getRetrievedLabels());
            }
            if (dataForASHAFacilitator.getRetrievedListValues() != null && !dataForASHAFacilitator.getRetrievedListValues().isEmpty()) {
                Log.i(TAG, LabelConstants.LIST_VALUES_COUNT + dataForASHAFacilitator.getRetrievedListValues().size());
                storeAllListValues(dataForASHAFacilitator.getRetrievedListValues());
            }
            if (this.incentiveMasterBeanDao.countOf() > 0) {
                String[] firstResult3 = this.incentiveMasterBeanDao.queryRaw(this.incentiveMasterBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult3 == null || (str2 = firstResult3[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveMaster(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveMaster(Long.valueOf(this.sdf.parse(str2).getTime()));
                }
            }
            if (this.incentiveMonthlyDetailsBeanDao.countOf() > 0) {
                String[] firstResult4 = this.incentiveMonthlyDetailsBeanDao.queryRaw(this.incentiveMonthlyDetailsBeanDao.queryBuilder().selectRaw("MAX(modifiedOn)").prepareStatementString(), new String[0]).getFirstResult();
                if (firstResult4 == null || (str = firstResult4[0]) == null) {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveDetails(0L);
                } else {
                    loginRequestParamDetailDataBean.setLastUpdateDateForIncentiveDetails(Long.valueOf(this.sdf.parse(str).getTime()));
                }
            }
            storeIncentiveMasterBeans(dataForASHAFacilitator.getIncentiveMasterBeans());
            storeIncentiveMonthlyDetailsDetails(dataForASHAFacilitator.getIncentiveMonthlyDetails());
            storeBaselineModuleCourseIds(dataForASHAFacilitator.getBaselineModuleCourseIds());
            if (dataForASHAFacilitator.getRetrievedXlsData() != null && !dataForASHAFacilitator.getRetrievedXlsData().isEmpty()) {
                Log.i(TAG, LabelConstants.XLS_DATA_COUNT + dataForASHAFacilitator.getRetrievedXlsData().size());
                storeXlsDataToDatabaseForASHA(dataForASHAFacilitator.getRetrievedXlsData(), dataForASHAFacilitator.getCurrentSheetVersion());
            }
            storeLmsCourses(dataForASHAFacilitator.getCourseDataBeans());
            storeLmsUserMetaData(dataForASHAFacilitator.getLmsUserMetaData());
            storeUserDetails(dataForASHAFacilitator.getUsers());
        } catch (RestHttpException | SQLException | ParseException e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }
}
