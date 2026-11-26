.class public final Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;
.super Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;
.source "ChlorinationStatusActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;-><init>()V

    .line 40
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/util/List;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->addAreaListScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;)V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->addSearchTextBox()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->retrieveAreas(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 61
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 63
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    const-string v0, "ChlorinationStatusActiv"

    const-string v1, "Could not create DAO chlorinationStatusBeanDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$IntentBuilder_;
    .locals 1

    .line 88
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$IntentBuilder_;
    .locals 1

    .line 92
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAreaListScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;)V"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$2;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 121
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 133
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$4;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 53
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->init_(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->onDestroy()V

    .line 166
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public retrieveAreas(Ljava/lang/CharSequence;)V
    .locals 8

    .line 149
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->setContentView(I)V

    .line 72
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->setContentView(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 97
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
