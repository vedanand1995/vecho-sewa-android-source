.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItemForIncentive(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/argusoft/sewa/android/app/component/PagingAdapter;

.field final synthetic val$listItems:Ljava/util/List;

.field final synthetic val$listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field final synthetic val$pagingListener:Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/PagingAdapter;Lcom/argusoft/sewa/android/app/component/PagingListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 664
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$pagingListener:Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$listItems:Ljava/util/List;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$adapter:Lcom/argusoft/sewa/android/app/component/PagingAdapter;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 667
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$pagingListener:Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$listItems:Ljava/util/List;

    invoke-interface {p1, p3, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;->performActionOnClick(ILjava/util/List;)V

    .line 668
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$adapter:Lcom/argusoft/sewa/android/app/component/PagingAdapter;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->notifyDataSetChanged()V

    .line 669
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;->val$listView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->invalidateViews()V

    return-void
.end method
