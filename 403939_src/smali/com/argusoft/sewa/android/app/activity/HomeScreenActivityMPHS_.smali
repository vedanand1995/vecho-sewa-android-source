.class public final Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;
.source "HomeScreenActivityMPHS_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;-><init>()V

    .line 40
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;)V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->showProcessDialog()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;)V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->hideProcessDialog()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;)V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->checkIsMobileTimeSyncedProperly()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->networkCallsForLanguageChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    const-string p1, "HomeScreenActivityMPHS_"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 63
    const-class v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 65
    :try_start_0
    const-class v1, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    const-string v1, "Could not create DAO loginBeanDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->versionDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 72
    const-string v1, "Could not create DAO versionDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 77
    const-string v1, "Could not create DAO versionBeanDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$IntentBuilder_;
    .locals 1

    .line 100
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$IntentBuilder_;
    .locals 1

    .line 104
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public checkIsMobileTimeSyncedProperly()V
    .locals 7

    .line 145
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$4;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 9

    .line 177
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public hideProcessDialog()V
    .locals 4

    .line 133
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public networkCallsForLanguageChange(Ljava/lang/String;)V
    .locals 8

    .line 161
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->init_(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->onDestroy()V

    .line 194
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->setContentView(I)V

    .line 84
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->setContentView(Landroid/view/View;)V

    .line 96
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 121
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showProcessDialog()V
    .locals 4

    .line 109
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
