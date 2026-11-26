.class public final Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;
.source "HomeScreenActivityFHSR_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;-><init>()V

    .line 39
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->showProcessDialog()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->hideProcessDialog()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->checkIsMobileTimeSyncedProperly()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->networkCallsForLanguageChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    const-string p1, "HomeScreenActivityFHSR_"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 61
    const-class v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 63
    :try_start_0
    const-class v1, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    const-string v1, "Could not create DAO loginBeanDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->versionDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 70
    const-string v1, "Could not create DAO versionDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$IntentBuilder_;
    .locals 1

    .line 93
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$IntentBuilder_;
    .locals 1

    .line 97
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public checkIsMobileTimeSyncedProperly()V
    .locals 7

    .line 138
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$4;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 9

    .line 170
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public hideProcessDialog()V
    .locals 4

    .line 126
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;)V

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

    .line 52
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public networkCallsForLanguageChange(Ljava/lang/String;)V
    .locals 8

    .line 154
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->init_(Landroid/os/Bundle;)V

    .line 46
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->onDestroy()V

    .line 187
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setContentView(I)V

    .line 77
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 114
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showProcessDialog()V
    .locals 4

    .line 102
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
