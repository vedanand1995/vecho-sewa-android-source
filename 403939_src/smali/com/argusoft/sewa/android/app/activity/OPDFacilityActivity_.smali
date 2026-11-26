.class public final Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;
.super Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;
.source "OPDFacilityActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;-><init>()V

    .line 38
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Z)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showOfflineMessage(Z)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showHealthInfraDetails()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->generateToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showMemberDetails()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->retrieveHealthInfraAssignedToUser()V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->retrieveMemberDetails()V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;)V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->openForm()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    const-string p1, "OPDFacilityActivity_"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 56
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 57
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 58
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 59
    const-class v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 61
    :try_start_0
    const-class v1, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    const-string v1, "Could not create DAO questionBeanDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v1, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 68
    const-string v1, "Could not create DAO answerBeanDao"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$IntentBuilder_;
    .locals 1

    .line 91
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$IntentBuilder_;
    .locals 1

    .line 95
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 160
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$6;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateToast(Ljava/lang/String;)V
    .locals 3

    .line 136
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->init_(Landroid/os/Bundle;)V

    .line 45
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 224
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->onDestroy()V

    .line 225
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    return-void
.end method

.method public openForm()V
    .locals 7

    .line 208
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$9;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveHealthInfraAssignedToUser()V
    .locals 7

    .line 176
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$7;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public retrieveMemberDetails()V
    .locals 7

    .line 192
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$8;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->setContentView(I)V

    .line 75
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->setContentView(Landroid/view/View;)V

    .line 87
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 100
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showHealthInfraDetails()V
    .locals 4

    .line 124
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showMemberDetails()V
    .locals 4

    .line 148
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showOfflineMessage(Z)V
    .locals 3

    .line 112
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$2;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
