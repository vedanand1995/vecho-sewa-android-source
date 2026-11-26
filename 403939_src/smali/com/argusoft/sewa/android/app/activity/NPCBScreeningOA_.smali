.class public final Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;
.super Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;
.source "NPCBScreeningOA_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;-><init>()V

    .line 39
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setServiceSelectionScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->loadRbskReferredMembers(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->screenRbskMappedMember(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->retrieveMemberListFromOnline(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->awaitAndShowTechoId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreBackground()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->addSearchTextBoxOnline()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->openRbskReferredScreen()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setRbskReferredScreen(I)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setFortyPlusDetailsScreen()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/Boolean;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setMemberSelectionScreen(Ljava/lang/Boolean;I)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showTechoIdResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onLoadMoreRbskUi(Ljava/util/List;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$IntentBuilder_;
    .locals 1

    .line 84
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$IntentBuilder_;
    .locals 1

    .line 88
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method addSearchTextBoxOnline()V
    .locals 4

    .line 117
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method awaitAndShowTechoId(Ljava/lang/String;)V
    .locals 8

    .line 277
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 213
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$11;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method loadRbskReferredMembers(Ljava/lang/String;I)V
    .locals 9

    .line 229
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$12;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->init_(Landroid/os/Bundle;)V

    .line 45
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method onLoadMoreBackground()V
    .locals 7

    .line 293
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$16;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method onLoadMoreRbskUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;",
            ">;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$10;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

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

    .line 189
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$9;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method openRbskReferredScreen()V
    .locals 4

    .line 129
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method retrieveMemberListFromOnline(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 261
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method screenRbskMappedMember(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V
    .locals 9

    .line 245
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setContentView(I)V

    .line 68
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method setFortyPlusDetailsScreen()V
    .locals 4

    .line 153
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method setMemberSelectionScreen(Ljava/lang/Boolean;I)V
    .locals 2

    .line 165
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/Boolean;I)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method setRbskReferredScreen(I)V
    .locals 3

    .line 141
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;I)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method setServiceSelectionScreen()V
    .locals 4

    .line 105
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 93
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showTechoIdResult(Ljava/lang/String;)V
    .locals 3

    .line 177
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$8;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
