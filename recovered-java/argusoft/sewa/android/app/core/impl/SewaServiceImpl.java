package com.argusoft.sewa.android.app.core.impl;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.SewaService;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.MobileRequestParamDto;
import com.argusoft.sewa.android.app.databean.RecordStatusBean;
import com.argusoft.sewa.android.app.databean.UserInfoDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.model.AnswerBean;
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.CovidTravellersInfoBean;
import com.argusoft.sewa.android.app.model.DataQualityBean;
import com.argusoft.sewa.android.app.model.FamilyBean;
import com.argusoft.sewa.android.app.model.FhwServiceDetailBean;
import com.argusoft.sewa.android.app.model.IncentiveMaster;
import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LibraryBean;
import com.argusoft.sewa.android.app.model.ListValueBean;
import com.argusoft.sewa.android.app.model.LmsBookMarkBean;
import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.argusoft.sewa.android.app.model.LmsUserMetaDataBean;
import com.argusoft.sewa.android.app.model.LmsViewedMediaBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LocationCoordinatesBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MemberCbacDetailBean;
import com.argusoft.sewa.android.app.model.MemberRchIdBean;
import com.argusoft.sewa.android.app.model.MenuBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.QuestionBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.model.UncaughtExceptionBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.restclient.impl.ApiManager;
import com.argusoft.sewa.android.app.service.FileUploadForegroundService;
import com.argusoft.sewa.android.app.service.FileUploadForegroundService_;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.Encryptor;
import com.argusoft.sewa.android.app.util.FileUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.table.TableUtils;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class SewaServiceImpl implements SewaService {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    Dao<AnnouncementBean, Integer> announcementBeanDao;
    Dao<AnswerBean, Integer> answerBeanDao;
    ApiManager apiManager;
    Context context;
    Dao<LabelBean, Integer> labelBeanDao;
    Dao<ListValueBean, Integer> listValueBeanDao;
    LmsEventServiceImpl lmsEventService;
    Dao<LocationBean, Integer> locationBeanDao;
    Dao<LoggerBean, Integer> loggerBeanDao;
    Dao<LoginBean, Integer> loginBeanDao;
    MoveToProductionServiceImpl moveToProductionService;
    Dao<NotificationBean, Integer> notificationBeanDao;
    Dao<QuestionBean, Integer> questionBeanDao;
    SewaServiceRestClientImpl sewaServiceRestClient;
    private final SewaTransformer sewaTransformer = SewaTransformer.getInstance();
    Dao<StoreAnswerBean, Integer> storeAnswerBeanDao;
    Dao<VersionBean, Integer> syncBeanDao;
    TechoServiceImpl techoService;
    Dao<UncaughtExceptionBean, Integer> uncaughtExceptionBeanDao;
    Dao<UploadFileDataBean, Integer> uploadFileDataBeanDao;

    private void resetData(UserInfoDataBean userInfoDataBean, LoginBean loginBean) {
        if (loginBean != null) {
            if (!loginBean.getUsername().equals(userInfoDataBean.getUsername())) {
                clearTable(AnnouncementBean.class);
                clearTable(LoggerBean.class);
                clearTable(NotificationBean.class);
                clearTable(FamilyBean.class);
                clearTable(MemberBean.class);
                clearTable(FhwServiceDetailBean.class);
                clearTable(ListValueBean.class);
                clearTable(MemberCbacDetailBean.class);
                clearTable(LibraryBean.class);
                clearTable(MigratedMembersBean.class);
                clearTable(LocationCoordinatesBean.class);
                clearTable(CovidTravellersInfoBean.class);
                clearTable(DataQualityBean.class);
                clearTable(LmsCourseBean.class);
                clearTable(LmsBookMarkBean.class);
                clearTable(LmsViewedMediaBean.class);
                clearTable(LmsUserMetaDataBean.class);
                clearTable(MemberRchIdBean.class);
                clearTable(IncentiveMonthlyDetailsBean.class);
                clearTable(IncentiveMaster.class);
                clearTable(CampaignMasterBean.class);
                clearTable(CampaignSessionBean.class);
                loginBean.setLastUpdateOfListValues(0L);
                loginBean.setFirstLogin(true);
                if (loginBean.getLanguageCode() != null && userInfoDataBean.getLanguageCode() != null && !loginBean.getLanguageCode().equalsIgnoreCase(userInfoDataBean.getLanguageCode())) {
                    loginBean.setLastUpdateOfLabels(0L);
                    clearTable(LabelBean.class);
                }
                if (!loginBean.getUserRole().equalsIgnoreCase(userInfoDataBean.getUserRole())) {
                    clearTable(MenuBean.class);
                }
                loginBean.setLastUpdateOfInventory(0L);
                loginBean.setLastUpdateOfAnnouncements(0L);
                VersionBean versionBean = new VersionBean();
                versionBean.setKey(loginBean.getUsername());
                try {
                    Dao<VersionBean, Integer> dao = this.syncBeanDao;
                    dao.delete(dao.queryForMatching(versionBean));
                } catch (Exception e) {
                    Log.e(getClass().getSimpleName(), null, e);
                }
                SharedStructureData.numberOfTimesLoggedIn = 0;
                return;
            }
            if (loginBean.getLanguageCode() == null || userInfoDataBean.getLanguageCode() == null || loginBean.getLanguageCode().equalsIgnoreCase(userInfoDataBean.getLanguageCode())) {
                return;
            }
            loginBean.setLastUpdateOfLabels(0L);
            clearTable(LabelBean.class);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<UploadFileDataBean> getFileWorkLog() {
        try {
            return this.uploadFileDataBeanDao.queryForAll();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<UploadFileDataBean> getFileWorkLog(String str) {
        try {
            return this.uploadFileDataBeanDao.queryBuilder().where().isNotNull("status").and().eq(FieldNameConstants.CHECKSUM, str).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<UploadFileDataBean> getFileByFormType(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            return this.uploadFileDataBeanDao.queryBuilder().where().eq(FieldNameConstants.FORM_TYPE, str).and().eq(FieldNameConstants.CHECKSUM, str2).query();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<UploadFileDataBean> getFilesToBeUploaded() {
        try {
            return this.uploadFileDataBeanDao.queryBuilder().where().eq(FieldNameConstants.PARENT_STATUS, "S").and().eq("status", "P").query();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<UploadFileDataBean> getFilesWithStatusUploading() {
        try {
            return this.uploadFileDataBeanDao.queryBuilder().where().eq(FieldNameConstants.PARENT_STATUS, "S").and().eq("status", "U").query();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<UploadFileDataBean> getFilesToBeDeleted() {
        try {
            return this.uploadFileDataBeanDao.queryBuilder().where().eq(FieldNameConstants.PARENT_STATUS, "S").and().eq("status", "S").query();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public String validateUser(String str, String str2, int i, boolean z) {
        String str3;
        UserInfoDataBean userEncrypted;
        String lowerCase = str.trim().toLowerCase();
        String strTrim = str2.trim();
        LoginBean loginBean = SewaTransformer.loginBean;
        if (isOnline()) {
            try {
                try {
                    str3 = (String) Tasks.await(FirebaseMessaging.getInstance().getToken());
                } catch (Exception unused) {
                    str3 = null;
                }
                userEncrypted = this.sewaServiceRestClient.getUserEncrypted(lowerCase, strTrim, str3, Boolean.TRUE);
            } catch (Exception unused2) {
                SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_USER_DOWNLOAD;
                return SewaConstants.EXCEPTION_USER_DOWNLOAD;
            }
        } else {
            userEncrypted = null;
        }
        if (userEncrypted == null) {
            if (loginBean != null) {
                if (loginBean.getUsername().trim().equalsIgnoreCase(lowerCase) && loginBean.getPassword().equals(Encryptor.encrypt(strTrim))) {
                    loginBean.setLoggedIn(true);
                    try {
                        loginBean.setFirstLogin(false);
                        loginBean.setHidden(false);
                        loginBean.setPasswordPlain(strTrim);
                        this.loginBeanDao.update((Dao<LoginBean, Integer>) loginBean);
                    } catch (SQLException e) {
                        Log.e(getClass().getSimpleName(), null, e);
                    }
                    SewaTransformer.loginBean = loginBean;
                    return SewaConstants.LOGIN_SUCCESS_LOCAL;
                }
                if (isOnline()) {
                    return SewaConstants.LOGIN_FAILURE;
                }
                return "Either connect to the internet or Enter correct username/password for offline login.";
            }
            if (!isOnline()) {
                return "You are offline, please connect to the internet.";
            }
            return "Network Unavailable";
        }
        if (!userEncrypted.isAuthenticated()) {
            return SewaConstants.LOGIN_FAILURE;
        }
        if (userEncrypted.getUserRole().equalsIgnoreCase("Asha") || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHW) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_AWW) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHW) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_CHO_HWC) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_UAAM_MO) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHSR) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_RBSK_MO) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_RBSK_PHARMACIST) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_PRIVATE_HOSP_PAEDITRACICAN) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_LAB_TECHNICIAN) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MO_PHC) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MO_UPHC) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_SUPERVISOR_STAFF_NURSE_CORP) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_ASHA_FACILITATOR) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_OA) || userEncrypted.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHS)) {
            resetData(userEncrypted, loginBean);
            if (loginBean != null && !loginBean.getUsername().equals(userEncrypted.getUsername())) {
                updateUserTokenInStoreAnswerBeanForExistingUser(loginBean);
            }
            LoginBean loginBeanConvertUserInfoDataBeanToLoginBeanModel = this.sewaTransformer.convertUserInfoDataBeanToLoginBeanModel(userEncrypted, loginBean, Encryptor.encrypt(strTrim));
            loginBeanConvertUserInfoDataBeanToLoginBeanModel.setPasswordPlain(strTrim);
            loginBeanConvertUserInfoDataBeanToLoginBeanModel.setRemember(z);
            if (i == 1) {
                loginBeanConvertUserInfoDataBeanToLoginBeanModel.setTrainingUser(false);
                SewaUtil.isUserInTraining = Boolean.FALSE.booleanValue();
            } else if (i == 2) {
                loginBeanConvertUserInfoDataBeanToLoginBeanModel.setTrainingUser(true);
                SewaUtil.isUserInTraining = Boolean.TRUE.booleanValue();
            }
            try {
                clearTable(LoginBean.class);
                loginBeanConvertUserInfoDataBeanToLoginBeanModel.setHidden(false);
                if (SewaTransformer.loginBean == null) {
                    loginBeanConvertUserInfoDataBeanToLoginBeanModel.setId(Integer.valueOf(this.loginBeanDao.create((Dao<LoginBean, Integer>) loginBeanConvertUserInfoDataBeanToLoginBeanModel)));
                } else {
                    this.loginBeanDao.createOrUpdate(loginBeanConvertUserInfoDataBeanToLoginBeanModel);
                }
            } catch (SQLException e2) {
                Log.e(getClass().getSimpleName(), null, e2);
            }
            SewaTransformer.loginBean = loginBeanConvertUserInfoDataBeanToLoginBeanModel;
            updateLatestTokenInStoreAnswerBean();
            if (!isMobileDateSameAsServerDate(loginBeanConvertUserInfoDataBeanToLoginBeanModel.getServerDate())) {
                return GlobalTypes.MOBILE_DATE_NOT_SAME_SERVER + UtilBean.convertDateToString(loginBeanConvertUserInfoDataBeanToLoginBeanModel.getServerDate().longValue(), false, true, true);
            }
            return SewaConstants.LOGIN_SUCCESS_WEB;
        }
        userEncrypted.setLoginFailureMsg(SewaConstants.LOGIN_UNAUTHORISED_ACCESS);
        return SewaConstants.LOGIN_UNAUTHORISED_ACCESS;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void addFireBaseToken() {
        try {
            MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
            mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
            mobileRequestParamDto.setUserId(SewaTransformer.loginBean.getUserID());
            mobileRequestParamDto.setFirebaseToken((String) Tasks.await(FirebaseMessaging.getInstance().getToken()));
            this.sewaServiceRestClient.addFireBaseToken(mobileRequestParamDto);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    private boolean isMobileDateSameAsServerDate(Long l) {
        if (l != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(l.longValue());
            UtilBean.clearTimeFromDate(calendar);
            Calendar calendar2 = Calendar.getInstance();
            UtilBean.clearTimeFromDate(calendar2);
            if (calendar.getTimeInMillis() != calendar2.getTimeInMillis()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public String getAndroidVersion() {
        if (isOnline()) {
            try {
                return this.sewaServiceRestClient.retrieveAndroidVersionFromServer();
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public boolean getServerIsAlive() {
        try {
            return this.sewaServiceRestClient.retrieveServerIsAlive();
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return false;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void doAfterSuccessfulLogin(boolean z) {
        if (isOnline() && SewaTransformer.loginBean != null && getServerIsAlive()) {
            try {
                fetchingInitializingData();
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), "Successful login exception" + e);
                SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_INITIALIZING_DOWNLOAD;
            }
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public boolean isOnline() {
        SharedStructureData.NETWORK_MESSAGE = "Network Unavailable";
        boolean z = false;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return false;
            }
            z = true;
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.NETWORK_AVAILABLE;
            return true;
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
            return z;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void initLabelBeanMap() {
        if (SharedStructureData.listLabelBeans == null) {
            SharedStructureData.listLabelBeans = new HashMap();
        }
        for (LabelBean labelBean : getAllLabelBean()) {
            SharedStructureData.listLabelBeans.put(labelBean.getMapIndex(), labelBean);
        }
    }

    private void fetchingInitializingData() {
        boolean zBooleanValue = true;
        try {
            if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHW) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHW)) {
                zBooleanValue = this.techoService.syncMergedFamiliesInformationWithServer().booleanValue();
            }
        } catch (Exception e) {
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_UPLOAD_TO_SERVER;
            Log.e(getClass().getSimpleName(), null, e);
        }
        try {
            updateAnswerBeanTokensAndUserIdsOnce();
            if (zBooleanValue) {
                try {
                    uploadDataToServer();
                    deleteSyncedMedia();
                    uploadAllMediaToServer();
                } catch (Exception e2) {
                    Log.e(getClass().getSimpleName(), "Error Occurs while uploadDataToServer : " + e2.getMessage());
                    SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_UPLOAD_TO_SERVER;
                    return;
                }
            }
            try {
                this.lmsEventService.uploadLmsEventToServer();
                uploadUncaughtExceptionDetailToServer();
                try {
                    this.moveToProductionService.postUserReadyToMoveProduction();
                    this.moveToProductionService.saveFormAccessibilityBeansFromServer();
                } catch (Exception e3) {
                    Log.e(getClass().getSimpleName(), "Error Occurs while saving form accessibility beans.", e3);
                    SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_FETCHING_USER_FORM_ACCESS;
                }
                try {
                    this.techoService.fetchLocationMasterData();
                    if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase("Asha")) {
                        this.techoService.getDataForASHA();
                    } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHW) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_CHO_HWC) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHW) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MPHS) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_UAAM_MO)) {
                        this.techoService.getDataForFHW();
                    } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_FHSR) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_SUPERVISOR_STAFF_NURSE_CORP)) {
                        this.techoService.getDataForFHSR();
                    } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_AWW)) {
                        this.techoService.getDataForAWW();
                    } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_RBSK_MO) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_RBSK_PHARMACIST) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_PRIVATE_HOSP_PAEDITRACICAN)) {
                        this.techoService.getDataForRbsk();
                    } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MO_PHC) || SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_MO_UPHC)) {
                        this.techoService.getDataForMO();
                    } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_OA)) {
                        this.techoService.getDataForOA();
                    } else if (SewaTransformer.loginBean.getUserRole().equalsIgnoreCase(GlobalTypes.USER_ROLE_ASHA_FACILITATOR)) {
                        this.techoService.getDataForASHAFacilitator();
                    }
                    initLabelBeanMap();
                } catch (Exception e4) {
                    SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_FETCHING_DATA_FOR_USER;
                    Log.e(getClass().getSimpleName(), null, e4);
                }
            } catch (Exception e5) {
                Log.e(getClass().getSimpleName(), "Error Occurs while Upload LMS Event To Serverf : " + e5.getMessage());
                SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_UPLOAD_TO_SERVER;
            }
        } catch (Exception e6) {
            Log.e(getClass().getSimpleName(), null, e6);
            SharedStructureData.NETWORK_MESSAGE = SewaConstants.EXCEPTION_TOKEN_UPDATION;
        }
    }

    private void deleteSyncedMedia() {
        Iterator<UploadFileDataBean> it = getFilesToBeDeleted().iterator();
        while (it.hasNext()) {
            File file = new File(it.next().getFilePath());
            if (file.exists()) {
                file.delete();
            }
        }
    }

    private List<LoggerBean> getLoggerBeansByFilter(LoggerBean loggerBean) {
        try {
            return this.loggerBeanDao.queryForMatchingArgs(loggerBean);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    private LoggerBean getLoggerBeanByFilter(LoggerBean loggerBean) {
        List<LoggerBean> loggerBeansByFilter = getLoggerBeansByFilter(loggerBean);
        if (loggerBeansByFilter == null || loggerBeansByFilter.isEmpty()) {
            return null;
        }
        return loggerBeansByFilter.get(0);
    }

    private List<StoreAnswerBean> getStoreAnswerBeansByFilter(StoreAnswerBean storeAnswerBean) {
        try {
            return this.storeAnswerBeanDao.queryForMatchingArgs(storeAnswerBean);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    public void uploadDataToServer() {
        try {
            StoreAnswerBean storeAnswerBean = new StoreAnswerBean(true);
            storeAnswerBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
            List<StoreAnswerBean> storeAnswerBeansByFilter = getStoreAnswerBeansByFilter(storeAnswerBean);
            if (storeAnswerBeansByFilter == null || storeAnswerBeansByFilter.isEmpty()) {
                return;
            }
            HashMap map = new HashMap();
            for (StoreAnswerBean storeAnswerBean2 : storeAnswerBeansByFilter) {
                if (storeAnswerBean2.getToken() == null || storeAnswerBean2.getToken().trim().length() == 0 || storeAnswerBean2.getToken().trim().equalsIgnoreCase(LabelConstants.NULL)) {
                    storeAnswerBean2.setToken(SewaTransformer.loginBean.getUserToken());
                }
                List arrayList = (List) map.get(storeAnswerBean2.getToken());
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put(storeAnswerBean2.getToken(), arrayList);
                }
                arrayList.add(storeAnswerBean2);
            }
            if (map.isEmpty()) {
                return;
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                List<StoreAnswerBean> list = (List) entry.getValue();
                int size = list.size();
                String[] strArr = new String[size];
                for (int i = 0; i < size; i++) {
                    strArr[i] = list.get(i).pack();
                }
                evaluateResponse(this.sewaServiceRestClient.recordEntryFromMobileToServer(str, strArr), list);
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    private void evaluateResponse(RecordStatusBean[] recordStatusBeanArr, List<StoreAnswerBean> list) {
        if (recordStatusBeanArr == null || recordStatusBeanArr.length <= 0) {
            return;
        }
        for (int i = 0; i < recordStatusBeanArr.length; i++) {
            RecordStatusBean recordStatusBean = recordStatusBeanArr[i];
            LoggerBean loggerBean = new LoggerBean();
            loggerBean.setCheckSum(recordStatusBean.getChecksum());
            LoggerBean loggerBeanByFilter = getLoggerBeanByFilter(loggerBean);
            if (recordStatusBean.getStatus() != null && recordStatusBean.getStatus().equalsIgnoreCase("S")) {
                try {
                    this.storeAnswerBeanDao.delete((Dao<StoreAnswerBean, Integer>) list.get(i));
                } catch (Exception e) {
                    Log.e(getClass().getSimpleName(), null, e);
                }
                if (loggerBeanByFilter != null) {
                    loggerBeanByFilter.setNoOfAttempt(loggerBeanByFilter.getNoOfAttempt() + 1);
                    loggerBeanByFilter.setStatus("S");
                    loggerBeanByFilter.setModifiedOn(Calendar.getInstance().getTime());
                    List<UploadFileDataBean> fileByFormType = SharedStructureData.sewaService.getFileByFormType(loggerBeanByFilter.getFormType(), loggerBeanByFilter.getCheckSum());
                    if (fileByFormType != null && !fileByFormType.isEmpty()) {
                        for (UploadFileDataBean uploadFileDataBean : fileByFormType) {
                            if (uploadFileDataBean != null) {
                                uploadFileDataBean.setParentStatus("S");
                                try {
                                    this.uploadFileDataBeanDao.update((Dao<UploadFileDataBean, Integer>) uploadFileDataBean);
                                } catch (SQLException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                    }
                    if (recordStatusBean.getGeneratedId() != null && (loggerBeanByFilter.getFormType().equals("FHS") || loggerBeanByFilter.getFormType().equals(FormConstants.FHS_MEMBER_UPDATE) || loggerBeanByFilter.getFormType().equals("CFHC") || loggerBeanByFilter.getFormType().equalsIgnoreCase(FormConstants.IDSP_NEW_FAMILY))) {
                        loggerBeanByFilter.setBeneficiaryName(recordStatusBean.getGeneratedId());
                    }
                    if (recordStatusBean.getGeneratedId() != null && loggerBeanByFilter.getFormType().equals("OA_NPCB")) {
                        loggerBeanByFilter.setGeneratedId(recordStatusBean.getGeneratedId());
                    }
                    if (recordStatusBean.getMessage() != null) {
                        loggerBeanByFilter.setMessage(recordStatusBean.getMessage());
                    }
                    try {
                        this.loggerBeanDao.update((Dao<LoggerBean, Integer>) loggerBeanByFilter);
                    } catch (SQLException e3) {
                        Log.e(getClass().getSimpleName(), null, e3);
                    }
                }
            } else if (recordStatusBean.getStatus() != null && recordStatusBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_ERROR)) {
                try {
                    this.storeAnswerBeanDao.delete((Dao<StoreAnswerBean, Integer>) list.get(i));
                } catch (Exception e4) {
                    Log.e(getClass().getSimpleName(), null, e4);
                }
                if (loggerBeanByFilter != null) {
                    loggerBeanByFilter.setNoOfAttempt(loggerBeanByFilter.getNoOfAttempt() + 1);
                    loggerBeanByFilter.setStatus(GlobalTypes.STATUS_ERROR);
                    loggerBeanByFilter.setModifiedOn(Calendar.getInstance().getTime());
                    try {
                        this.loggerBeanDao.update((Dao<LoggerBean, Integer>) loggerBeanByFilter);
                    } catch (SQLException e5) {
                        Log.e(getClass().getSimpleName(), null, e5);
                    }
                }
            } else if (recordStatusBean.getStatus() == null || !recordStatusBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_QUEUE)) {
                if (recordStatusBean.getStatus() == null || !recordStatusBean.getStatus().equalsIgnoreCase("P")) {
                    if (recordStatusBean.getStatus() != null && recordStatusBean.getStatus().equalsIgnoreCase(GlobalTypes.STATUS_HANDLED_ERROR)) {
                        try {
                            this.storeAnswerBeanDao.delete((Dao<StoreAnswerBean, Integer>) list.get(i));
                        } catch (Exception e6) {
                            Log.e(getClass().getSimpleName(), null, e6);
                        }
                        if (recordStatusBean.getGeneratedId() != null && loggerBeanByFilter.getFormType().equalsIgnoreCase("CFHC")) {
                            loggerBeanByFilter.setBeneficiaryName(recordStatusBean.getGeneratedId());
                        }
                        if (loggerBeanByFilter != null) {
                            loggerBeanByFilter.setNoOfAttempt(loggerBeanByFilter.getNoOfAttempt() + 1);
                            loggerBeanByFilter.setStatus(GlobalTypes.STATUS_HANDLED_ERROR);
                            loggerBeanByFilter.setModifiedOn(Calendar.getInstance().getTime());
                            if (recordStatusBean.getMessage() != null) {
                                loggerBeanByFilter.setMessage(recordStatusBean.getMessage());
                            }
                            try {
                                this.loggerBeanDao.update((Dao<LoggerBean, Integer>) loggerBeanByFilter);
                            } catch (SQLException e7) {
                                Log.e(getClass().getSimpleName(), null, e7);
                            }
                        }
                    }
                } else if (loggerBeanByFilter != null) {
                    loggerBeanByFilter.setNoOfAttempt(loggerBeanByFilter.getNoOfAttempt() + 1);
                    loggerBeanByFilter.setStatus("P");
                    loggerBeanByFilter.setModifiedOn(Calendar.getInstance().getTime());
                    try {
                        this.loggerBeanDao.update((Dao<LoggerBean, Integer>) loggerBeanByFilter);
                    } catch (SQLException e8) {
                        Log.e(getClass().getSimpleName(), null, e8);
                    }
                }
            } else if (loggerBeanByFilter != null) {
                loggerBeanByFilter.setNoOfAttempt(loggerBeanByFilter.getNoOfAttempt() + 1);
                loggerBeanByFilter.setStatus(GlobalTypes.STATUS_QUEUE);
                loggerBeanByFilter.setModifiedOn(Calendar.getInstance().getTime());
                if (recordStatusBean.getMessage() != null) {
                    loggerBeanByFilter.setMessage(recordStatusBean.getMessage());
                }
                try {
                    this.loggerBeanDao.update((Dao<LoggerBean, Integer>) loggerBeanByFilter);
                } catch (SQLException e9) {
                    Log.e(getClass().getSimpleName(), null, e9);
                }
            }
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void loadQuestionsBySheet(String str) throws NumberFormatException {
        String[] strArrSplit;
        String[] strArrSplit2;
        try {
            if (SharedStructureData.mapDataMapLabelBean != null) {
                SharedStructureData.mapDataMapLabelBean.clear();
            } else {
                SharedStructureData.mapDataMapLabelBean = new HashMap();
            }
            List<ListValueBean> listQuery = this.listValueBeanDao.queryBuilder().orderBy("field", true).where().eq(SewaConstants.LIST_VALUE_BEAN_ENTITY, str).query();
            if (listQuery != null && !listQuery.isEmpty()) {
                for (ListValueBean listValueBean : listQuery) {
                    List<FieldValueMobDataBean> arrayList = SharedStructureData.mapDataMapLabelBean.get(listValueBean.getField());
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        SharedStructureData.mapDataMapLabelBean.put(listValueBean.getField(), arrayList);
                    }
                    arrayList.add(this.sewaTransformer.convertListValueBeansToFieldValueDataBean(listValueBean));
                }
            }
            if (SewaTransformer.loginBean != null) {
                strArrSplit = SewaTransformer.loginBean.getVillageCode() != null ? UtilBean.split(SewaTransformer.loginBean.getVillageCode(), ":") : null;
                strArrSplit2 = SewaTransformer.loginBean.getVillageName() != null ? UtilBean.split(SewaTransformer.loginBean.getVillageName(), ":") : null;
            } else {
                strArrSplit = null;
                strArrSplit2 = null;
            }
            if (strArrSplit != null && strArrSplit.length > 0) {
                ArrayList arrayList2 = new ArrayList();
                for (int i = 0; i < strArrSplit.length; i++) {
                    FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
                    fieldValueMobDataBean.setIdOfValue(Integer.parseInt(strArrSplit[i]));
                    if (strArrSplit2 != null) {
                        fieldValueMobDataBean.setValue(strArrSplit2[i]);
                    }
                    arrayList2.add(fieldValueMobDataBean);
                }
                Collections.sort(arrayList2, new Comparator<FieldValueMobDataBean>() { // from class: com.argusoft.sewa.android.app.core.impl.SewaServiceImpl.1
                    @Override // java.util.Comparator
                    public int compare(FieldValueMobDataBean fieldValueMobDataBean2, FieldValueMobDataBean fieldValueMobDataBean3) {
                        return fieldValueMobDataBean2.getValue().compareTo(fieldValueMobDataBean3.getValue());
                    }
                });
                SharedStructureData.mapDataMapLabelBean.put(GlobalTypes.ASHA_VILLAGES, arrayList2);
            }
            this.sewaTransformer.convertQuestionBeansToQueFormBeans(this.questionBeanDao.queryForEq("entity", str), this.answerBeanDao.queryForEq("entity", str));
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<FieldValueMobDataBean> getFieldValueMobDataBeanByDataMap(String str) {
        try {
            return this.sewaTransformer.convertListValueBeansToFieldValueDataBean(this.listValueBeanDao.queryForEq("field", str));
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<LoggerBean> getWorkLog() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -7);
            calendar.set(10, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            QueryBuilder<LoggerBean, Integer> queryBuilder = this.loggerBeanDao.queryBuilder();
            queryBuilder.where().eq(FieldNameConstants.RECORD_URL, WSConstants.CONTEXT_URL_TECHO).and().ge("date", Long.valueOf(calendar.getTimeInMillis()));
            return queryBuilder.orderBy("_ID", false).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<AnnouncementBean> getAllAnnouncement() {
        try {
            return this.announcementBeanDao.queryBuilder().orderBy("publishedOn", false).query();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public Integer createUploadFileDataBean(UploadFileDataBean uploadFileDataBean) {
        try {
            return Integer.valueOf(this.uploadFileDataBeanDao.create((Dao<UploadFileDataBean, Integer>) uploadFileDataBean));
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public Integer createStoreAnswerBean(StoreAnswerBean storeAnswerBean) {
        try {
            this.storeAnswerBeanDao.create((Dao<StoreAnswerBean, Integer>) storeAnswerBean);
            QueryBuilder<StoreAnswerBean, Integer> queryBuilder = this.storeAnswerBeanDao.queryBuilder();
            queryBuilder.selectRaw("MAX(`_ID`)");
            return Integer.valueOf(this.storeAnswerBeanDao.queryRaw(queryBuilder.prepareStatementString(), new String[0]).getFirstResult()[0]);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void deleteStoreAnswerBeanByStoreAnswerBeanId(Long l) {
        try {
            List<StoreAnswerBean> listQueryForEq = this.storeAnswerBeanDao.queryForEq("_ID", l);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                return;
            }
            int iDelete = this.storeAnswerBeanDao.delete((Dao<StoreAnswerBean, Integer>) listQueryForEq.get(0));
            Log.i(getClass().getSimpleName(), "DELETE STORE_ANSWER_BEAN ID : " + iDelete);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public Integer createLoggerBean(LoggerBean loggerBean) {
        try {
            this.loggerBeanDao.create((Dao<LoggerBean, Integer>) loggerBean);
            QueryBuilder<LoggerBean, Integer> queryBuilder = this.loggerBeanDao.queryBuilder();
            queryBuilder.selectRaw("MAX(`_ID`)");
            return Integer.valueOf(this.loggerBeanDao.queryRaw(queryBuilder.prepareStatementString(), new String[0]).getFirstResult()[0]);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public LoggerBean retrieveLoggerBeanByChecksum(String str) {
        LoggerBean loggerBean = new LoggerBean();
        loggerBean.setCheckSum(str);
        return getLoggerBeanByFilter(loggerBean);
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void deleteLoggerBeanByLoggerBeanId(Long l) {
        try {
            List<LoggerBean> listQueryForEq = this.loggerBeanDao.queryForEq("_ID", l);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                return;
            }
            int iDelete = this.loggerBeanDao.delete((Dao<LoggerBean, Integer>) listQueryForEq.get(0));
            Log.i(getClass().getSimpleName(), "DELETE LOGGER_BEAN ID : " + iDelete);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    private void clearTable(Class<?> cls) {
        try {
            TableUtils.clearTable(this.loginBeanDao.getConnectionSource(), cls);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<LabelBean> getAllLabelBean() {
        try {
            return this.labelBeanDao.queryForAll();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    private List<VersionBean> retriveSheetStatusesByFiletr(VersionBean versionBean) {
        try {
            return this.syncBeanDao.queryForMatching(versionBean);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public VersionBean getSheetStatusByFiletr(VersionBean versionBean) {
        List<VersionBean> listRetriveSheetStatusesByFiletr = retriveSheetStatusesByFiletr(versionBean);
        if (listRetriveSheetStatusesByFiletr == null || listRetriveSheetStatusesByFiletr.isEmpty()) {
            return null;
        }
        return listRetriveSheetStatusesByFiletr.get(0);
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public NotificationBean getNotificationsById(Long l) {
        NotificationBean notificationBean = new NotificationBean();
        notificationBean.setNotificationId(l);
        try {
            List<NotificationBean> listQueryForMatching = this.notificationBeanDao.queryForMatching(notificationBean);
            if (listQueryForMatching != null && !listQueryForMatching.isEmpty()) {
                return listQueryForMatching.get(0);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void deleteNotificationByNotificationId(Long l) {
        try {
            List<NotificationBean> listQueryForEq = this.notificationBeanDao.queryForEq("notificationId", l);
            if (listQueryForEq == null || listQueryForEq.isEmpty()) {
                return;
            }
            int iDelete = this.notificationBeanDao.delete((Dao<NotificationBean, Integer>) listQueryForEq.get(0));
            Log.i(getClass().getSimpleName(), "DELETE NOTIFICATION ID : " + iDelete);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void updateVersionBean(VersionBean versionBean) {
        try {
            this.syncBeanDao.createOrUpdate(versionBean);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public int isUserInProduction(String str) {
        String lowerCase = str.trim().toLowerCase();
        if (!isOnline()) {
            if (SewaTransformer.loginBean != null && Boolean.TRUE.equals(Boolean.valueOf(SewaTransformer.loginBean.isTrainingUser()))) {
                setTrainingUrlData();
                return 2;
            }
            setLiveUrlData();
            return 1;
        }
        setLiveUrlData();
        try {
            if (Boolean.TRUE.equals(this.sewaServiceRestClient.retrieveUserInProductionFromServer(lowerCase))) {
                return 1;
            }
            setTrainingUrlData();
            try {
                if (Boolean.TRUE.equals(this.sewaServiceRestClient.retrieveUserInProductionFromServer(lowerCase))) {
                    return 2;
                }
                if (SewaTransformer.loginBean != null && Boolean.TRUE.equals(Boolean.valueOf(SewaTransformer.loginBean.isTrainingUser()))) {
                    return 2;
                }
                setLiveUrlData();
                return 1;
            } catch (RestHttpException e) {
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
                return 3;
            }
        } catch (RestHttpException e2) {
            Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
            return 3;
        }
    }

    private void setLiveUrlData() {
        WSConstants.setLiveContextUrl();
        SewaUtil.CURRENT_THEME = R.style.techo_app;
        this.apiManager.createApiService();
    }

    private void setTrainingUrlData() {
        WSConstants.setTrainingContextUrl();
        SewaUtil.CURRENT_THEME = R.style.techo_training_app;
        this.apiManager.createApiService();
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public List<LocationBean> retrieveLocationByLevel(Integer num) {
        try {
            QueryBuilder<LocationBean, Integer> queryBuilder = this.locationBeanDao.queryBuilder();
            queryBuilder.where().eq("level", num);
            List<LocationBean> listQuery = queryBuilder.orderBy("name", true).query();
            if (listQuery != null && !listQuery.isEmpty()) {
                return listQuery;
            }
            return new ArrayList();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
            return new ArrayList();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void retrieveLocationByParent(Integer num) {
        try {
            QueryBuilder<LocationBean, Integer> queryBuilder = this.locationBeanDao.queryBuilder();
            queryBuilder.where().eq(FieldNameConstants.PARENT, num);
            List<LocationBean> listQuery = queryBuilder.orderBy("name", true).query();
            if (listQuery == null || listQuery.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (LocationBean locationBean : listQuery) {
                FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
                fieldValueMobDataBean.setIdOfValue(locationBean.getActualID().intValue());
                fieldValueMobDataBean.setValue(locationBean.getName());
                arrayList.add(fieldValueMobDataBean);
            }
            SharedStructureData.mapDataMapLabelBean.put(String.valueOf(num), arrayList);
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void uploadUncaughtExceptionDetailToServer() {
        String strUploadUncaughtExceptionToServer;
        try {
            List<UncaughtExceptionBean> listQueryForAll = this.uncaughtExceptionBeanDao.queryForAll();
            if (listQueryForAll == null || listQueryForAll.isEmpty() || (strUploadUncaughtExceptionToServer = this.sewaServiceRestClient.uploadUncaughtExceptionToServer(SewaTransformer.loginBean.getUserID(), listQueryForAll)) == null || !strUploadUncaughtExceptionToServer.equalsIgnoreCase(SewaConstants.SUCCESS)) {
                return;
            }
            this.uncaughtExceptionBeanDao.delete(listQueryForAll);
        } catch (RestHttpException | SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public NotificationBean retrieveNotificationById(Long l) {
        try {
            NotificationBean notificationBean = new NotificationBean();
            notificationBean.setNotificationId(l);
            List<NotificationBean> listQueryForMatching = this.notificationBeanDao.queryForMatching(notificationBean);
            if (!listQueryForMatching.isEmpty()) {
                return listQueryForMatching.get(0);
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        return null;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void storeException(Throwable th, String str) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        String version = LabelConstants.N_A;
        try {
            List<VersionBean> listQueryForEq = this.syncBeanDao.queryForEq(FieldNameConstants.KEY, GlobalTypes.FHW_SHEET_VERSION);
            if (listQueryForEq != null && !listQueryForEq.isEmpty()) {
                version = listQueryForEq.get(0).getVersion();
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
        UncaughtExceptionBean uncaughtExceptionBean = new UncaughtExceptionBean();
        uncaughtExceptionBean.setStackTrace(string);
        uncaughtExceptionBean.setUsername(SewaTransformer.loginBean.getUsername());
        uncaughtExceptionBean.setAndroidVersion(Build.VERSION.RELEASE);
        uncaughtExceptionBean.setManufacturer(Build.MANUFACTURER);
        uncaughtExceptionBean.setModel(Build.MODEL + " Sheet Version:" + version);
        uncaughtExceptionBean.setOnDate(new Date());
        uncaughtExceptionBean.setRevisionNumber(Integer.valueOf(BuildConfig.VERSION_CODE));
        uncaughtExceptionBean.setExceptionType(str);
        try {
            this.uncaughtExceptionBeanDao.createOrUpdate(uncaughtExceptionBean);
        } catch (SQLException e2) {
            Log.e(getClass().getSimpleName(), null, e2);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void createNotificationBean(NotificationBean notificationBean) {
        if (notificationBean != null) {
            try {
                this.notificationBeanDao.create((Dao<NotificationBean, Integer>) notificationBean);
            } catch (SQLException e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void updateAnswerBeanTokensAndUserIdsOnce() throws RestHttpException {
        try {
            HashSet hashSet = new HashSet();
            List<StoreAnswerBean> listQuery = this.storeAnswerBeanDao.queryBuilder().where().isNull(FieldNameConstants.USER_ID).and().eq(FieldNameConstants.RECORD_URL, WSConstants.CONTEXT_URL_TECHO).query();
            if (listQuery != null && !listQuery.isEmpty()) {
                Iterator<StoreAnswerBean> it = listQuery.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next().getToken());
                }
                if (hashSet.isEmpty()) {
                    return;
                }
                MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
                mobileRequestParamDto.setUserTokens(new ArrayList(hashSet));
                Map<String, String[]> userIdAndTokenFromToken = this.sewaServiceRestClient.getUserIdAndTokenFromToken(mobileRequestParamDto);
                if (userIdAndTokenFromToken == null) {
                    return;
                }
                for (Map.Entry<String, String[]> entry : userIdAndTokenFromToken.entrySet()) {
                    if (entry.getValue() != null && Long.parseLong(entry.getValue()[0]) != -1) {
                        UpdateBuilder<StoreAnswerBean, Integer> updateBuilder = this.storeAnswerBeanDao.updateBuilder();
                        updateBuilder.updateColumnValue(FieldNameConstants.USER_ID, Long.valueOf(entry.getValue()[0])).updateColumnValue(FieldNameConstants.TOKEN, entry.getValue()[1]).where().eq(FieldNameConstants.TOKEN, entry.getKey()).and().eq(FieldNameConstants.RECORD_URL, WSConstants.CONTEXT_URL_TECHO);
                        updateBuilder.update();
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void updateLatestTokenInStoreAnswerBean() {
        if (SewaTransformer.loginBean == null) {
            return;
        }
        UpdateBuilder<StoreAnswerBean, Integer> updateBuilder = this.storeAnswerBeanDao.updateBuilder();
        try {
            updateBuilder.updateColumnValue(FieldNameConstants.TOKEN, SewaTransformer.loginBean.getUserToken()).where().eq(FieldNameConstants.USER_ID, SewaTransformer.loginBean.getUserID()).and().eq(FieldNameConstants.RECORD_URL, WSConstants.CONTEXT_URL_TECHO);
            updateBuilder.update();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    private void updateUserTokenInStoreAnswerBeanForExistingUser(LoginBean loginBean) {
        try {
            if (this.storeAnswerBeanDao.countOf() <= 0 || loginBean.getPasswordPlain() == null || loginBean.getPasswordPlain().isEmpty()) {
                return;
            }
            revalidateUserTokenForUser();
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void revalidateUserTokenForUser() {
        try {
            MobileRequestParamDto mobileRequestParamDto = new MobileRequestParamDto();
            mobileRequestParamDto.setToken(SewaTransformer.loginBean.getUserToken());
            Boolean tokenValidity = this.sewaServiceRestClient.getTokenValidity(mobileRequestParamDto);
            if (tokenValidity != null && !tokenValidity.booleanValue()) {
                String[] strArr = {SewaTransformer.loginBean.getUsername(), SewaTransformer.loginBean.getPasswordPlain()};
                MobileRequestParamDto mobileRequestParamDto2 = new MobileRequestParamDto();
                mobileRequestParamDto2.setUserPassMap(strArr);
                String newToken = this.sewaServiceRestClient.revalidateUserToken(mobileRequestParamDto2).getNewToken();
                LoginBean loginBean = this.loginBeanDao.queryForAll().get(0);
                loginBean.setUserToken(newToken);
                this.loginBeanDao.update((Dao<LoginBean, Integer>) loginBean);
                SewaTransformer.loginBean.setUserToken(newToken);
            }
            updateLatestTokenInStoreAnswerBean();
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public LoginBean getCurrentLoggedInUser() {
        try {
            return this.loginBeanDao.queryForAll().get(0);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
            return null;
        }
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void uploadAllMediaToServer() {
        try {
            if (!FileUploadForegroundService_.isRunning) {
                if (isOnline()) {
                    changeBeanStatusFromUploadingToPending();
                    List<UploadFileDataBean> filesToBeUploaded = SharedStructureData.sewaService.getFilesToBeUploaded();
                    changeBeanStatusToUpdating(filesToBeUploaded);
                    ArrayList arrayList = new ArrayList(filesToBeUploaded);
                    Intent intent = new Intent(this.context, (Class<?>) FileUploadForegroundService_.class);
                    intent.putExtra(FileUploadForegroundService.EXTRA_BEANS_LIST, new Gson().toJson(arrayList));
                    ContextCompat.startForegroundService(this.context, intent);
                } else {
                    SewaUtil.generateToast(this.context, "Network unreachable");
                }
            } else {
                SewaUtil.generateToast(this.context, "Please wait, service is already running");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changeBeanStatusFromUploadingToPending() {
        for (UploadFileDataBean uploadFileDataBean : SharedStructureData.sewaService.getFilesWithStatusUploading()) {
            uploadFileDataBean.setStatus("P");
            updateUploadFileDataBean(uploadFileDataBean);
        }
    }

    public List<UploadFileDataBean> changeBeanStatusToUpdating(List<UploadFileDataBean> list) {
        for (UploadFileDataBean uploadFileDataBean : list) {
            uploadFileDataBean.setStatus("U");
            updateUploadFileDataBean(uploadFileDataBean);
        }
        return list;
    }

    @Override // com.argusoft.sewa.android.app.core.SewaService
    public void createUploadFileDataBean(QueFormBean queFormBean, String str, String str2, Integer num, Integer num2) {
        for (String str3 : ((String) queFormBean.getAnswer()).split(GlobalTypes.COMMA)) {
            String strTrim = SharedStructureData.imageFilesToUpload.get(str3).trim();
            UploadFileDataBean uploadFileDataBean = new UploadFileDataBean();
            uploadFileDataBean.setCheckSum(str2);
            uploadFileDataBean.setUserName(SewaTransformer.loginBean.getUsername());
            uploadFileDataBean.setToken(SewaTransformer.loginBean.getUserToken());
            uploadFileDataBean.setFormType(str);
            uploadFileDataBean.setFileName(strTrim);
            uploadFileDataBean.setUniqueId(str3);
            uploadFileDataBean.setMemberId(num);
            uploadFileDataBean.setPregnancyRegistrationId(num2);
            uploadFileDataBean.setRecordUrl(WSConstants.CONTEXT_URL_TECHO);
            uploadFileDataBean.setFilePath(SewaConstants.DIR_IMAGE + strTrim);
            uploadFileDataBean.setStatus("P");
            uploadFileDataBean.setParentStatus("P");
            uploadFileDataBean.setNoOfAttemp(0);
            uploadFileDataBean.setFileType(FileUtils.getInstance().getMimeType(strTrim));
            uploadFileDataBean.setLocationId(Integer.valueOf((String) Objects.requireNonNull(SharedStructureData.relatedPropertyHashTable.get("locationId"))));
            try {
                this.uploadFileDataBeanDao.create((Dao<UploadFileDataBean, Integer>) uploadFileDataBean);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void updateUploadFileDataBean(UploadFileDataBean uploadFileDataBean) {
        try {
            this.uploadFileDataBeanDao.update((Dao<UploadFileDataBean, Integer>) uploadFileDataBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
