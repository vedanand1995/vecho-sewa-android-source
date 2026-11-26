.class public final Lcom/argusoft/sewa/android/app/activity/LoginActivity_;
.super Lcom/argusoft/sewa/android/app/activity/LoginActivity;
.source "LoginActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/LoginActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;-><init>()V

    .line 39
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlertAndExit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Z)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->doAfterSuccessfulLogin(Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->generateToaster(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setUserInProductionOrTraining(I)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setLoginScreen()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onLoginComplete(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Z)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->doAfterLogin(Z)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->hideProcessDialog()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->checkDeviceRootAccess()V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->checkIfDeviceIsBlocked()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    const-string p1, "LoginActivity_"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 60
    const-class v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 62
    :try_start_0
    const-class v1, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->loginDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    const-string v1, "Could not create DAO loginDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->versionDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 69
    const-string v1, "Could not create DAO versionDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/LoginActivity_$IntentBuilder_;
    .locals 1

    .line 92
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/LoginActivity_$IntentBuilder_;
    .locals 1

    .line 96
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public checkDeviceRootAccess()V
    .locals 7

    .line 197
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public checkIfDeviceIsBlocked()V
    .locals 7

    .line 213
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$10;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public doAfterLogin(Z)V
    .locals 3

    .line 173
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doAfterSuccessfulLogin(Z)V
    .locals 8

    .line 229
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$11;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateToaster(Ljava/lang/String;)V
    .locals 3

    .line 125
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public hideProcessDialog()V
    .locals 4

    .line 185
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V

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
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->init_(Landroid/os/Bundle;)V

    .line 46
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onDestroy()V

    .line 246
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoginComplete(Ljava/lang/String;I)V
    .locals 2

    .line 161
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;I)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setContentView(I)V

    .line 76
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setLoginScreen()V
    .locals 4

    .line 149
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setUserInProductionOrTraining(I)V
    .locals 3

    .line 137
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;I)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 113
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlertAndExit(Ljava/lang/String;)V
    .locals 3

    .line 101
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$1;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
