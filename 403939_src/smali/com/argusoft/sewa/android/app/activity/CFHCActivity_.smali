.class public final Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;
.super Lcom/argusoft/sewa/android/app/activity/CFHCActivity;
.source "CFHCActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;-><init>()V

    .line 42
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;)V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSearchTextBox()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;)V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addVillageSelectionSpinner()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Z)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/util/List;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;)V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;)V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->onLoadMoreBackground()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 63
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 64
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 65
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 67
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    const-string v0, "CFHCActivity_"

    const-string v1, "Could not create DAO versionBeanDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$IntentBuilder_;
    .locals 1

    .line 92
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$IntentBuilder_;
    .locals 1

    .line 96
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addSearchTextBox()V
    .locals 4

    .line 113
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 4

    .line 125
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 161
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 55
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 48
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->init_(Landroid/os/Bundle;)V

    .line 49
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 225
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->onDestroy()V

    .line 226
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 209
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

    .line 149
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 193
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$8;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 177
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$7;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setContentView(I)V

    .line 76
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 3

    .line 137
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 101
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
