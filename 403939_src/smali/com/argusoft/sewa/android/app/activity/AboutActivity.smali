.class public Lcom/argusoft/sewa/android/app/activity/AboutActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->navigateToHomeScreen(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 23
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 24
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_about:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->setContentView(I)V

    .line 25
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 26
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 27
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->finish()V

    .line 34
    :cond_0
    const-string v0, "About"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->setSubTitle(Ljava/lang/String;)V

    .line 38
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->version:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    const-string v1, "Version : 4.1.5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->releaseDate:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    const-string v1, "Release Date : 20th November 2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->link:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "https://techotraining.gujarat.gov.in/"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_1
    const-string v1, "https://techo.gujarat.gov.in/"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
