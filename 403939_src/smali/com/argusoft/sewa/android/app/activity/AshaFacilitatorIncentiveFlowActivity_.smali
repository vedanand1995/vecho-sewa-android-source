.class public final Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;
.super Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;
.source "AshaFacilitatorIncentiveFlowActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;-><init>()V

    .line 41
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addUsersForApprovalToScreen()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setFormSubmissionScreen()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->retrieveAshaInLocation()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->storeIncentiveForm()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    const-string p1, "AshaFacilitatorIncentiv"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    .line 63
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 64
    const-class v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 66
    :try_start_0
    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->incentiveMonthlyDetailBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    const-string v1, "Could not create DAO incentiveMonthlyDetailBeanDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->userDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 73
    const-string v1, "Could not create DAO userDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$IntentBuilder_;
    .locals 1

    .line 96
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$IntentBuilder_;
    .locals 1

    .line 100
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addUsersForApprovalToScreen()V
    .locals 4

    .line 117
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 141
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$4;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

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

    .line 54
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->init_(Landroid/os/Bundle;)V

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->onDestroy()V

    .line 190
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public retrieveAshaInLocation()V
    .locals 7

    .line 157
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setContentView(I)V

    .line 80
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setContentView(Landroid/view/View;)V

    .line 92
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setFormSubmissionScreen()V
    .locals 4

    .line 129
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 105
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public storeIncentiveForm()V
    .locals 7

    .line 173
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method
