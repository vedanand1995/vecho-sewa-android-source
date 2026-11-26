.class public Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter$MemberViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DueListCSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberViewHolder"
.end annotation


# instance fields
.field dobText:Landroid/widget/TextView;

.field dueDateText:Landroid/widget/TextView;

.field dueImmunization:Landroid/widget/TextView;

.field idText:Landroid/widget/TextView;

.field immunizationGiven:Landroid/widget/TextView;

.field nameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter$MemberViewHolder;->nameText:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter$MemberViewHolder;->idText:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_due_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter$MemberViewHolder;->dueDateText:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->immunizations_given:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter$MemberViewHolder;->immunizationGiven:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->member_dob:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter$MemberViewHolder;->dobText:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->over_due_immunizations_given:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/CS/DueListCSAdapter$MemberViewHolder;->dueImmunization:Landroid/widget/TextView;

    return-void
.end method
