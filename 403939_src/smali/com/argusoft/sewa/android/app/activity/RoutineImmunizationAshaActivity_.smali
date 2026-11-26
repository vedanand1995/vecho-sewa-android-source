.class public final Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;
.super Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;
.source "RoutineImmunizationAshaActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;-><init>()V

    .line 52
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addPncWomenListView()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setCampaignSelectionScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onLoadMoreUiDPTMembers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showMemberDetailsToAshaUser(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveCampaignSessionsByLocation()V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveCountsForEachNotificationType(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveMembersForDPTAlertFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/Integer;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveMemberCountForServices(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2001(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onLoadMoreBackground()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    return-void
.end method

.method static synthetic access$2101(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->loadMoreDPTMembersList()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addNotificationDisplayScreen(Z)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addDPTMembersScreen(Z)V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setMemberSelectionScreen()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addSelectedServiceMemberList()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setServiceListView()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addChildrenListView(Z)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addPregnantWomenListView(Z)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 70
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 71
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    .line 72
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 73
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 74
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 75
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    .line 76
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    .line 77
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    .line 78
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    .line 79
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

    .line 80
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl;

    .line 81
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 82
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    .line 83
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    .line 84
    const-class p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 86
    :try_start_0
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    const-string v0, "RoutineImmunizationAsha"

    const-string v1, "Could not create DAO memberBeanDao"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$IntentBuilder_;
    .locals 1

    .line 111
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$IntentBuilder_;
    .locals 1

    .line 115
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addChildrenListView(Z)V
    .locals 3

    .line 216
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$9;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addDPTMembersScreen(Z)V
    .locals 3

    .line 168
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 3

    .line 144
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addNotificationDisplayScreen(Z)V
    .locals 3

    .line 156
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addPncWomenListView()V
    .locals 4

    .line 240
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addPregnantWomenListView(Z)V
    .locals 3

    .line 228
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$10;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSelectedServiceMemberList()V
    .locals 4

    .line 192
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 288
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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

    .line 65
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public loadMoreDPTMembersList()V
    .locals 7

    .line 400
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$22;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$22;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->init_(Landroid/os/Bundle;)V

    .line 59
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 416
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onDestroy()V

    .line 417
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 384
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$21;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$21;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$12;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLoadMoreUiDPTMembers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$13;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveCampaignSessionsByLocation()V
    .locals 7

    .line 304
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$16;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveCountsForEachNotificationType(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;",
            ")V"
        }
    .end annotation

    .line 320
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    invoke-static {v8}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 13

    .line 336
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$18;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v12

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    invoke-static {v12}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMemberCountForServices(Ljava/lang/Integer;)V
    .locals 8

    .line 368
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$20;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMembersForDPTAlertFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 13

    .line 352
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$19;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v12

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    invoke-static {v12}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setCampaignSelectionScreen()V
    .locals 4

    .line 132
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setContentView(I)V

    .line 95
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setContentView(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 4

    .line 180
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setServiceListView()V
    .locals 4

    .line 204
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 120
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showMemberDetailsToAshaUser(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 2

    .line 276
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
