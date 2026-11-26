package com.argusoft.sewa.android.app.core;

import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.model.AnnouncementBean;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.LoggerBean;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.model.StoreAnswerBean;
import com.argusoft.sewa.android.app.model.UploadFileDataBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import java.util.List;

/* loaded from: classes.dex */
public interface SewaService {
    void addFireBaseToken();

    Integer createLoggerBean(LoggerBean loggerBean);

    void createNotificationBean(NotificationBean notificationBean);

    Integer createStoreAnswerBean(StoreAnswerBean storeAnswerBean);

    Integer createUploadFileDataBean(UploadFileDataBean uploadFileDataBean);

    void createUploadFileDataBean(QueFormBean queFormBean, String str, String str2, Integer num, Integer num2);

    void deleteLoggerBeanByLoggerBeanId(Long l);

    void deleteNotificationByNotificationId(Long l);

    void deleteStoreAnswerBeanByStoreAnswerBeanId(Long l);

    void doAfterSuccessfulLogin(boolean z);

    List<AnnouncementBean> getAllAnnouncement();

    List<LabelBean> getAllLabelBean();

    String getAndroidVersion();

    LoginBean getCurrentLoggedInUser();

    List<FieldValueMobDataBean> getFieldValueMobDataBeanByDataMap(String str);

    List<UploadFileDataBean> getFileByFormType(String str, String str2);

    List<UploadFileDataBean> getFileWorkLog();

    List<UploadFileDataBean> getFileWorkLog(String str);

    List<UploadFileDataBean> getFilesToBeDeleted();

    List<UploadFileDataBean> getFilesToBeUploaded();

    List<UploadFileDataBean> getFilesWithStatusUploading();

    NotificationBean getNotificationsById(Long l);

    boolean getServerIsAlive();

    VersionBean getSheetStatusByFiletr(VersionBean versionBean);

    List<LoggerBean> getWorkLog();

    void initLabelBeanMap();

    boolean isOnline();

    int isUserInProduction(String str);

    void loadQuestionsBySheet(String str);

    List<LocationBean> retrieveLocationByLevel(Integer num);

    void retrieveLocationByParent(Integer num);

    LoggerBean retrieveLoggerBeanByChecksum(String str);

    NotificationBean retrieveNotificationById(Long l);

    void revalidateUserTokenForUser();

    void storeException(Throwable th, String str);

    void updateAnswerBeanTokensAndUserIdsOnce() throws RestHttpException;

    void updateLatestTokenInStoreAnswerBean();

    void updateVersionBean(VersionBean versionBean);

    void uploadAllMediaToServer();

    void uploadUncaughtExceptionDetailToServer();

    String validateUser(String str, String str2, int i, boolean z);
}
