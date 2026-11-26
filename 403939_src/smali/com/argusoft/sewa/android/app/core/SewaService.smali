.class public interface abstract Lcom/argusoft/sewa/android/app/core/SewaService;
.super Ljava/lang/Object;
.source "SewaService.java"


# virtual methods
.method public abstract addFireBaseToken()V
.end method

.method public abstract createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;
.end method

.method public abstract createNotificationBean(Lcom/argusoft/sewa/android/app/model/NotificationBean;)V
.end method

.method public abstract createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;
.end method

.method public abstract createUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Ljava/lang/Integer;
.end method

.method public abstract createUploadFileDataBean(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract deleteLoggerBeanByLoggerBeanId(Ljava/lang/Long;)V
.end method

.method public abstract deleteNotificationByNotificationId(Ljava/lang/Long;)V
.end method

.method public abstract deleteStoreAnswerBeanByStoreAnswerBeanId(Ljava/lang/Long;)V
.end method

.method public abstract doAfterSuccessfulLogin(Z)V
.end method

.method public abstract getAllAnnouncement()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLabelBean()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LabelBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAndroidVersion()Ljava/lang/String;
.end method

.method public abstract getCurrentLoggedInUser()Lcom/argusoft/sewa/android/app/model/LoginBean;
.end method

.method public abstract getFieldValueMobDataBeanByDataMap(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileByFormType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileWorkLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileWorkLog(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilesToBeDeleted()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilesToBeUploaded()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilesWithStatusUploading()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationsById(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/NotificationBean;
.end method

.method public abstract getServerIsAlive()Z
.end method

.method public abstract getSheetStatusByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Lcom/argusoft/sewa/android/app/model/VersionBean;
.end method

.method public abstract getWorkLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LoggerBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initLabelBeanMap()V
.end method

.method public abstract isOnline()Z
.end method

.method public abstract isUserInProduction(Ljava/lang/String;)I
.end method

.method public abstract loadQuestionsBySheet(Ljava/lang/String;)V
.end method

.method public abstract retrieveLocationByLevel(Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveLocationByParent(Ljava/lang/Integer;)V
.end method

.method public abstract retrieveLoggerBeanByChecksum(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LoggerBean;
.end method

.method public abstract retrieveNotificationById(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/NotificationBean;
.end method

.method public abstract revalidateUserTokenForUser()V
.end method

.method public abstract storeException(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract updateAnswerBeanTokensAndUserIdsOnce()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation
.end method

.method public abstract updateLatestTokenInStoreAnswerBean()V
.end method

.method public abstract updateVersionBean(Lcom/argusoft/sewa/android/app/model/VersionBean;)V
.end method

.method public abstract uploadAllMediaToServer()V
.end method

.method public abstract uploadUncaughtExceptionDetailToServer()V
.end method

.method public abstract validateUser(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
.end method
