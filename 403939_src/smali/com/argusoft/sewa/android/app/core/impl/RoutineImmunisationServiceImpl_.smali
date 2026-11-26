.class public final Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;
.super Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;
.source "RoutineImmunisationServiceImpl_.java"


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->context_:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->init_()V

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;
    .locals 1

    .line 31
    new-instance v0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private init_()V
    .locals 3

    .line 35
    const-string v0, "RoutineImmunisationServ"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 36
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 37
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->context_:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 39
    :try_start_0
    const-class v2, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    const-string v2, "Could not create DAO inventoryBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 46
    const-string v2, "Could not create DAO memberBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 51
    const-string v2, "Could not create DAO familyBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public rebind(Landroid/content/Context;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->context_:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->init_()V

    return-void
.end method
