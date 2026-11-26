.class public interface abstract Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;
.super Ljava/lang/Object;
.source "PagingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/PagingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PagingListener"
.end annotation


# virtual methods
.method public abstract onLoadMoreItems()V
.end method

.method public abstract performActionOnClick(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;)V"
        }
    .end annotation
.end method
