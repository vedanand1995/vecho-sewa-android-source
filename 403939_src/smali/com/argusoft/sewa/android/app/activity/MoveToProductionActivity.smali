.class public Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MoveToProductionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private counter:I

.field private formsToMoveToProductions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;"
        }
    .end annotation
.end field

.field private formsTrainingCompleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;"
        }
    .end annotation
.end field

.field private globalPanel:Landroid/widget/LinearLayout;

.field moveToProductoinService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private yesNoToggleButton:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsToMoveToProductions:Ljava/util/List;

    return-void
.end method

.method private addFormList()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Congratulations"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You have completed your training in this form : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    .line 83
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->getForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Do you want to move to production?"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getYesNoToggleButton(Landroid/content/Context;)Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->yesNoToggleButton:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 88
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->hideProcessDialog()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->showProcessDialog()V

    .line 71
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 72
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 73
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->moveToProductoinService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->isAnyFormTrainingCompleted()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    .line 76
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->addFormList()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_4

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->yesNoToggleButton:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_0

    .line 100
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsToMoveToProductions:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsToMoveToProductions:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x2713

    if-ne p1, v1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsToMoveToProductions:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    :goto_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    .line 107
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsTrainingCompleted:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 108
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 109
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->addFormList()V

    goto :goto_1

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->moveToProductoinService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->formsToMoveToProductions:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->saveFormsToMoveToProduction(Ljava/util/List;)V

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->sendDataToServerIfOnline()V

    .line 113
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 116
    :cond_3
    const-string p1, "Please Select an option"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 133
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    if-eqz p1, :cond_0

    sub-int/2addr p1, v1

    .line 134
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->counter:I

    .line 135
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->addFormList()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->navigateToHomeScreen(Z)V

    :cond_1
    :goto_0
    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->setContentView(Landroid/view/View;)V

    .line 58
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->finish()V

    .line 65
    :cond_1
    const-string v0, "Move To Production"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public sendDataToServerIfOnline()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->moveToProductoinService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->postUserReadyToMoveProduction()V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MoveToProductionActivity;->moveToProductoinService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->saveFormAccessibilityBeansFromServer()V

    :cond_0
    return-void
.end method
