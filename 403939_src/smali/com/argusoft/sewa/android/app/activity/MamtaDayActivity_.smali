.class public final Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;
.super Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;
.source "MamtaDayActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;-><init>()V

    .line 41
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setMemberSelectionScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addVillageSelectionSpinner()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onLoadMoreBackground()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 63
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 65
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    const-string v0, "MamtaDayActivity_"

    const-string v1, "Could not create DAO memberBeanDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$IntentBuilder_;
    .locals 1

    .line 90
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$IntentBuilder_;
    .locals 1

    .line 94
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 4

    .line 159
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 4

    .line 147
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 183
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$8;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()V
    .locals 4

    .line 111
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->init_(Landroid/os/Bundle;)V

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->onDestroy()V

    .line 232
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 215
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$10;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

    .line 171
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 10

    .line 199
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    invoke-static {v9}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setContentView(I)V

    .line 74
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setContentView(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setMemberSelectionScreen(Ljava/lang/String;Z)V
    .locals 2

    .line 123
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setVisitSelectionScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 99
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
