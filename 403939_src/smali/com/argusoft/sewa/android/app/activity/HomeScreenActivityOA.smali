.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityOA.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
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
    .locals 5

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, "NPCB Screening"

    const-string v2, "Work Status"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->items:Ljava/util/LinkedList;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->menu_npcb:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 57
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->images:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->changeActivity(I)V

    return-void
.end method

.method private changeActivity(I)V
    .locals 1

    .line 114
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string p1, "OA_NPCB"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 119
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialogShown:Z

    if-nez p1, :cond_2

    .line 120
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public checkGps()V
    .locals 2

    .line 148
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public checkNetworkAvailability()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;)V

    .line 136
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 137
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->checkGps()V

    :goto_0
    return-void
.end method

.method synthetic lambda$checkNetworkAvailability$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityOA(Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$checkNetworkAvailability$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityOA(Landroid/content/DialogInterface;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 157
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;)V

    .line 159
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->setContentView(I)V

    .line 67
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 68
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 69
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->setActionBarDesign()V

    .line 70
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->setNavigationView()V

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->images:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->images:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->items:Ljava/util/LinkedList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

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

    .line 101
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 102
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 103
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;I)V

    .line 110
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;->start()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 89
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->finish()V

    .line 96
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 83
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v0
.end method
