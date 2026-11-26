.class public final Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;
.super Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;
.source "DynamicFormActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;-><init>()V

    .line 47
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;)V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;)V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->checkForGpsEnabledForms()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onFormFillFinish(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->showToaster(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;)V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->getLgdWiseCoordinates()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;)V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->retrieveSheet()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->storeOpdLabTestForm(Ljava/lang/String;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 64
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 65
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 66
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 67
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/RchHighRiskServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/RchHighRiskServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/impl/RchHighRiskServiceImpl;

    .line 68
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    .line 69
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    .line 70
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 71
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->ncdScoreService:Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;

    .line 72
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->ncdService:Lcom/argusoft/sewa/android/app/core/impl/NcdServiceImpl;

    .line 73
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 74
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    .line 75
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

    .line 76
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 77
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    .line 78
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

    .line 79
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 80
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;

    .line 81
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl;

    .line 82
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$IntentBuilder_;
    .locals 1

    .line 104
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$IntentBuilder_;
    .locals 1

    .line 108
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public checkForGpsEnabledForms()V
    .locals 4

    .line 137
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 173
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getLgdWiseCoordinates()V
    .locals 7

    .line 189
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$7;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

    .line 59
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 52
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->init_(Landroid/os/Bundle;)V

    .line 53
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onFormFillFinish(Ljava/lang/String;Z)V
    .locals 2

    .line 149
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveSheet()V
    .locals 7

    .line 205
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$8;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView()V
    .locals 4

    .line 125
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView(I)V

    .line 88
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 113
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showToaster(Ljava/lang/String;)V
    .locals 3

    .line 161
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public storeOpdLabTestForm(Ljava/lang/String;)V
    .locals 8

    .line 221
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method
