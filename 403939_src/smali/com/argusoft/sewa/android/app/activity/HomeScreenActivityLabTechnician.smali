.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityLabTechnician.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private images:[I

.field private items:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 36
    const-string v0, "OPD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->items:[Ljava/lang/String;

    .line 39
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lab_test:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->images:[I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->changeActivity(I)V

    return-void
.end method

.method private changeActivity(I)V
    .locals 1

    .line 57
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 67
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;)V

    .line 73
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 74
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 83
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 86
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 87
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->finish()V

    goto :goto_2

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 96
    :try_start_1
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 97
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 98
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 100
    const-class v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 103
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->finish()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 47
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->context:Landroid/content/Context;

    .line 48
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->setContentView(I)V

    .line 49
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 50
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 51
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->setActionBarDesign()V

    .line 52
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->setNavigationView()V

    .line 53
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->items:[Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->images:[I

    invoke-virtual {p0, p1, v0, v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

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

    .line 109
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 110
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 111
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;I)V

    .line 117
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;->start()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 123
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method
