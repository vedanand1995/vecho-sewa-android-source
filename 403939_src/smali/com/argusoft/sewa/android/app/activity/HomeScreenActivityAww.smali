.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityAww.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static images:[I

.field private static items:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    const-string v6, "Announcement"

    const-string v7, "Library"

    const-string v0, "FHS Read-only"

    const-string v1, "My People"

    const-string v2, "Your Schedule"

    const-string v3, "Daily Nutrition"

    const-string v4, "Take Home Ration"

    const-string v5, "Work Log"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->items:[Ljava/lang/String;

    .line 34
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->menu_fhs:I

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_high_risk_mother_child:I

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_reg:I

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->menu_assign_family:I

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->menu_announcement:I

    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    filled-new-array/range {v1 .. v8}, [I

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->images:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->changeActivity(I)V

    return-void
.end method

.method private changeActivity(I)V
    .locals 1

    .line 99
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 154
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :pswitch_4
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 127
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :pswitch_5
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :pswitch_6
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 112
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :pswitch_7
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .line 53
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->setContentView(I)V

    .line 54
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 55
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 56
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->setActionBarDesign()V

    .line 57
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->setNavigationView()V

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->context:Landroid/content/Context;

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->items:[Ljava/lang/String;

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->images:[I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 163
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;)V

    .line 169
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 170
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->init()V

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

    .line 87
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 88
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 89
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;I)V

    .line 95
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww$1;->start()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 75
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->finish()V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onResume()V

    .line 64
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityAww;->finish()V

    :cond_0
    return-void
.end method
