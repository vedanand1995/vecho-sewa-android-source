.class public final Lcom/tooltip/Tooltip;
.super Ljava/lang/Object;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tooltip/Tooltip$Builder;
    }
.end annotation


# instance fields
.field private final isCancelable:Z

.field private final isDismissOnClick:Z

.field private final mAnchorView:Landroid/view/View;

.field private final mArrowLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mArrowView:Landroid/widget/ImageView;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContentView:Landroid/widget/LinearLayout;

.field private final mGravity:I

.field private final mLocationLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mMargin:F

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnClickListener:Lcom/tooltip/OnClickListener;

.field private mOnDismissListener:Lcom/tooltip/OnDismissListener;

.field private mOnLongClickListener:Lcom/tooltip/OnLongClickListener;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method private constructor <init>(Lcom/tooltip/Tooltip$Builder;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Lcom/tooltip/Tooltip$3;

    invoke-direct {v0, p0}, Lcom/tooltip/Tooltip$3;-><init>(Lcom/tooltip/Tooltip;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mClickListener:Landroid/view/View$OnClickListener;

    .line 292
    new-instance v0, Lcom/tooltip/Tooltip$4;

    invoke-direct {v0, p0}, Lcom/tooltip/Tooltip$4;-><init>(Lcom/tooltip/Tooltip;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 299
    new-instance v0, Lcom/tooltip/Tooltip$5;

    invoke-direct {v0, p0}, Lcom/tooltip/Tooltip$5;-><init>(Lcom/tooltip/Tooltip;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 310
    new-instance v0, Lcom/tooltip/Tooltip$6;

    invoke-direct {v0, p0}, Lcom/tooltip/Tooltip$6;-><init>(Lcom/tooltip/Tooltip;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mLocationLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 322
    new-instance v0, Lcom/tooltip/Tooltip$7;

    invoke-direct {v0, p0}, Lcom/tooltip/Tooltip$7;-><init>(Lcom/tooltip/Tooltip;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mArrowLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 362
    new-instance v0, Lcom/tooltip/Tooltip$8;

    invoke-direct {v0, p0}, Lcom/tooltip/Tooltip$8;-><init>(Lcom/tooltip/Tooltip;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 80
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$000(Lcom/tooltip/Tooltip$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tooltip/Tooltip;->isCancelable:Z

    .line 81
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$100(Lcom/tooltip/Tooltip$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tooltip/Tooltip;->isDismissOnClick:Z

    .line 83
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$200(Lcom/tooltip/Tooltip$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tooltip/Tooltip;->mGravity:I

    .line 84
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$300(Lcom/tooltip/Tooltip$Builder;)F

    move-result v0

    iput v0, p0, Lcom/tooltip/Tooltip;->mMargin:F

    .line 85
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$400(Lcom/tooltip/Tooltip$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mAnchorView:Landroid/view/View;

    .line 86
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$500(Lcom/tooltip/Tooltip$Builder;)Lcom/tooltip/OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mOnClickListener:Lcom/tooltip/OnClickListener;

    .line 87
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$600(Lcom/tooltip/Tooltip$Builder;)Lcom/tooltip/OnLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mOnLongClickListener:Lcom/tooltip/OnLongClickListener;

    .line 88
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$700(Lcom/tooltip/Tooltip$Builder;)Lcom/tooltip/OnDismissListener;

    move-result-object v0

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mOnDismissListener:Lcom/tooltip/OnDismissListener;

    .line 90
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$800(Lcom/tooltip/Tooltip$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 v1, -0x2

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 95
    invoke-direct {p0, p1}, Lcom/tooltip/Tooltip;->getContentView(Lcom/tooltip/Tooltip$Builder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 96
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$000(Lcom/tooltip/Tooltip$Builder;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 97
    new-instance p1, Lcom/tooltip/Tooltip$1;

    invoke-direct {p1, p0}, Lcom/tooltip/Tooltip$1;-><init>(Lcom/tooltip/Tooltip;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tooltip/Tooltip$Builder;Lcom/tooltip/Tooltip$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/tooltip/Tooltip;-><init>(Lcom/tooltip/Tooltip$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tooltip/Tooltip;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnDismissListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mOnDismissListener:Lcom/tooltip/OnDismissListener;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/tooltip/Tooltip;)Landroid/widget/PopupWindow;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnClickListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mOnClickListener:Lcom/tooltip/OnClickListener;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnLongClickListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mOnLongClickListener:Lcom/tooltip/OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/tooltip/Tooltip;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/tooltip/Tooltip;->isCancelable:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/tooltip/Tooltip;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/tooltip/Tooltip;->isDismissOnClick:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/tooltip/Tooltip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/tooltip/Tooltip;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mArrowLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/tooltip/Tooltip;)Landroid/graphics/PointF;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/tooltip/Tooltip;->calculateLocation()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/tooltip/Tooltip;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/tooltip/Tooltip;->mGravity:I

    return p0
.end method

.method static synthetic access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mArrowView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tooltip/Tooltip;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tooltip/Tooltip;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method private calculateLocation()Landroid/graphics/PointF;
    .locals 6

    .line 256
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/tooltip/Tooltip;->mAnchorView:Landroid/view/View;

    invoke-static {v1}, Lcom/tooltip/Util;->calculateRectInWindow(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    .line 259
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 261
    iget v3, p0, Lcom/tooltip/Tooltip;->mGravity:I

    const/16 v4, 0x30

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x50

    if-eq v3, v4, :cond_2

    const v4, 0x800003

    if-eq v3, v4, :cond_1

    const v4, 0x800005

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/tooltip/Tooltip;->mMargin:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 268
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 263
    :cond_1
    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/tooltip/Tooltip;->mMargin:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 264
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 275
    :cond_2
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 276
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/tooltip/Tooltip;->mMargin:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 271
    :cond_3
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 272
    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tooltip/Tooltip;->mMargin:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method private getContentView(Lcom/tooltip/Tooltip$Builder;)Landroid/view/View;
    .locals 10

    .line 110
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 111
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1200(Lcom/tooltip/Tooltip$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 112
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1300(Lcom/tooltip/Tooltip$Builder;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 114
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1400(Lcom/tooltip/Tooltip$Builder;)F

    move-result v1

    float-to-int v1, v1

    .line 116
    new-instance v2, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$800(Lcom/tooltip/Tooltip$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1500(Lcom/tooltip/Tooltip$Builder;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 118
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1600(Lcom/tooltip/Tooltip$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1700(Lcom/tooltip/Tooltip$Builder;)F

    move-result v1

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1800(Lcom/tooltip/Tooltip$Builder;)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 121
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$1900(Lcom/tooltip/Tooltip$Builder;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2000(Lcom/tooltip/Tooltip$Builder;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 123
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2100(Lcom/tooltip/Tooltip$Builder;)F

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    .line 124
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2100(Lcom/tooltip/Tooltip$Builder;)F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    :cond_0
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2200(Lcom/tooltip/Tooltip$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2200(Lcom/tooltip/Tooltip$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x11

    .line 138
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$800(Lcom/tooltip/Tooltip$Builder;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mArrowView:Landroid/widget/ImageView;

    .line 142
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2300(Lcom/tooltip/Tooltip$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget v0, p0, Lcom/tooltip/Tooltip;->mGravity:I

    const/16 v6, 0x50

    const/16 v7, 0x30

    if-eq v0, v7, :cond_3

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2500(Lcom/tooltip/Tooltip$Builder;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2400(Lcom/tooltip/Tooltip$Builder;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v8, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_1

    .line 146
    :cond_3
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2400(Lcom/tooltip/Tooltip$Builder;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$2500(Lcom/tooltip/Tooltip$Builder;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v8, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 150
    :goto_1
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 151
    iget-object v4, p0, Lcom/tooltip/Tooltip;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$800(Lcom/tooltip/Tooltip$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    .line 154
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/tooltip/Tooltip;->mGravity:I

    const v4, 0x800005

    const v5, 0x800003

    if-eq v1, v5, :cond_5

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 157
    invoke-static {v0}, Lcom/tooltip/Util;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 159
    iget v1, p0, Lcom/tooltip/Tooltip;->mGravity:I

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_6

    goto :goto_4

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_4

    .line 161
    :cond_7
    iget-object v1, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_4

    .line 165
    :cond_8
    iget-object v1, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 172
    :goto_4
    iget v0, p0, Lcom/tooltip/Tooltip;->mGravity:I

    if-eq v0, v7, :cond_a

    if-ne v0, v5, :cond_9

    goto :goto_5

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tooltip/Tooltip;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 173
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tooltip/Tooltip;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    :goto_6
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tooltip/Tooltip;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tooltip/Tooltip;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$000(Lcom/tooltip/Tooltip$Builder;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/tooltip/Tooltip$Builder;->access$100(Lcom/tooltip/Tooltip$Builder;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 184
    :cond_b
    iget-object p1, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tooltip/Tooltip;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    :cond_c
    iget-object p1, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setOnClickListener(Lcom/tooltip/OnClickListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/tooltip/Tooltip;->mOnClickListener:Lcom/tooltip/OnClickListener;

    return-void
.end method

.method public setOnDismissListener(Lcom/tooltip/OnDismissListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/tooltip/Tooltip;->mOnDismissListener:Lcom/tooltip/OnDismissListener;

    return-void
.end method

.method public setOnLongClickListener(Lcom/tooltip/OnLongClickListener;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/tooltip/Tooltip;->mOnLongClickListener:Lcom/tooltip/OnLongClickListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/tooltip/Tooltip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/tooltip/Tooltip;->mLocationLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 207
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/tooltip/Tooltip;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/tooltip/Tooltip;->mAnchorView:Landroid/view/View;

    new-instance v1, Lcom/tooltip/Tooltip$2;

    invoke-direct {v1, p0}, Lcom/tooltip/Tooltip$2;-><init>(Lcom/tooltip/Tooltip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
