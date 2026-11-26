.class public final Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;
.super Lcom/argusoft/sewa/android/app/activity/NPCBScreening;
.source "NPCBScreening_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;-><init>()V

    .line 39
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->addSearchTextBoxForMember()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setMemberSelectionScreen(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->retrieveMemberListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->onLoadMoreBackground()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$IntentBuilder_;
    .locals 1

    .line 84
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$IntentBuilder_;
    .locals 1

    .line 88
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method addSearchTextBoxForMember()V
    .locals 4

    .line 105
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 141
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$5;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->init_(Landroid/os/Bundle;)V

    .line 45
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method onLoadMoreBackground()V
    .locals 7

    .line 173
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$7;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method onLoadMoreUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 157
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setContentView(I)V

    .line 68
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method setMemberSelectionScreen(Ljava/lang/Boolean;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/Boolean;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 93
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
