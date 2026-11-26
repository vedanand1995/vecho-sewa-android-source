.class public final Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;
.super Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;
.source "WorkRegisterChoActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;-><init>()V

    .line 37
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;)V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setAshaSelectionScreen()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;)V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showNotOnlineMessage()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;)V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addDateSelectionScreen()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->createTableLayout(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;ZII)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->retrieveData(ZII)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 54
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$IntentBuilder_;
    .locals 1

    .line 80
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$IntentBuilder_;
    .locals 1

    .line 84
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Landroid/widget/TableLayout;Ljava/util/List;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addDateSelectionScreen()V
    .locals 4

    .line 125
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createTableLayout(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Ljava/util/List;Ljava/util/List;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 161
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$7;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 49
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 42
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->init_(Landroid/os/Bundle;)V

    .line 43
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public retrieveData(ZII)V
    .locals 10

    .line 177
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$8;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v9

    move-object v1, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Ljava/lang/String;JLjava/lang/String;ZII)V

    invoke-static {v9}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setAshaSelectionScreen()V
    .locals 4

    .line 101
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setContentView(I)V

    .line 64
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setContentView(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 89
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 4

    .line 113
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
