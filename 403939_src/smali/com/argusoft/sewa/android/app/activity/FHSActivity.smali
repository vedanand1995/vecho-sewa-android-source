.class public Lcom/argusoft/sewa/android/app/activity/FHSActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FHSActivity.java"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FHSActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->showProcessDialog()V

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 64
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 65
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->setChoiceSelectionScreen()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->setChoiceSelectionScreen()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 73
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FHSActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSActivity;)V

    .line 86
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Comprehensive Family Health Census?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 89
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->context:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->navigateToHomeScreen(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 47
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->setContentView(Landroid/view/View;)V

    .line 51
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->finish()V

    .line 58
    :cond_1
    const-string v0, "Comprehensive Family Health Census"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setChoiceSelectionScreen()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "What do you want to do?"

    .line 96
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 95
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const-string v1, "Comprehensive Family Health Census"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "Re-verification"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHSActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSActivity;)V

    .line 112
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->hideProcessDialog()V

    return-void
.end method
