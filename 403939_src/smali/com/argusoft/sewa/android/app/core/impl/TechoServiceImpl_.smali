.class public final Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;
.super Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;
.source "TechoServiceImpl_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;
    .locals 2

    .line 76
    sget-object v0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    .line 79
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->init_()V

    .line 80
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 82
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    return-object p0
.end method

.method private init_()V
    .locals 3

    .line 86
    const-string v0, "TechoServiceImpl_"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 87
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 88
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->libraryDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    .line 89
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 90
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    .line 91
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    .line 92
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 93
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->context_:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 96
    :try_start_0
    const-class v2, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    const-string v2, "Could not create DAO menuBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 103
    const-string v2, "Could not create DAO versionBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 108
    const-string v2, "Could not create DAO familyBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 113
    const-string v2, "Could not create DAO memberBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 118
    const-string v2, "Could not create DAO locationBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->fhwServiceDetailBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 123
    const-string v2, "Could not create DAO fhwServiceDetailBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->mergedFamiliesBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 128
    const-string v2, "Could not create DAO mergedFamiliesBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->formAccessibilityBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 133
    const-string v2, "Could not create DAO formAccessibilityBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 138
    const-string v2, "Could not create DAO notificationBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    .line 143
    const-string v2, "Could not create DAO questionBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 148
    const-string v2, "Could not create DAO answerBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :goto_a
    :try_start_b
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    .line 153
    const-string v2, "Could not create DAO labelBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    .line 158
    const-string v2, "Could not create DAO loginBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_c
    :try_start_d
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    .line 163
    const-string v2, "Could not create DAO listValueBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_d
    :try_start_e
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/DataQualityBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    .line 168
    const-string v2, "Could not create DAO dataQualityBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :goto_e
    :try_start_f
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v1

    .line 173
    const-string v2, "Could not create DAO announcementBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_f
    :try_start_10
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->rchVillageProfileBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    .line 178
    const-string v2, "Could not create DAO rchVillageProfileBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :goto_10
    :try_start_11
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v1

    .line 183
    const-string v2, "Could not create DAO locationMasterBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :goto_11
    :try_start_12
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LibraryBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v1

    .line 188
    const-string v2, "Could not create DAO libraryBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :goto_12
    :try_start_13
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->migratedMembersBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v1

    .line 193
    const-string v2, "Could not create DAO migratedMembersBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :goto_13
    :try_start_14
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->readNotificationsBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v1

    .line 198
    const-string v2, "Could not create DAO readNotificationsBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :goto_14
    :try_start_15
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v1

    .line 203
    const-string v2, "Could not create DAO memberCbacDetailBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    :goto_15
    :try_start_16
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v1

    .line 208
    const-string v2, "Could not create DAO healthInfrastructureBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :goto_16
    :try_start_17
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->smartReferralScheduleMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_17
    .catch Ljava/sql/SQLException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v1

    .line 213
    const-string v2, "Could not create DAO smartReferralScheduleMasterBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :goto_17
    :try_start_18
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->smartReferralScheduleExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v1

    .line 218
    const-string v2, "Could not create DAO smartReferralScheduleExceptionBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    :goto_18
    :try_start_19
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v1

    .line 223
    const-string v2, "Could not create DAO schoolBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_19
    :try_start_1a
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->locationCoordinatesBeansDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1a
    .catch Ljava/sql/SQLException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v1

    .line 228
    const-string v2, "Could not create DAO locationCoordinatesBeansDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_1a
    :try_start_1b
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v1

    .line 233
    const-string v2, "Could not create DAO storeAnswerBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_1b
    :try_start_1c
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->pregnancyStatusBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1c
    .catch Ljava/sql/SQLException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v1

    .line 238
    const-string v2, "Could not create DAO pregnancyStatusBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :goto_1c
    :try_start_1d
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1d
    .catch Ljava/sql/SQLException; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v1

    .line 243
    const-string v2, "Could not create DAO covidTravellersInfoBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :goto_1d
    :try_start_1e
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->migratedFamilyBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1e
    .catch Ljava/sql/SQLException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v1

    .line 248
    const-string v2, "Could not create DAO migratedFamilyBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    :goto_1e
    :try_start_1f
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1f
    .catch Ljava/sql/SQLException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v1

    .line 253
    const-string v2, "Could not create DAO courseBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :goto_1f
    :try_start_20
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->lmsUserMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_20
    .catch Ljava/sql/SQLException; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v1

    .line 258
    const-string v2, "Could not create DAO lmsUserMetadataBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    :goto_20
    :try_start_21
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->lmsViewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_21
    .catch Ljava/sql/SQLException; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v1

    .line 263
    const-string v2, "Could not create DAO lmsViewedMediaBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :goto_21
    :try_start_22
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_22
    .catch Ljava/sql/SQLException; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v1

    .line 268
    const-string v2, "Could not create DAO memberRchIdBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :goto_22
    :try_start_23
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_23
    .catch Ljava/sql/SQLException; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v1

    .line 273
    const-string v2, "Could not create DAO incentiveMasterBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :goto_23
    :try_start_24
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_24
    .catch Ljava/sql/SQLException; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v1

    .line 278
    const-string v2, "Could not create DAO incentiveMonthlyDetailsBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :goto_24
    :try_start_25
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->userBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_25
    .catch Ljava/sql/SQLException; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v1

    .line 283
    const-string v2, "Could not create DAO userBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    :goto_25
    :try_start_26
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->previousYearIncentiveDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_26
    .catch Ljava/sql/SQLException; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v1

    .line 288
    const-string v2, "Could not create DAO previousYearIncentiveDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :goto_26
    :try_start_27
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->healthInfraTypeLocationBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_27
    .catch Ljava/sql/SQLException; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v1

    .line 293
    const-string v2, "Could not create DAO healthInfraTypeLocationBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :goto_27
    :try_start_28
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationTypeBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->locationTypeBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_28
    .catch Ljava/sql/SQLException; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v1

    .line 298
    const-string v2, "Could not create DAO locationTypeBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_28
    :try_start_29
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_29
    .catch Ljava/sql/SQLException; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v1

    .line 303
    const-string v2, "Could not create DAO campaignMasterBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :goto_29
    :try_start_2a
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2a
    .catch Ljava/sql/SQLException; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v1

    .line 308
    const-string v2, "Could not create DAO campaignSessionBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    :goto_2a
    :try_start_2b
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->healthInfraAssignedBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2b
    .catch Ljava/sql/SQLException; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v1

    .line 313
    const-string v2, "Could not create DAO healthInfraAssignedBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    :goto_2b
    :try_start_2c
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->incentiveOccurrenceBeansDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2c
    .catch Ljava/sql/SQLException; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v1

    .line 318
    const-string v2, "Could not create DAO incentiveOccurrenceBeansDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    :goto_2c
    :try_start_2d
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->campaignRescheduleBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2d
    .catch Ljava/sql/SQLException; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v1

    .line 323
    const-string v2, "Could not create DAO campaignRescheduleBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    :goto_2d
    :try_start_2e
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2e
    .catch Ljava/sql/SQLException; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v1

    .line 328
    const-string v2, "Could not create DAO chlorinationStatusBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-void
.end method
