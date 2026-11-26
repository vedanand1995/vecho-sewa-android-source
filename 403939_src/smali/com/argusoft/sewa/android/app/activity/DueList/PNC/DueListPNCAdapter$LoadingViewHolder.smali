.class public Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$LoadingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DueListPNCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingViewHolder"
.end annotation


# instance fields
.field progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->loading_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$LoadingViewHolder;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
