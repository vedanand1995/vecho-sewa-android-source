.class public final Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;
.super Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;
.source "ABDMRecordLinkActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;-><init>()V

    .line 31
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getCareContextMasterDetails()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->validateDemographics()V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->checkForDirectAuth()V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->fetchAuthModes()V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->resendOTP()V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->VerifyOTP()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showInformationDialog()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setAbhaIdScreen()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setAuthModeSelectionScreen()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setOTPVerificationScreen()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setDemographicsScreen()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setDirectAuthScreen()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->validateAuthMode()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 48
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 49
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$IntentBuilder_;
    .locals 1

    .line 71
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$IntentBuilder_;
    .locals 1

    .line 75
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public VerifyOTP()V
    .locals 7

    .line 288
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$16;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public checkForDirectAuth()V
    .locals 7

    .line 240
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 176
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public fetchAuthModes()V
    .locals 7

    .line 256
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getCareContextMasterDetails()V
    .locals 7

    .line 208
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$11;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

    .line 43
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->init_(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public resendOTP()V
    .locals 7

    .line 272
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setAbhaIdScreen()V
    .locals 4

    .line 116
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAuthModeSelectionScreen()V
    .locals 4

    .line 128
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setContentView(I)V

    .line 55
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setDemographicsScreen()V
    .locals 4

    .line 152
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setDirectAuthScreen()V
    .locals 4

    .line 164
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setOTPVerificationScreen()V
    .locals 4

    .line 140
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 80
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlertDialog()V
    .locals 4

    .line 92
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showInformationDialog()V
    .locals 4

    .line 104
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public validateAuthMode()V
    .locals 7

    .line 192
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$10;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public validateDemographics()V
    .locals 7

    .line 224
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$12;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method
