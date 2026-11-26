.class public Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field cardView:Landroidx/cardview/widget/CardView;

.field image:Landroid/widget/ImageView;

.field notificationBadge:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_imageView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    .line 100
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->notification_badge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->notificationBadge:Landroid/widget/ImageView;

    .line 101
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_textView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->textView:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    return-void
.end method
