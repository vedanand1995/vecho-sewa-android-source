.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityRBSK.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private array:[I

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

.field private final images:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private markPresenceIconIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 48
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, "Work Log"

    const-string v2, "Aamrutpan Supervision"

    const-string v3, "Mark Presence"

    const-string v4, "Head To Toe Screening"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->items:Ljava/util/LinkedList;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->menu_absent:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_head_to_toe_screening:I

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->menu_reverification:I

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    .line 74
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->images:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->changeActivity(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->markPresenceIconIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setTimer()V

    return-void
.end method

.method private changeActivity(I)V
    .locals 1

    .line 158
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->checkNetworkAvailability()V

    :goto_0
    return-void
.end method

.method private checkLastActivity()V
    .locals 4

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->removePreviousReport()V

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
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

    .line 191
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->RBSK_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->array:[I

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->markPresenceIconIndex:I

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_present:I

    aput v2, v0, v1

    .line 193
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setTimer()V

    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rbskAttendanceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rbskAttendanceTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->array:[I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->markPresenceIconIndex:I

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_absent:I

    aput v3, v0, v2

    .line 201
    sput-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->RBSK_ATTENDANCE_IS_MARKED_PRESENCE:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setTimer()V
    .locals 7

    .line 284
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rbskAttendanceTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rbskAttendanceTimer:Ljava/util/Timer;

    .line 286
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rbskAttendanceTimer:Ljava/util/Timer;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$7;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$7;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x36ee80

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkGps()V
    .locals 2

    .line 233
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setVisit()V

    :goto_0
    return-void
.end method

.method public checkNetworkAvailability()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V

    .line 216
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 217
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->checkGps()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 271
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$6;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V

    .line 278
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->items:Ljava/util/LinkedList;

    const-string v0, "Mark Presence"

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->markPresenceIconIndex:I

    .line 86
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setContentView(I)V

    .line 87
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 88
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 89
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setActionBarDesign()V

    .line 90
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setNavigationView()V

    .line 99
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->images:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->array:[I

    .line 101
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->images:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 102
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->array:[I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->items:Ljava/util/LinkedList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->array:[I

    invoke-virtual {p0, p1, v0, v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->checkLastActivity()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 145
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 147
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;I)V

    .line 154
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;->start()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->finish()V

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 127
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v0
.end method

.method public setVisit()V
    .locals 2

    .line 243
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->RBSK_ATTENDANCE_IS_MARKED_PRESENCE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->createReport()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 245
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->RBSK_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 246
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->closeReport()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
