.class public final Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;
.super Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;
.source "AdolescentEventNotificationActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;-><init>()V

    .line 38
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAshaAreaForStoringFamilySelectionSpinner()V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addLastUpdateLabel()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addVillageSelectionSpinnerForLocalData()V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAshaAreaSelectionSpinnerForLocalData()V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setBodyDetailForStoringFamily()V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setBodyDetailForFetchingLocalData()V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->retrieveMemberOfParticularSchool(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0

    .line 34
    invoke-super/range {p0 .. p6}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->retrieveMembersByAdvanceSearch(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->onLoadMoreBackground()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSearchTextBox()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolMemberSearchTextBox()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedSearchTextBox()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Z)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addMembersOfParticularSchoolSelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Z)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addNotificationSelectionScreen(Z)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Z)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedSearchBasedOnRegionScreen(Z)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/util/List;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addVillageForStoringFamilySelectionSpinner()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    .line 59
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 60
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 61
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$IntentBuilder_;
    .locals 1

    .line 83
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$IntentBuilder_;
    .locals 1

    .line 87
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public addAdvancedSearchBasedOnRegionScreen(Z)V
    .locals 3

    .line 176
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$8;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addAdvancedSearchTextBox()V
    .locals 4

    .line 140
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addAshaAreaForStoringFamilySelectionSpinner()V
    .locals 4

    .line 212
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addAshaAreaSelectionSpinnerForLocalData()V
    .locals 4

    .line 236
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addLastUpdateLabel()V
    .locals 4

    .line 104
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addMembersOfParticularSchoolSelectionScreen(Z)V
    .locals 3

    .line 152
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$6;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addNotificationSelectionScreen(Z)V
    .locals 3

    .line 164
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSchoolMemberSearchTextBox()V
    .locals 4

    .line 128
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 116
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVillageForStoringFamilySelectionSpinner()V
    .locals 4

    .line 200
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addVillageSelectionSpinnerForLocalData()V
    .locals 4

    .line 224
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 248
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$14;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

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
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 43
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->init_(Landroid/os/Bundle;)V

    .line 44
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 344
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$20;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;)V"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$9;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/util/List;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 13

    .line 312
    new-instance v12, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$18;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v12

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    invoke-static {v12}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMemberOfParticularSchool(Ljava/lang/CharSequence;)V
    .locals 8

    .line 296
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$17;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMembersByAdvanceSearch(Ljava/lang/CharSequence;)V
    .locals 8

    .line 328
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$19;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetailForFetchingLocalData()V
    .locals 7

    .line 280
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$16;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setBodyDetailForStoringFamily()V
    .locals 7

    .line 264
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$15;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setContentView(I)V

    .line 67
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 92
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
