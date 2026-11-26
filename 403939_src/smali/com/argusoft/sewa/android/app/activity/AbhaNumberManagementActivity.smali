.class public Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AbhaNumberManagementActivity.java"


# instance fields
.field abhaCreationService:Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->showProcessDialog()V

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 72
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 73
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->setChoiceSelectionScreen()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3fc

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_1

    .line 144
    const-string p1, "healthIdNumber"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 145
    const-string p2, "isFromOffline"

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 146
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->abhaCreationService:Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;->createMigrationForOfflineAbha(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3fd

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 150
    const-class p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    const-string p1, "OfflineHealthIdBean"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 151
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->abhaCreationService:Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;

    const-class v1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;->createMigrationForOfflineAbha(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    .line 154
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->setChoiceSelectionScreen()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 81
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;)V

    .line 94
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close ABHA number creation?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 97
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 159
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->navigateToHomeScreen(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->setContentView(Landroid/view/View;)V

    .line 58
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->finish()V

    .line 65
    :cond_1
    const-string v0, "Create ABHA"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->setTitle(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->setChoiceSelectionScreen()V

    return-void
.end method

.method public setChoiceSelectionScreen()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "What do you want to do?"

    .line 104
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 103
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    const-string v1, "Create ABHA Number For New Member"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v1, "Create ABHA Number For Existing Member"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;)V

    .line 134
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberManagementActivity;->hideProcessDialog()V

    return-void
.end method
