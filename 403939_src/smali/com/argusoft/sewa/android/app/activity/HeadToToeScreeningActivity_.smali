.class public final Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;
.super Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;
.source "HeadToToeScreeningActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;-><init>()V

    .line 39
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addEventHandler(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addSearchScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewDefectSelectionScreen()V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setImage(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setDefaultImage(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setSelectedDefectsScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewStabilizationInfoForDefects(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewReferralConformationScreen()V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewHealthInfrastructureScreen()V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningCompletionScreen()V

    return-void
.end method

.method static synthetic access$2001(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->generateToaster(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->createHealthInfraSpinner()V

    return-void
.end method

.method static synthetic access$2101(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2201(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->retrieveAssignedHealthInfra()V

    return-void
.end method

.method static synthetic access$2301(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getMemberDataBeanFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2401(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getFamilyDataBeanFromServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2501(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setDefectSelectionScreen()V

    return-void
.end method

.method static synthetic access$2601(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/util/Map;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getImageFromServer(Ljava/util/Map;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$2701(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->retrieveSelectedDefectDetails()V

    return-void
.end method

.method static synthetic access$2801(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getStabilizationInfoForDefects()V

    return-void
.end method

.method static synthetic access$2901(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->storeScreeningDetails()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showFamilyDetails()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setMemberDetailsView()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setChildBodyMeasurementScreen()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setApgarQuestionView()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setCommonDefectsScreen1()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setCommonDefectsScreen2()V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningConfirmationScreen()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$IntentBuilder_;
    .locals 1

    .line 81
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$IntentBuilder_;
    .locals 1

    .line 85
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addEventHandler(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 210
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchScreen()V
    .locals 4

    .line 102
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createHealthInfraSpinner()V
    .locals 4

    .line 114
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 342
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$22;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$22;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateToaster(Ljava/lang/String;)V
    .locals 3

    .line 330
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$21;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$21;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getFamilyDataBeanFromServer(Ljava/lang/String;)V
    .locals 8

    .line 390
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$25;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$25;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getImageFromServer(Ljava/util/Map;Landroid/widget/LinearLayout;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .line 422
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$27;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$27;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Landroid/widget/LinearLayout;)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getMemberDataBeanFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 374
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$24;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$24;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getStabilizationInfoForDefects()V
    .locals 7

    .line 454
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$29;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$29;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->init_(Landroid/os/Bundle;)V

    .line 45
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public retrieveAssignedHealthInfra()V
    .locals 7

    .line 358
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$23;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$23;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveSelectedDefectDetails()V
    .locals 7

    .line 438
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$28;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$28;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setApgarQuestionView()V
    .locals 4

    .line 162
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setChildBodyMeasurementScreen()V
    .locals 4

    .line 150
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setCommonDefectsScreen1()V
    .locals 4

    .line 174
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setCommonDefectsScreen2()V
    .locals 4

    .line 186
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setContentView(I)V

    .line 65
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setContentView(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setDefaultImage(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 258
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$15;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setDefectSelectionScreen()V
    .locals 7

    .line 406
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$26;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$26;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setImage(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 246
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMemberDetailsView()V
    .locals 4

    .line 138
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setScreeningCompletionScreen()V
    .locals 4

    .line 318
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$20;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setScreeningConfirmationScreen()V
    .locals 4

    .line 198
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setSelectedDefectsScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$16;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 90
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showFamilyDetails()V
    .locals 4

    .line 126
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public storeScreeningDetails()V
    .locals 7

    .line 470
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$30;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$30;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public viewDefectSelectionScreen()V
    .locals 4

    .line 222
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public viewHealthInfrastructureScreen()V
    .locals 4

    .line 306
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$19;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public viewReferralConformationScreen()V
    .locals 4

    .line 294
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$18;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public viewStabilizationInfoForDefects(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$17;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
