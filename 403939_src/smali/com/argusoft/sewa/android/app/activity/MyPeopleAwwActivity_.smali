.class public final Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;
.super Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;
.source "MyPeopleAwwActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;-><init>()V

    .line 44
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/util/List;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addVisitSelectionScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->onLoadMoreBackground()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addGraph(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setServiceSelectionScreen()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->addSearchTextBox()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setMemberSelectionScreen(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setVisitSelectionScreen()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->showNotOnlineMessage()V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 63
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    .line 64
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 65
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 66
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    .line 67
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 68
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 70
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    const-string v0, "MyPeopleAwwActivity_"

    const-string v1, "Could not create DAO memberBeanDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$IntentBuilder_;
    .locals 1

    .line 95
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$IntentBuilder_;
    .locals 1

    .line 99
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 4

    .line 140
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addGraph(Ljava/lang/String;)V
    .locals 3

    .line 128
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 164
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVisitSelectionScreen()V
    .locals 4

    .line 116
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 236
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$12;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 57
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 50
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->init_(Landroid/os/Bundle;)V

    .line 51
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 300
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->onDestroy()V

    .line 301
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 284
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$11;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 10

    .line 268
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    invoke-static {v9}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 252
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setContentView(I)V

    .line 79
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setContentView(Landroid/view/View;)V

    .line 91
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setMemberSelectionScreen(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 176
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 2

    .line 212
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 4

    .line 152
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setVisitSelectionScreen()V
    .locals 4

    .line 188
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 104
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 4

    .line 200
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
