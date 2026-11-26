.class public Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DueListPNCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberViewHolder"
.end annotation


# instance fields
.field deliveryDateText:Landroid/widget/TextView;

.field dobText:Landroid/widget/TextView;

.field dueDateText:Landroid/widget/TextView;

.field idText:Landroid/widget/TextView;

.field nameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->nameText:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->idText:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_due_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->dueDateText:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_last_delivery:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->deliveryDateText:Landroid/widget/TextView;

    return-void
.end method
