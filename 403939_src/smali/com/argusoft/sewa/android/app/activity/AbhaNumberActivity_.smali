.class public final Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;
.super Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;
.source "AbhaNumberActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;-><init>()V

    .line 45
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setBodyDetailForAsha()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->onLoadMoreBackground()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addVillageSelectionSpinner()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Z)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveLocationsAssignedToUser()V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveFamilyListFromDBForAsha(Ljava/lang/String;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    const-string p1, "AbhaNumberActivity_"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 63
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 64
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 65
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 66
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->abhaCreationService:Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;

    .line 67
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    .line 68
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 69
    const-class v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 71
    :try_start_0
    const-class v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->memberBeansDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    const-string v1, "Could not create DAO memberBeansDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->familyBeansDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 78
    const-string v1, "Could not create DAO familyBeansDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 83
    const-string v1, "Could not create DAO storeAnswerBeanDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$IntentBuilder_;
    .locals 1

    .line 106
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$IntentBuilder_;
    .locals 1

    .line 110
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 4

    .line 139
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 151
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 4

    .line 163
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 199
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$8;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 58
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 51
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->init_(Landroid/os/Bundle;)V

    .line 52
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->onDestroy()V

    .line 296
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 279
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 263
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$12;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveFamilyListFromDBForAsha(Ljava/lang/String;)V
    .locals 8

    .line 231
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$10;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveLocationsAssignedToUser()V
    .locals 7

    .line 215
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 247
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$11;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetailForAsha()V
    .locals 4

    .line 127
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setContentView(I)V

    .line 90
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 3

    .line 175
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$6;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 115
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
