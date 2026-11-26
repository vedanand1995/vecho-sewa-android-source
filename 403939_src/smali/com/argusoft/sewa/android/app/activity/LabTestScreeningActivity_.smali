.class public final Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;
.super Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;
.source "LabTestScreeningActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;-><init>()V

    .line 38
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setServiceSelectionScreen()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setMemberSelectionScreen()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/util/List;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 34
    invoke-super/range {p0 .. p5}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->onLoadMoreBackground()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$IntentBuilder_;
    .locals 1

    .line 81
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$IntentBuilder_;
    .locals 1

    .line 85
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 138
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 50
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 43
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->init_(Landroid/os/Bundle;)V

    .line 44
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 170
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$7;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

    .line 126
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 12

    .line 154
    new-instance v11, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v11

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V

    invoke-static {v11}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setContentView(I)V

    .line 65
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setContentView(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 4

    .line 114
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 4

    .line 102
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 90
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
