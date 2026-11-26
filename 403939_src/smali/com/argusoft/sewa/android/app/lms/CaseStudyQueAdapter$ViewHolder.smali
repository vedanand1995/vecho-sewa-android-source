.class public Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CaseStudyQueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field noOfQue:Lcom/google/android/material/textview/MaterialTextView;

.field optionsLayout:Landroid/widget/LinearLayout;

.field queTitle:Lcom/google/android/material/textview/MaterialTextView;

.field questionImageView:Landroid/widget/ImageView;

.field questionLabel:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 126
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->questionTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->queTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 127
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->questionLabel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->questionLabel:Lcom/google/android/material/textview/MaterialTextView;

    .line 128
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->answerLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->optionsLayout:Landroid/widget/LinearLayout;

    .line 129
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->noOfQue:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->noOfQue:Lcom/google/android/material/textview/MaterialTextView;

    .line 130
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->questionImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$ViewHolder;->questionImageView:Landroid/widget/ImageView;

    return-void
.end method
