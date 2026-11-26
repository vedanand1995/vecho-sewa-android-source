.class public final Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;
.super Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;
.source "MyPeopleAshaActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;-><init>()V

    .line 41
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreUiFamilies(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showMDAorSideEffectsScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMalariaScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setNpcbMemberListScreen()V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMemberSelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setMotherDetailsScreen()V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->showNotOnlineMessage()V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/Map;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServicesProvidedScreenForRchRegister(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2001(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDC02FamilyListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setVisits()V

    return-void
.end method

.method static synthetic access$2101(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2201(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveMemberListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2301(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreBackground()V

    return-void
.end method

.method static synthetic access$2401(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreFamilyBackground()V

    return-void
.end method

.method static synthetic access$2501(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveRCHServicesProvidedToMember()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addGraph()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setServiceSelectionScreen()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForMember()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->addSearchTextBoxForFamily()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 62
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 63
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 64
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->malariaService:Lcom/argusoft/sewa/android/app/core/impl/MalariaServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$IntentBuilder_;
    .locals 1

    .line 86
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$IntentBuilder_;
    .locals 1

    .line 90
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 4

    .line 143
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addGraph()V
    .locals 4

    .line 131
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBoxForFamily()V
    .locals 4

    .line 179
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBoxForMember()V
    .locals 4

    .line 167
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 299
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$18;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 53
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->init_(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 395
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$24;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$24;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onLoadMoreFamilyBackground()V
    .locals 7

    .line 411
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$25;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$25;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

    .line 203
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$10;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiFamilies(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$11;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V
    .locals 8

    .line 363
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$22;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$22;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveLCDC02FamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 347
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$21;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$21;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 331
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$20;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMemberListFromDB(Ljava/lang/String;)V
    .locals 8

    .line 379
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$23;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$23;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveRCHServicesProvidedToMember()V
    .locals 7

    .line 427
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$26;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$26;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 7

    .line 315
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$19;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setContentView(I)V

    .line 70
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setContentView(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 3

    .line 191
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$9;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMalariaScreen(Ljava/lang/String;)V
    .locals 3

    .line 227
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$12;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMemberSelectionScreen(Z)V
    .locals 3

    .line 251
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$14;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMotherDetailsScreen()V
    .locals 4

    .line 263
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$15;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setNpcbMemberListScreen()V
    .locals 4

    .line 239
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 4

    .line 155
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setServicesProvidedScreenForRchRegister(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$17;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/util/Map;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setVisits()V
    .locals 4

    .line 119
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 95
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showMDAorSideEffectsScreen()V
    .locals 4

    .line 107
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 4

    .line 275
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$16;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
