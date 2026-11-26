.class Lcom/argusoft/sewa/android/app/component/PagingListView$1;
.super Ljava/lang/Object;
.source "PagingListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/PagingListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/PagingListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$000(Lcom/argusoft/sewa/android/app/component/PagingListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$000(Lcom/argusoft/sewa/android/app/component/PagingListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    add-int/2addr p2, p3

    .line 93
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$100(Lcom/argusoft/sewa/android/app/component/PagingListView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$200(Lcom/argusoft/sewa/android/app/component/PagingListView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$300(Lcom/argusoft/sewa/android/app/component/PagingListView;)Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p2, p4, :cond_1

    .line 94
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$102(Lcom/argusoft/sewa/android/app/component/PagingListView;Z)Z

    .line 95
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$300(Lcom/argusoft/sewa/android/app/component/PagingListView;)Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;->onLoadMoreItems()V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$000(Lcom/argusoft/sewa/android/app/component/PagingListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingListView$1;->this$0:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->access$000(Lcom/argusoft/sewa/android/app/component/PagingListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
