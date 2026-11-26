.class Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DueListCSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;->setupScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;)V
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
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

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
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;->access$000(Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;)Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter;->isLoading:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;->access$000(Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;)Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter;->hasMoreData:Z

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 96
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;->access$000(Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;)Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-lt p1, p2, :cond_0

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSFragment;->fetchNextPage()V

    :cond_0
    return-void
.end method
