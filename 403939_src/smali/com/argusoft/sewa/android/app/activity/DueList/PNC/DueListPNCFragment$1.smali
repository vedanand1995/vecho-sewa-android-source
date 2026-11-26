.class Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DueListPNCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;->setupScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 93
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    .line 94
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;->access$000(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;)Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->isLoading:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;->access$000(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;)Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->hasMoreData:Z

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 96
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;->access$000(Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;)Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-lt p1, p2, :cond_0

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCFragment;->fetchNextPage()V

    :cond_0
    return-void
.end method
