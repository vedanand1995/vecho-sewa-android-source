.class public Lcom/argusoft/sewa/android/app/component/PagingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PagingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private boldTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private boldTextView2:Lcom/google/android/material/textview/MaterialTextView;

.field private boldTextView3:Lcom/google/android/material/textview/MaterialTextView;

.field private bookmarkDuration:Lcom/google/android/material/textview/MaterialTextView;

.field private bookmarkName:Lcom/google/android/material/textview/MaterialTextView;

.field private bookmarkNote:Lcom/google/android/material/textview/MaterialTextView;

.field private dateTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private linearLayout:Landroid/widget/LinearLayout;

.field private listItemResourceId:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private regularTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

.field private regularTextView3:Lcom/google/android/material/textview/MaterialTextView;

.field private uniqueHealthIdAndMemberName:Landroid/widget/TextView;

.field private vaccines:Lcom/google/android/material/textview/MaterialTextView;

.field private vaccinesTitle:Lcom/google/android/material/textview/MaterialTextView;

.field private visitTextView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    .line 57
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    .line 58
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private setAbhaListViewRows()V
    .locals 5

    .line 472
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 473
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_bold:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 482
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_bold:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abha Number"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 489
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    goto :goto_1

    .line 491
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 493
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->abhaNumberImageView:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 494
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isHealthId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 495
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_2

    .line 497
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private setBoldAnd2RegularText(IIII)V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 504
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 506
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending Members"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getPendingAbhaCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 511
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 512
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 513
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 515
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 516
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 517
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 521
    :goto_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 524
    :cond_1
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 522
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :goto_2
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 528
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 530
    :cond_3
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 534
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 536
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private setBoldAndRegularText(III)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 212
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 214
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 226
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :goto_2
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 232
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 234
    :cond_3
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 238
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 240
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private setBoldAndRegularText2(III)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView2:Lcom/google/android/material/textview/MaterialTextView;

    .line 247
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    .line 249
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText2()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 261
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_2
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText2()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 267
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 269
    :cond_3
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText2()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 275
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private setBoldAndRegularText3(III)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView3:Lcom/google/android/material/textview/MaterialTextView;

    .line 282
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView3:Lcom/google/android/material/textview/MaterialTextView;

    .line 284
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView3:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView3:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView3:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 292
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView3:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText3()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText3()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 296
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :goto_2
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText3()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 302
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 304
    :cond_3
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText3()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 308
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 310
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private setBookmarkRows()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bookmark_name:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkName:Lcom/google/android/material/textview/MaterialTextView;

    .line 452
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBookmarkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bookmark_duration:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkDuration:Lcom/google/android/material/textview/MaterialTextView;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getPosition()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bookmark_note:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkNote:Lcom/google/android/material/textview/MaterialTextView;

    .line 456
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isCrossRefBookmark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->notification_due_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkName:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkDuration:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkNote:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->listview_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 465
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkName:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 466
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkDuration:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->bookmarkNote:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private setDateAndVisit(II)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->dateTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->visitTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 318
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getVisit()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getDate()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_date:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_date:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getVisit()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->notification_text_visit:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_visit:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setInfoListView()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_info_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 350
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_info_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_info_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setListView3Rows()V
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 542
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_bold:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 551
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_regular:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 555
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 557
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 563
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 564
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 566
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 567
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 569
    :goto_3
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_bold:I

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_regular:I

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->list_third_text_regular:I

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_separator:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAnd2RegularText(IIII)V

    return-void
.end method

.method private setListViewRows()V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 360
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_bold:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 368
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_regular:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 369
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserFullName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 370
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserFullName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 373
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 378
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 381
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 390
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 393
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 395
    :goto_3
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_bold:I

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_regular:I

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_separator:I

    invoke-direct {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText(III)V

    return-void
.end method

.method private setListViewRowsNPCB()V
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 400
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_text_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_bold:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 408
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_regular:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 409
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserFullName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 410
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getUserFullName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 413
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 418
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getMemberName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 421
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_separator:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 430
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_verified_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 433
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 435
    :goto_3
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_bold:I

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_regular:I

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_separator:I

    invoke-direct {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText(III)V

    return-void
.end method

.method private setListViewRowsNPCBOnsiteMapping()V
    .locals 7

    .line 579
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_first_text_bold:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 580
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_bold:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView2:Lcom/google/android/material/textview/MaterialTextView;

    .line 583
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_second_text_regular:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    .line 584
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView2:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_third_text_bold:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView3:Lcom/google/android/material/textview/MaterialTextView;

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_third_text_regular:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView3:Lcom/google/android/material/textview/MaterialTextView;

    .line 589
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView3:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView3:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getRegularText3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->list_leading_icon:I

    .line 593
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->list_leading_icon_2:I

    .line 594
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->list_leading_icon_3:I

    .line 595
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    .line 597
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getLeadingIconTintColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getLeadingIconTintColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getLeadingIconTintColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 601
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    .line 604
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 605
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getLeadingIconResIds()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 606
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 607
    aget-object v6, v4, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    :cond_3
    aget-object v2, v4, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 610
    aget-object v2, v4, v1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 612
    :cond_4
    aget-object v2, v4, v1

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private setNotificationRow()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->notification_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 440
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getNotificationCount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->notification_count:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 443
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getNotificationCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->notification_badge:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->notification_badge:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setSessionButtonWithBadge(IIII)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 619
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 620
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 621
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 622
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getBoldText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 627
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 629
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setTaskOverDueRow(III)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 179
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->visitTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1}, Lcom/google/android/material/textview/MaterialTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 181
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->dateTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->vaccinesTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->vaccines:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 185
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 186
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setTaskOverDueRowWithInfo(III)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->visitTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1}, Lcom/google/android/material/textview/MaterialTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->boldTextView3:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 197
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->regularTextView3:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->dateTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 199
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->vaccinesTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->vaccines:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator_01:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 202
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator_02:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator_03:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 204
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 205
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 206
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setVaccines(II)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->vaccines:Lcom/google/android/material/textview/MaterialTextView;

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getVaccines()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->vaccinesTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 337
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getVaccinesTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getVaccines()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines_title:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines_title:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addMoreItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    .line 90
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p3, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    .line 95
    :goto_0
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    if-ne p2, p3, :cond_1

    .line 96
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->lists_text:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 98
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 99
    :cond_1
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    if-ne p2, p3, :cond_2

    .line 100
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 101
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->list_text_bold:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->list_text_regular:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->list_text_separator:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText(III)V

    goto/16 :goto_1

    .line 102
    :cond_2
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    if-ne p2, p3, :cond_3

    .line 103
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 104
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setNotificationRow()V

    goto/16 :goto_1

    .line 105
    :cond_3
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    if-ne p2, p3, :cond_5

    .line 106
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 107
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_bold:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_regular:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText(III)V

    .line 108
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_date:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_visit:I

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setDateAndVisit(II)V

    .line 109
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines_title:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines:I

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setVaccines(II)V

    .line 111
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isTaskOverDue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 112
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->notification_due_selector:I

    sget p2, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    sget p3, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setTaskOverDueRow(III)V

    goto/16 :goto_1

    .line 114
    :cond_4
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->listview_selector:I

    sget p2, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    sget p3, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setTaskOverDueRow(III)V

    goto/16 :goto_1

    .line 116
    :cond_5
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    if-ne p2, p3, :cond_7

    .line 117
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 118
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_bold_01:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_regular_01:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator_01:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText(III)V

    .line 119
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_bold_02:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_regular_02:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator_02:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText2(III)V

    .line 120
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_bold_03:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_regular_03:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator_03:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText3(III)V

    .line 121
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_date:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_visit:I

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setDateAndVisit(II)V

    .line 122
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines_title:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines:I

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setVaccines(II)V

    .line 124
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isTaskOverDue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 125
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->notification_due_selector:I

    sget p2, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    sget p3, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setTaskOverDueRowWithInfo(III)V

    goto/16 :goto_1

    .line 127
    :cond_6
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->listview_selector:I

    sget p2, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    sget p3, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setTaskOverDueRowWithInfo(III)V

    goto/16 :goto_1

    .line 129
    :cond_7
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    if-ne p2, p3, :cond_8

    .line 130
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 131
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setInfoListView()V

    .line 132
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->list_info_text_bold:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->list_info_text_regular:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->list_info_text_separator:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText(III)V

    goto/16 :goto_1

    .line 133
    :cond_8
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    if-ne p2, p3, :cond_9

    .line 134
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 135
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setListViewRows()V

    goto/16 :goto_1

    .line 136
    :cond_9
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item_npcb:I

    if-ne p2, p3, :cond_a

    .line 137
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 138
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setListViewRowsNPCB()V

    goto/16 :goto_1

    .line 139
    :cond_a
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_three_item:I

    if-ne p2, p3, :cond_b

    .line 140
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 141
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setListView3Rows()V

    goto/16 :goto_1

    .line 142
    :cond_b
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_three_item_npcb:I

    if-ne p2, p3, :cond_c

    .line 143
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 144
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setListViewRowsNPCBOnsiteMapping()V

    goto/16 :goto_1

    .line 145
    :cond_c
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_bookmark:I

    if-ne p2, p3, :cond_d

    .line 146
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 147
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBookmarkRows()V

    goto/16 :goto_1

    .line 148
    :cond_d
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_abha_number:I

    if-ne p2, p3, :cond_e

    .line 149
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 150
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setAbhaListViewRows()V

    goto/16 :goto_1

    .line 151
    :cond_e
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->list_view_item_with_checkbox:I

    if-ne p2, p3, :cond_10

    .line 152
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 153
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->nameAndUniqueHealthId:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->uniqueHealthIdAndMemberName:Landroid/widget/TextView;

    .line 154
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isVerified()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    .line 156
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->uniqueHealthIdAndMemberName:Landroid/widget/TextView;

    sget p3, Lcom/argusoft/sewa/android/app/R$drawable;->checkmark:I

    invoke-virtual {p1, p3, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 158
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->uniqueHealthIdAndMemberName:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 161
    :cond_10
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_due_vaccine:I

    if-ne p2, p3, :cond_11

    .line 162
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 163
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_bold:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_regular:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->notification_text_separator:I

    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setBoldAndRegularText(III)V

    .line 164
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines_title:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->notification_text_vaccines:I

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setVaccines(II)V

    goto :goto_1

    .line 165
    :cond_11
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->listItemResourceId:I

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->custom_button_list:I

    if-ne p2, p3, :cond_12

    .line 166
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->item:Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 167
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->lists_button:I

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->activeSessionBadge:I

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->session_date:I

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->session_location:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->setSessionButtonWithBadge(IIII)V

    goto :goto_1

    .line 169
    :cond_12
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 170
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    sget p3, Lcom/argusoft/sewa/android/app/R$id;->lists_text:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 171
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->linearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
