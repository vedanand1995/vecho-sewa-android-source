.class public Lcom/argusoft/sewa/android/app/component/PagingListView;
.super Landroid/widget/ListView;
.source "PagingListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;
    }
.end annotation


# instance fields
.field private hasMoreItems:Z

.field private isLoading:Z

.field private loadingView:Lcom/argusoft/sewa/android/app/component/LoadingView;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private pagingListener:Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/PagingListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/PagingListView;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->isLoading:Z

    return p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/component/PagingListView;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->isLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/PagingListView;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->hasMoreItems:Z

    return p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/PagingListView;)Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->pagingListener:Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->isLoading:Z

    .line 73
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LoadingView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/component/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->loadingView:Lcom/argusoft/sewa/android/app/component/LoadingView;

    .line 74
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->addFooterView(Landroid/view/View;)V

    .line 75
    new-instance v0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView$1;-><init>(Lcom/argusoft/sewa/android/app/component/PagingListView;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onFinishLoadingWithItem(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setHasMoreItems(Z)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setIsLoading(Z)V

    if-eqz p2, :cond_0

    .line 63
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 65
    instance-of v0, p1, Lcom/argusoft/sewa/android/app/component/PagingAdapter;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/argusoft/sewa/android/app/component/PagingAdapter;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->addMoreItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setHasMoreItems(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->hasMoreItems:Z

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->loadingView:Lcom/argusoft/sewa/android/app/component/LoadingView;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 53
    :cond_0
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->loading_view:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->loadingView:Lcom/argusoft/sewa/android/app/component/LoadingView;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->addFooterView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->isLoading:Z

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPagingListener(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView;->pagingListener:Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;

    return-void
.end method
