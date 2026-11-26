.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityFHSR.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private images:[I

.field private items:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 28
    const-string v0, "Library"

    const-string v1, "Announcement"

    const-string v2, "Work Log"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->items:[Ljava/lang/String;

    .line 34
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_announcement:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->images:[I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->changeActivity(I)V

    return-void
.end method

.method private changeActivity(I)V
    .locals 1

    .line 86
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 50
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setContentView(I)V

    .line 51
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 52
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 53
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setActionBarDesign()V

    .line 54
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setNavigationView()V

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->items:[Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->images:[I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 73
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;)V

    .line 79
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 80
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 45
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->context:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->init()V

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

    .line 60
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 61
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 62
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR;I)V

    .line 68
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHSR$1;->start()V

    return-void
.end method
