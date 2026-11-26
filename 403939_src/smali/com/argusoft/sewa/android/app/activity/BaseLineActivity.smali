.class public Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "BaseLineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->showProcessDialog()V

    .line 28
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 29
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "userName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameForLog"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string v1, "entity"

    const-string v2, "ILA_BASELINE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x403

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 35
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x403

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->navigateToHomeScreen(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->context:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->startDynamicFormActivity()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity;->navigateToHomeScreen(Z)V

    const/4 p1, 0x1

    return p1
.end method
