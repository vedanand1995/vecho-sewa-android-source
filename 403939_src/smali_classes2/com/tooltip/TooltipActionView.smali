.class public Lcom/tooltip/TooltipActionView;
.super Landroid/widget/FrameLayout;
.source "TooltipActionView.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/tooltip/TooltipActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10102d8

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/tooltip/TooltipActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 62
    invoke-virtual {p0, p2}, Lcom/tooltip/TooltipActionView;->setClickable(Z)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/tooltip/TooltipActionView;->setLongClickable(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/tooltip/TooltipActionView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/tooltip/R$dimen;->action_button_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 66
    invoke-virtual {p0}, Lcom/tooltip/TooltipActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tooltip/R$dimen;->action_button_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr p3, v0

    const/4 v0, -0x2

    const/16 v2, 0x11

    invoke-direct {v1, p3, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 69
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tooltip/TooltipActionView;->mTextView:Landroid/widget/TextView;

    .line 70
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tooltip/TooltipActionView;->mImageView:Landroid/widget/ImageView;

    .line 72
    iget-object p1, p0, Lcom/tooltip/TooltipActionView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 73
    iget-object p1, p0, Lcom/tooltip/TooltipActionView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/tooltip/TooltipActionView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/tooltip/TooltipActionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object p1, p0, Lcom/tooltip/TooltipActionView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1}, Lcom/tooltip/TooltipActionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getMenuItem()Landroid/view/MenuItem;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tooltip/TooltipActionView;->mMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tooltip/TooltipActionView;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tooltip/TooltipActionView;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 10

    .line 89
    iget-object v0, p0, Lcom/tooltip/TooltipActionView;->mMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 90
    new-array v1, v0, [I

    .line 91
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 92
    invoke-virtual {p0, v1}, Lcom/tooltip/TooltipActionView;->getLocationOnScreen([I)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/tooltip/TooltipActionView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 94
    invoke-virtual {p0}, Lcom/tooltip/TooltipActionView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 95
    invoke-virtual {p0}, Lcom/tooltip/TooltipActionView;->getWidth()I

    move-result v4

    .line 96
    invoke-virtual {p0}, Lcom/tooltip/TooltipActionView;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    .line 97
    aget v6, v1, v6

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    iget-object v8, p0, Lcom/tooltip/TooltipActionView;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v8}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v6, v2, :cond_0

    .line 101
    aget v1, v1, v9

    sub-int/2addr v7, v1

    div-int/2addr v4, v0

    sub-int/2addr v7, v4

    const v0, 0x800035

    invoke-virtual {v3, v0, v7, v5}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    .line 103
    invoke-virtual {v3, v0, v9, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 105
    :goto_0
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 107
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setMenuItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/tooltip/TooltipActionView;->mMenuItem:Landroid/view/MenuItem;

    if-eq v0, p1, :cond_1

    .line 117
    iput-object p1, p0, Lcom/tooltip/TooltipActionView;->mMenuItem:Landroid/view/MenuItem;

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tooltip/TooltipActionView;->mImageView:Landroid/widget/ImageView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/tooltip/TooltipActionView;->mTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnMenuItemClick(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tooltip/TooltipActionView;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method
