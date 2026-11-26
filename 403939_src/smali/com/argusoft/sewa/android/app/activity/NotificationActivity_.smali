.class public final Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;
.super Lcom/argusoft/sewa/android/app/activity/NotificationActivity;
.source "NotificationActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;-><init>()V

    .line 46
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreUiMR(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addVillageSelectionSpinner()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showReadOnlyNotification()V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveCountsForEachNotificationType()V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0

    .line 42
    invoke-super/range {p0 .. p6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0

    .line 42
    invoke-super/range {p0 .. p6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveChildListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreBackground()V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreBackgroundForMR()V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->markNotificationAsReadAndRetrieveData()V

    return-void
.end method

.method static synthetic access$2001(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->getAmrutpanMissedNotificationMembersFromServer(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationTypeScreen()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addLastUpdateLabel()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Z)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addNotificationSelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Z)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addChildSelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->updateAmrutpanNotificationScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 64
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 65
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    .line 66
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 67
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 68
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 69
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    .line 70
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 71
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 72
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 74
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->versionDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    const-string v0, "NotificationActivity_"

    const-string v1, "Could not create DAO versionDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$IntentBuilder_;
    .locals 1

    .line 99
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$IntentBuilder_;
    .locals 1

    .line 103
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 4

    .line 132
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addChildSelectionScreen(Z)V
    .locals 3

    .line 192
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$8;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addLastUpdateLabel()V
    .locals 4

    .line 156
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addNotificationSelectionScreen(Z)V
    .locals 3

    .line 180
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addNotificationTypeScreen()V
    .locals 4

    .line 144
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 168
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 4

    .line 120
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 252
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getAmrutpanMissedNotificationMembersFromServer(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 380
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$21;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$21;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

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

    .line 59
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public markNotificationAsReadAndRetrieveData()V
    .locals 7

    .line 364
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$20;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 52
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->init_(Landroid/os/Bundle;)V

    .line 53
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 396
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->onDestroy()V

    .line 397
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 332
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$18;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onLoadMoreBackgroundForMR()V
    .locals 7

    .line 348
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$19;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$10;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiMR(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$11;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveChildListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 13

    .line 316
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$17;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v12

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    invoke-static {v12}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveCountsForEachNotificationType()V
    .locals 7

    .line 284
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 13

    .line 300
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v12

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    invoke-static {v12}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 268
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setContentView(I)V

    .line 83
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setContentView(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 108
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showReadOnlyNotification()V
    .locals 4

    .line 240
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateAmrutpanNotificationScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;",
            ">;)V"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$9;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
