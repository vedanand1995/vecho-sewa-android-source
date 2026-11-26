.class public Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DueListANCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberViewHolder"
.end annotation


# instance fields
.field dobText:Landroid/widget/TextView;

.field dueDateText:Landroid/widget/TextView;

.field eddText:Landroid/widget/TextView;

.field highRisk:Landroid/widget/TextView;

.field idText:Landroid/widget/TextView;

.field lmpText:Landroid/widget/TextView;

.field nameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 124
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->nameText:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->idText:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_due_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->dueDateText:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_edd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->eddText:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_lmp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->lmpText:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->high_risk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->highRisk:Landroid/widget/TextView;

    return-void
.end method
