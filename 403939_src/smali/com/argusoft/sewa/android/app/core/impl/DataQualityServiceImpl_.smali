.class public final Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;
.super Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl;
.source "DataQualityServiceImpl_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;
    .locals 2

    .line 30
    sget-object v0, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;

    .line 33
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->init_()V

    .line 34
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 36
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;

    return-object p0
.end method

.method private init_()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->context_:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 42
    :try_start_0
    const-class v1, Lcom/argusoft/sewa/android/app/model/DataQualityBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/DataQualityServiceImpl_;->dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    const-string v1, "DataQualityServiceImpl_"

    const-string v2, "Could not create DAO dataQualityBeanDao"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
