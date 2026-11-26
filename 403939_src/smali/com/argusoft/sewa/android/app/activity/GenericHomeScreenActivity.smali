.class public Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "GenericHomeScreenActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/component/OnMenuItemViewVClickListener;


# static fields
.field public static choAttendanceTimer:Ljava/util/Timer;


# instance fields
.field apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

.field private backgroundHandler:Landroid/os/Handler;

.field dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

.field homeMenuAdapter:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

.field lmsEventService:Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;

.field public markPresenceIconIndex:I

.field menuService:Lcom/argusoft/sewa/android/app/core/impl/MenuServiceImpl;

.field moveToProdService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

.field private orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MenuBean;",
            ">;"
        }
    .end annotation
.end field

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private uIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->markPresenceIconIndex:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->orderList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setTimer()V

    return-void
.end method

.method private checkIfFormIsAccessibleInProduction(Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;Landroid/view/View;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0, p2, p3}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->showAlertDialogForFormNotAccessible(Landroid/view/View;Ljava/lang/String;)V

    return v0

    .line 150
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getTrainingReq()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MOVE_TO_PRODUCTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 152
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->showAlertDialogForFormNotAccessible(Landroid/view/View;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private checkIfFormIsAccessibleInTraining(Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;Landroid/view/View;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 159
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getTrainingReq()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MOVE_TO_PRODUCTION_RESPONSE_PENDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 163
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getTrainingReq()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MOVE_TO_PRODUCTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0, p2, p3}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->showAlertDialogForFormNotAccessible(Landroid/view/View;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private checkLastActivity()V
    .locals 3

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->removePreviousReport()V

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getEndTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 437
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 439
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setVisit()V

    .line 440
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setTimer()V

    return-void

    .line 444
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 445
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 448
    :cond_1
    sput-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private checkMenuAccessibleToUser(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4

    .line 130
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->getFormCodeFromMenuConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "formcode ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->retrieveFormAccessibilityBeanByFormType(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;

    move-result-object v0

    .line 137
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0, v0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkIfFormIsAccessibleInTraining(Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 140
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkIfFormIsAccessibleInProduction(Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private init()V
    .locals 1

    .line 101
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_generic_home_screen:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setContentView(I)V

    .line 102
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 103
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 104
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setActionBarDesign()V

    .line 105
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setNavigationView()V

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->menuDetails()V

    return-void
.end method

.method private integerListToIntArray(Ljava/util/LinkedList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 113
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private loginIntoProduction()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-string v1, "No internet connection is available."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 240
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-string v2, "Please wait while we are loading the production mode."

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->backgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loginIntoTraining()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-string v1, "No internet connection is available."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 299
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-string v2, "Please wait while we are loading the training mode."

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->backgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setTimer()V
    .locals 7

    .line 528
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->choAttendanceTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    .line 530
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$5;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x36ee80

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkGps()V
    .locals 2

    .line 481
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setVisit()V

    :goto_0
    return-void
.end method

.method public checkNetworkAvailability()V
    .locals 5

    .line 456
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->hideProcessDialog()V

    .line 458
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    .line 464
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 465
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkGps()V

    :goto_0
    return-void
.end method

.method synthetic lambda$loginIntoProduction$3$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity(Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$loginIntoProduction$4$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 282
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method synthetic lambda$loginIntoProduction$5$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity()V
    .locals 5

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateAnswerBeanTokensAndUserIdsOnce()V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadDataToServer()V

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->lmsEventService:Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->uploadLmsEventToServer()V

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadUncaughtExceptionDetailToServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    const-string v2, "DATA_SYNC"

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 256
    :goto_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setLiveContextUrl()V

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->createApiService()V

    .line 258
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getPasswordPlain()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->validateUser(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->uIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    const-string v1, "Login Successful With Network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u0aa4\u0aae\u0abe\u0ab0\u0abe \u0aae\u0acb\u0aac\u0abe\u0a87\u0ab2\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a85\u0aa8\u0ac7 \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0aac\u0a82\u0aa7\u0aac\u0ac7\u0ab8\u0aa4\u0ac0 \u0aa8\u0aa5\u0ac0. \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a9b\u0ac7 : "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setTrainingContextUrl()V

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->createApiService()V

    goto :goto_2

    .line 269
    :cond_2
    :goto_1
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->techo_app:I

    sput v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    .line 270
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->doAfterSuccessfulLogin(Z)V

    .line 276
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->uIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$loginIntoTraining$6$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity(Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$loginIntoTraining$7$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 337
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->isAnyFormTrainingCompleted()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 348
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method synthetic lambda$loginIntoTraining$8$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity()V
    .locals 5

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateAnswerBeanTokensAndUserIdsOnce()V

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadDataToServer()V

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->lmsEventService:Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->uploadLmsEventToServer()V

    .line 308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadUncaughtExceptionDetailToServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    const-string v2, "DATA_SYNC"

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 315
    :goto_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setTrainingContextUrl()V

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->createApiService()V

    .line 317
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 318
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 319
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getPasswordPlain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 317
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->validateUser(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->uIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    const-string v1, "Login Successful With Network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u0aa4\u0aae\u0abe\u0ab0\u0abe \u0aae\u0acb\u0aac\u0abe\u0a87\u0ab2\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a85\u0aa8\u0ac7 \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0aac\u0a82\u0aa7\u0aac\u0ac7\u0ab8\u0aa4\u0ac0 \u0aa8\u0aa5\u0ac0. \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a9b\u0ac7 : "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 328
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setLiveContextUrl()V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->createApiService()V

    goto :goto_2

    .line 325
    :cond_1
    :goto_1
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    sput v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    .line 326
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->doAfterSuccessfulLogin(Z)V

    .line 332
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->uIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$menuDetails$9$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity(Landroid/view/View;)V
    .locals 0

    .line 408
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onItemClickListener$1$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity(Lcom/argusoft/sewa/android/app/model/MenuBean;Landroid/view/View;)V
    .locals 2

    .line 220
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getConstant()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->onClick(Landroid/view/View;)V

    .line 222
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onItemClickListener$2$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity(ILandroid/view/View;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->orderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/MenuBean;

    .line 215
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getConstant()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkMenuAccessibleToUser(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "MARK_PRESENCE_AT_HWC"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getConstant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkNetworkAvailability()V

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;Lcom/argusoft/sewa/android/app/model/MenuBean;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showAlertDialogForFormNotAccessible$0$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 187
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->loginIntoProduction()V

    goto :goto_0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->loginIntoTraining()V

    :cond_1
    :goto_0
    return-void
.end method

.method public menuDetails()V
    .locals 15

    .line 381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->menuService:Lcom/argusoft/sewa/android/app/core/impl/MenuServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MenuServiceImpl;->retrieveMenus()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->orderList:Ljava/util/List;

    .line 382
    const-string v1, "menu"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->orderList:Ljava/util/List;

    new-instance v1, Lcom/argusoft/sewa/android/app/comparator/MenuConstantComparator;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/comparator/MenuConstantComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 386
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 387
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 388
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->orderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/MenuBean;

    .line 392
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getConstant()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->getMenuIcons(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 393
    const-string v9, "MARK_PRESENCE_AT_HWC"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getConstant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 394
    iput v6, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->markPresenceIconIndex:I

    :cond_0
    if-nez v8, :cond_1

    .line 397
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getConstant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 405
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->orderList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->orderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    const/16 v4, -0x69

    const-string v6, "No Feature Found"

    const-string v7, "No feature is assigned to you."

    invoke-virtual {p0, v6, v7, v3, v4}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 412
    :cond_3
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->rv_home_screen_icons:I

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 413
    new-instance v4, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->integerListToIntArray(Ljava/util/LinkedList;)[I

    move-result-object v8

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 414
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->isNewNotification()Z

    move-result v12

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->isAnyUpdatedDataAvailable()Z

    move-result v13

    new-instance v14, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda6;

    invoke-direct {v14, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    const/4 v11, 0x1

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;-><init>(Landroid/content/Context;[I[Ljava/lang/String;[Ljava/lang/String;ZZZLcom/argusoft/sewa/android/app/component/OnMenuItemViewVClickListener;)V

    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->homeMenuAdapter:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    .line 416
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 417
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 419
    :cond_4
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 421
    :goto_1
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->homeMenuAdapter:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 423
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->hideProcessDialog()V

    .line 426
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->markPresenceIconIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 427
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkLastActivity()V

    :cond_5
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 521
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkGps()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 122
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    .line 123
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 124
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 92
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->uIHandler:Landroid/os/Handler;

    .line 94
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "HandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->backgroundHandler:Landroid/os/Handler;

    .line 97
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->init()V

    return-void
.end method

.method public onItemClickListener(ILandroid/view/View;)V
    .locals 2

    .line 211
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Please wait...."

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 213
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;ILandroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkIsMobileTimeSyncedProperly()V

    .line 369
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v0, "Please wait...."

    invoke-direct {p1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 370
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    const/4 p1, 0x0

    .line 371
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 374
    :cond_0
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 358
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 359
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 360
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return v1
.end method

.method public setVisit()V
    .locals 2

    .line 490
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->createReport()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 492
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 493
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->closeReport()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 516
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->hideProcessDialog()V

    return-void
.end method

.method public showAlertDialogForFormNotAccessible(Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    .line 172
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 175
    const-string p1, "Go to training mode"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    const-string p2, "Cancel"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string p1, "Your training for this feature has been completed successfully. You are already qualified to work in production."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    const-string v0, "Exit training mode"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    move-object v5, v0

    goto :goto_0

    .line 177
    :cond_0
    const-string p2, "Training is required to access this form. Please practice this feature in training mode."

    move-object v5, p1

    move-object p1, p2

    move-object v6, v0

    .line 182
    :goto_0
    new-instance p2, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    .line 183
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V

    const/16 v4, -0x97

    const/4 v7, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 197
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public showTrainingCompletedForm()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->moveToProdService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->isAnyFormTrainingCompleted()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
