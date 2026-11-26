.class public final Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;
.super Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;
.source "TechoAshaServiceImpl_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;
    .locals 2

    .line 39
    sget-object v0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    .line 42
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->init_()V

    .line 43
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 45
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->instance_:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    return-object p0
.end method

.method private init_()V
    .locals 3

    .line 49
    const-string v0, "TechoAshaServiceImpl_"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 50
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 51
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 52
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->context_:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 54
    :try_start_0
    const-class v2, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    const-string v2, "Could not create DAO familyBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 61
    const-string v2, "Could not create DAO memberBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 66
    const-string v2, "Could not create DAO locationBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 71
    const-string v2, "Could not create DAO listValueBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 76
    const-string v2, "Could not create DAO labelBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 81
    const-string v2, "Could not create DAO versionBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 86
    const-string v2, "Could not create DAO questionBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 91
    const-string v2, "Could not create DAO answerBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 96
    const-string v2, "Could not create DAO memberCbacDetailBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/LibraryBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    .line 101
    const-string v2, "Could not create DAO libraryBeanDao"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void
.end method
