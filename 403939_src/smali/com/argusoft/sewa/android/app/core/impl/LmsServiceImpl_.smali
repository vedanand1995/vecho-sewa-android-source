.class public final Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;
.super Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;
.source "LmsServiceImpl_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;
    .locals 2

    .line 34
    sget-object v0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;

    .line 37
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->init_()V

    .line 38
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 40
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;

    return-object p0
.end method

.method private init_()V
    .locals 3

    .line 44
    const-string v0, "LmsServiceImpl_"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 45
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->context_:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 47
    :try_start_0
    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 49
    const-string v2, "Could not create DAO courseBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->bookMarkBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 54
    const-string v2, "Could not create DAO bookMarkBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 59
    const-string v2, "Could not create DAO viewedMediaBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->quizMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 64
    const-string v2, "Could not create DAO quizMetadataBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LmsEventBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->eventBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 69
    const-string v2, "Could not create DAO eventBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method
