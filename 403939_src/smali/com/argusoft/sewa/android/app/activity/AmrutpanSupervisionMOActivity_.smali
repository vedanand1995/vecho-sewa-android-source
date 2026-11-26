.class public final Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;
.super Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;
.source "AmrutpanSupervisionMOActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;-><init>()V

    .line 37
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;)V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->addMoLocationSelectionSpinner()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->updateMemberSelectionScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;)V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setMemberSelectionScreen(Ljava/util/List;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 54
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$IntentBuilder_;
    .locals 1

    .line 81
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$IntentBuilder_;
    .locals 1

    .line 85
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addMoLocationSelectionSpinner()V
    .locals 4

    .line 102
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 126
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$4;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 42
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->init_(Landroid/os/Bundle;)V

    .line 43
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 142
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setContentView(I)V

    .line 65
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setContentView(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method setMemberSelectionScreen(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 90
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateMemberSelectionScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
