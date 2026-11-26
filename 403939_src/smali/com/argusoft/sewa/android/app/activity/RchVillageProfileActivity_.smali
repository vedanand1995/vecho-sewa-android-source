.class public final Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;
.super Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;
.source "RchVillageProfileActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;-><init>()V

    .line 32
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->createVillageProfileScreen()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->getRchVillageProfileDataBeanNetworkCall()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 49
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 50
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$IntentBuilder_;
    .locals 1

    .line 72
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$IntentBuilder_;
    .locals 1

    .line 76
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public createVillageProfileScreen()V
    .locals 4

    .line 93
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 105
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$3;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getRchVillageProfileDataBeanNetworkCall()V
    .locals 7

    .line 137
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

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

    .line 44
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->init_(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 121
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$4;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setContentView(I)V

    .line 56
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setContentView(Landroid/view/View;)V

    .line 68
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 81
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/RchVillageProfileActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
