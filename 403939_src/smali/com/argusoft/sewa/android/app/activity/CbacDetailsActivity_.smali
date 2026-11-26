.class public final Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;
.super Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;
.source "CbacDetailsActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;-><init>()V

    .line 32
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setCbacEditDetailsScreen()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setMemberDetailsScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->retrieveCbacDetailFromServer()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setRiskAssessmentScreen()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection1Screen()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection2Screen()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setEarlyDetection3Screen()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory1Screen()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory2Screen()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalHistory3Screen()V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setPersonalExaminationScreen()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 49
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 50
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 51
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$IntentBuilder_;
    .locals 1

    .line 73
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$IntentBuilder_;
    .locals 1

    .line 77
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 214
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$12;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 44
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->init_(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public retrieveCbacDetailFromServer()V
    .locals 7

    .line 246
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 230
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setCbacEditDetailsScreen()V
    .locals 4

    .line 202
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setContentView(I)V

    .line 57
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setEarlyDetection1Screen()V
    .locals 4

    .line 118
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setEarlyDetection2Screen()V
    .locals 4

    .line 130
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setEarlyDetection3Screen()V
    .locals 4

    .line 142
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMemberDetailsScreen()V
    .locals 4

    .line 94
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setPersonalExaminationScreen()V
    .locals 4

    .line 190
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setPersonalHistory1Screen()V
    .locals 4

    .line 154
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setPersonalHistory2Screen()V
    .locals 4

    .line 166
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setPersonalHistory3Screen()V
    .locals 4

    .line 178
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setRiskAssessmentScreen()V
    .locals 4

    .line 106
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 82
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
