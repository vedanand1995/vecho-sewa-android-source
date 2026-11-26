.class public final Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;
.super Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;
.source "FormMetaDataUtil_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;
    .locals 2

    .line 40
    sget-object v0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->instance_:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->instance_:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    .line 43
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->init_()V

    .line 44
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 46
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->instance_:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    return-object p0
.end method

.method private init_()V
    .locals 3

    .line 50
    const-string v0, "FormMetaDataUtil_"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    .line 51
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 52
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 53
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->context_:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 55
    :try_start_0
    const-class v2, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    const-string v2, "Could not create DAO listValueBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 62
    const-string v2, "Could not create DAO familyBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 67
    const-string v2, "Could not create DAO memberBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 72
    const-string v2, "Could not create DAO locationBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 77
    const-string v2, "Could not create DAO versionBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 82
    const-string v2, "Could not create DAO healthInfrastructureBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 87
    const-string v2, "Could not create DAO locationMasterBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 92
    const-string v2, "Could not create DAO schoolBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void
.end method
