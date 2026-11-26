.class public Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "TravellersScreeningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"


# instance fields
.field private areaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private covidTravellersInfoBean:Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

.field private covidTravellersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private limit:J

.field private nextButton:Landroid/widget/Button;

.field private offset:J

.field private paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private selectedTravellerIndex:I

.field private textView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->selectedTravellerIndex:I

    const-wide/16 v0, 0x1e

    .line 63
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->limit:J

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->selectedTravellerIndex:I

    return p1
.end method

.method private getTravellerItemsList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    .line 144
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->showProcessDialog()V

    .line 96
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->setContentView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 99
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->nextButton:Landroid/widget/Button;

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->fetchTravellersListFromDB(Ljava/lang/String;)V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersInfoBean:Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForCovidTravellersForm(Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v1, "entity"

    const-string v2, "TRAVELLERS_SCREENING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ef

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public fetchTravellersListFromDB(Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x0

    .line 135
    iput-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->offset:J

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->areaIds:Ljava/util/List;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->limit:J

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveTravellersList(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersList:Ljava/util/List;

    .line 137
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->limit:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->offset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->offset:J

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->setMemberSelectionScreen()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3ef

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    .line 176
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->selectedTravellerIndex:I

    .line 177
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->setMemberSelectionScreen()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_2

    const-string p1, "memberSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->finish()V

    return-void

    .line 163
    :cond_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->selectedTravellerIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersInfoBean:Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    .line 165
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->startDynamicFormActivity()V

    goto :goto_0

    .line 167
    :cond_1
    const-string p1, "Please select a traveller"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "locationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 71
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;)V

    .line 72
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->areaIds:Ljava/util/List;

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->areaIds:Ljava/util/List;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->offset:J

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveTravellersList(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 203
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->offset:J

    .line 204
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->getTravellerItemsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 183
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_1

    const-string p1, "memberSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->finish()V

    return v1

    :cond_1
    return v2

    .line 185
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->setContentView(Landroid/view/View;)V

    .line 84
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->finish()V

    .line 91
    :cond_1
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v0

    const-string v1, "TRAVELLERS_SCREENING"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 4

    .line 107
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->screen:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "Select a Traveller"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 113
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->covidTravellersList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->getTravellerItemsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;)V

    .line 123
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->paginatedListViewWithItem:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 124
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 126
    :cond_0
    const-string v0, "No Travellers in your Area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 127
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TravellersScreeningActivity;->hideProcessDialog()V

    return-void
.end method
