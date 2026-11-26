.class public final Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;
.super Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;
.source "NDHMHealthIdCreationActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;-><init>()V

    .line 38
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOptionSelectionForHealthIdCreationScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->validateToken()V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showAbhaCard()V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->generateOTP()V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendOTP()V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->generateHealthIdUsingAadhaarOTP()V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->generateUpdateMobileOTP()V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendUpdateMobileOtp()V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verifyUpdateMobileOTP()V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->createUsingAadhaarBiometricsV3()V

    return-void
.end method

.method static synthetic access$2001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/Long;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->downloadAbhaCard(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setCreateHealthIdViaAadhaarOTPScreen()V

    return-void
.end method

.method static synthetic access$2101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getAbhaCard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setCreateHealthIdViaFingerprintScreen()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setComponentForCreateHealthIdViaDemographics()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkNetworkConnection()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOTPVerificationScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setDisplayUpdateMobileNumber()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOTPVerificationForUpdateMobile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->displayHealthIdScreen(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 59
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 61
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    const-string v0, "NDHMHealthIdCreationAct"

    const-string v1, "Could not create DAO memberBeanDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$IntentBuilder_;
    .locals 1

    .line 86
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$IntentBuilder_;
    .locals 1

    .line 90
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public checkNetworkConnection()V
    .locals 4

    .line 155
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createUsingAadhaarBiometricsV3()V
    .locals 7

    .line 359
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$20;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public displayHealthIdScreen(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 203
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$10;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Landroid/graphics/Bitmap;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 215
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$11;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public downloadAbhaCard(Ljava/lang/Long;)V
    .locals 8

    .line 375
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$21;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$21;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateHealthIdUsingAadhaarOTP()V
    .locals 7

    .line 295
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$16;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateOTP()V
    .locals 7

    .line 263
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateUpdateMobileOTP()V
    .locals 7

    .line 311
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$17;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getAbhaCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 391
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$22;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$22;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->init_(Landroid/os/Bundle;)V

    .line 45
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 407
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->onDestroy()V

    .line 408
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public resendOTP()V
    .locals 7

    .line 279
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public resendUpdateMobileOtp()V
    .locals 7

    .line 327
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$18;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setComponentForCreateHealthIdViaDemographics()V
    .locals 4

    .line 143
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setContentView(I)V

    .line 70
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setContentView(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setCreateHealthIdViaAadhaarOTPScreen()V
    .locals 4

    .line 119
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setCreateHealthIdViaFingerprintScreen()V
    .locals 4

    .line 131
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setDisplayUpdateMobileNumber()V
    .locals 4

    .line 179
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setOTPVerificationForUpdateMobile(Ljava/lang/String;)V
    .locals 3

    .line 191
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$9;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setOTPVerificationScreen(Ljava/lang/String;)V
    .locals 3

    .line 167
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setOptionSelectionForHealthIdCreationScreen()V
    .locals 4

    .line 107
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAbhaCard()V
    .locals 7

    .line 247
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 95
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public validateToken()V
    .locals 7

    .line 231
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$12;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public verifyUpdateMobileOTP()V
    .locals 7

    .line 343
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$19;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method
