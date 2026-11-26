.class public Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;
.super Landroidx/fragment/app/Fragment;
.source "DueListANCFragment.java"


# instance fields
.field private adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

.field argText:Ljava/lang/String;

.field private fromDate:Ljava/lang/String;

.field private limit:I

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private noDataText:Landroid/widget/TextView;

.field private offset:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field selectedVillageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private toDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->members:Ljava/util/List;

    const/16 v0, 0x1e

    .line 45
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->limit:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->offset:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;)Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    return-object p0
.end method

.method private getStringObjectLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->selectedVillageIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->selectedVillageIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->selectedVillageIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 129
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const-string v2, "locationIds"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "fromDate"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->fromDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "toDate"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->toDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private setupScrollListener()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private updateNoDataMessage()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->fromDate:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->toDate:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    sget v2, Lcom/argusoft/sewa/android/app/R$string;->no_records_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 174
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    sget v2, Lcom/argusoft/sewa/android/app/R$string;->select_month_to_get_data:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method fetchNextPage()V
    .locals 8

    const/4 v0, 0x0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->fromDate:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->toDate:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->runOnUiThreadSetLoading(Z)V

    .line 102
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->getStringObjectLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v5, "get_due_list_anc"

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v2, v6}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 104
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v7

    :cond_0
    if-eqz v7, :cond_2

    .line 108
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->offset:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->offset:I

    .line 110
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->limit:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v7, v1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->updateListWithNextPage(Ljava/util/List;Z)V

    goto :goto_1

    .line 112
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->updateListWithNextPage(Ljava/util/List;Z)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DueListANCFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->updateListWithNextPage(Ljava/util/List;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->fragment_simple:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->member_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->members:Ljava/util/List;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    .line 62
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->no_data_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->setupScrollListener()V

    .line 67
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->fetchNextPage()V

    return-object p1
.end method

.method public onDateRangeSelected(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->fromDate:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->toDate:Ljava/lang/String;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->offset:I

    .line 75
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->selectedVillageIds:Ljava/util/List;

    .line 76
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->members:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 77
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->members:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->updateData(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->fetchNextPage()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 168
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->updateNoDataMessage()V

    return-void
.end method

.method runOnUiThreadSetLoading(Z)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->setLoading(Z)V

    return-void
.end method

.method updateListWithNextPage(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->runOnUiThreadSetLoading(Z)V

    .line 144
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    invoke-virtual {v1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->setHasMoreData(Z)V

    .line 146
    iget p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->offset:I

    const/16 v1, 0x8

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 148
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 152
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->noDataText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->members:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->adapter:Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->members:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->updateData(Ljava/util/List;)V

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->updateNoDataMessage()V

    return-void
.end method
