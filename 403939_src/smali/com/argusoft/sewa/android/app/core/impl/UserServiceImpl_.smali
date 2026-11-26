.class public final Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;
.super Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;
.source "UserServiceImpl_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;
    .locals 2

    .line 31
    sget-object v0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;

    .line 34
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->init_()V

    .line 35
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 37
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;

    return-object p0
.end method

.method private init_()V
    .locals 3

    .line 41
    const-string v0, "UserServiceImpl_"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->context_:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 43
    :try_start_0
    const-class v2, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->userBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    const-string v2, "Could not create DAO userBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 50
    const-string v2, "Could not create DAO loginBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
