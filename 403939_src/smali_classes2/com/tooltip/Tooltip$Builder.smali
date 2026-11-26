.class public final Lcom/tooltip/Tooltip$Builder;
.super Ljava/lang/Object;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tooltip/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private isCancelable:Z

.field private isDismissOnClick:Z

.field private mAnchorView:Landroid/view/View;

.field private mArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowHeight:F

.field private mArrowWidth:F

.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:F

.field private mGravity:I

.field private mLineSpacingExtra:F

.field private mLineSpacingMultiplier:F

.field private mMargin:F

.field private mOnClickListener:Lcom/tooltip/OnClickListener;

.field private mOnDismissListener:Lcom/tooltip/OnDismissListener;

.field private mOnLongClickListener:Lcom/tooltip/OnLongClickListener;

.field private mPadding:F

.field private mText:Ljava/lang/String;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mTextStyle:I

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, p1, v0}, Lcom/tooltip/Tooltip$Builder;-><init>(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/MenuItem;I)V
    .locals 2

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 390
    iput v0, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingMultiplier:F

    .line 395
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mTypeface:Landroid/graphics/Typeface;

    .line 409
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    instance-of v1, v0, Lcom/tooltip/TooltipActionView;

    if-eqz v1, :cond_0

    .line 412
    move-object v1, v0

    check-cast v1, Lcom/tooltip/TooltipActionView;

    .line 413
    invoke-virtual {v1, p1}, Lcom/tooltip/TooltipActionView;->setMenuItem(Landroid/view/MenuItem;)V

    .line 416
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lcom/tooltip/Tooltip$Builder;->init(Landroid/content/Context;Landroid/view/View;I)V

    return-void

    .line 418
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "anchor menuItem haven`t actionViewClass"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, p1, v0}, Lcom/tooltip/Tooltip$Builder;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 390
    iput v0, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingMultiplier:F

    .line 395
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mTypeface:Landroid/graphics/Typeface;

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/tooltip/Tooltip$Builder;->init(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/tooltip/Tooltip$Builder;)Z
    .locals 0

    .line 374
    iget-boolean p0, p0, Lcom/tooltip/Tooltip$Builder;->isCancelable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/tooltip/Tooltip$Builder;)Z
    .locals 0

    .line 374
    iget-boolean p0, p0, Lcom/tooltip/Tooltip$Builder;->isDismissOnClick:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/tooltip/Tooltip$Builder;)I
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mBackgroundColor:I

    return p0
.end method

.method static synthetic access$1300(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mCornerRadius:F

    return p0
.end method

.method static synthetic access$1400(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mPadding:F

    return p0
.end method

.method static synthetic access$1500(Lcom/tooltip/Tooltip$Builder;)I
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mTextAppearance:I

    return p0
.end method

.method static synthetic access$1600(Lcom/tooltip/Tooltip$Builder;)Ljava/lang/String;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingExtra:F

    return p0
.end method

.method static synthetic access$1800(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingMultiplier:F

    return p0
.end method

.method static synthetic access$1900(Lcom/tooltip/Tooltip$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tooltip/Tooltip$Builder;)I
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mGravity:I

    return p0
.end method

.method static synthetic access$2000(Lcom/tooltip/Tooltip$Builder;)I
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mTextStyle:I

    return p0
.end method

.method static synthetic access$2100(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mTextSize:F

    return p0
.end method

.method static synthetic access$2200(Lcom/tooltip/Tooltip$Builder;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/tooltip/Tooltip$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowWidth:F

    return p0
.end method

.method static synthetic access$2500(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowHeight:F

    return p0
.end method

.method static synthetic access$300(Lcom/tooltip/Tooltip$Builder;)F
    .locals 0

    .line 374
    iget p0, p0, Lcom/tooltip/Tooltip$Builder;->mMargin:F

    return p0
.end method

.method static synthetic access$400(Lcom/tooltip/Tooltip$Builder;)Landroid/view/View;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tooltip/Tooltip$Builder;)Lcom/tooltip/OnClickListener;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mOnClickListener:Lcom/tooltip/OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tooltip/Tooltip$Builder;)Lcom/tooltip/OnLongClickListener;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mOnLongClickListener:Lcom/tooltip/OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tooltip/Tooltip$Builder;)Lcom/tooltip/OnDismissListener;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mOnDismissListener:Lcom/tooltip/OnDismissListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tooltip/Tooltip$Builder;)Landroid/content/Context;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getTypefaceFromAttr(Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 0

    if-eqz p1, :cond_0

    .line 789
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    goto :goto_0

    .line 802
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 799
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 796
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3

    .line 431
    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    .line 432
    iput-object p2, p0, Lcom/tooltip/Tooltip$Builder;->mAnchorView:Landroid/view/View;

    .line 434
    sget-object p2, Lcom/tooltip/R$styleable;->Tooltip:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 436
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_cancelable:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tooltip/Tooltip$Builder;->isCancelable:Z

    .line 437
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_dismissOnClick:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tooltip/Tooltip$Builder;->isDismissOnClick:Z

    .line 438
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_backgroundColor:I

    const v0, -0x777778

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mBackgroundColor:I

    .line 439
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_cornerRadius:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mCornerRadius:F

    .line 440
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_arrowHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mArrowHeight:F

    .line 441
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_arrowWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mArrowWidth:F

    .line 442
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_arrowDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/tooltip/Tooltip$Builder;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 443
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mMargin:F

    .line 444
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_textAppearance:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mTextAppearance:I

    .line 445
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mPadding:F

    .line 446
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_gravity:I

    const/16 v2, 0x50

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mGravity:I

    .line 447
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tooltip/Tooltip$Builder;->mText:Ljava/lang/String;

    .line 448
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_textSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mTextSize:F

    .line 449
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/tooltip/Tooltip$Builder;->mTextColor:Landroid/content/res/ColorStateList;

    .line 450
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_textStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mTextStyle:I

    .line 451
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_lineSpacingExtra:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingExtra:F

    .line 452
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_lineSpacingMultiplier:I

    iget p3, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingMultiplier:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingMultiplier:F

    .line 454
    sget p2, Lcom/tooltip/R$styleable;->Tooltip_android_fontFamily:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 455
    sget p3, Lcom/tooltip/R$styleable;->Tooltip_android_typeface:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 456
    iget v0, p0, Lcom/tooltip/Tooltip$Builder;->mTextStyle:I

    invoke-direct {p0, p2, p3, v0}, Lcom/tooltip/Tooltip$Builder;->getTypefaceFromAttr(Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/tooltip/Tooltip$Builder;->mTypeface:Landroid/graphics/Typeface;

    .line 458
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public build()Lcom/tooltip/Tooltip;
    .locals 4

    .line 755
    iget v0, p0, Lcom/tooltip/Tooltip$Builder;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tooltip/Tooltip$Builder;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gravity must have be START, END, TOP or BOTTOM."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowHeight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tooltip/R$dimen;->default_tooltip_arrow_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowHeight:F

    .line 762
    :cond_2
    iget v0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 763
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tooltip/R$dimen;->default_tooltip_arrow_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowWidth:F

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 766
    new-instance v0, Lcom/tooltip/ArrowDrawable;

    iget v2, p0, Lcom/tooltip/Tooltip$Builder;->mBackgroundColor:I

    iget v3, p0, Lcom/tooltip/Tooltip$Builder;->mGravity:I

    invoke-direct {v0, v2, v3}, Lcom/tooltip/ArrowDrawable;-><init>(II)V

    iput-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 768
    :cond_4
    iget v0, p0, Lcom/tooltip/Tooltip$Builder;->mMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 769
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tooltip/R$dimen;->default_tooltip_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tooltip/Tooltip$Builder;->mMargin:F

    .line 771
    :cond_5
    iget v0, p0, Lcom/tooltip/Tooltip$Builder;->mPadding:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 772
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tooltip/R$dimen;->default_tooltip_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tooltip/Tooltip$Builder;->mPadding:F

    .line 774
    :cond_6
    new-instance v0, Lcom/tooltip/Tooltip;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tooltip/Tooltip;-><init>(Lcom/tooltip/Tooltip$Builder;Lcom/tooltip/Tooltip$1;)V

    return-object v0
.end method

.method public setArrow(I)Lcom/tooltip/Tooltip$Builder;
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tooltip/Tooltip$Builder;->setArrow(Landroid/graphics/drawable/Drawable;)Lcom/tooltip/Tooltip$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setArrow(Landroid/graphics/drawable/Drawable;)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setArrowHeight(F)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 525
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mArrowHeight:F

    return-object p0
.end method

.method public setArrowHeight(I)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tooltip/Tooltip$Builder;->setArrowHeight(F)Lcom/tooltip/Tooltip$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setArrowWidth(F)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 544
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mArrowWidth:F

    return-object p0
.end method

.method public setArrowWidth(I)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tooltip/Tooltip$Builder;->setArrowWidth(F)Lcom/tooltip/Tooltip$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 487
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public setCancelable(Z)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 467
    iput-boolean p1, p0, Lcom/tooltip/Tooltip$Builder;->isCancelable:Z

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 506
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mCornerRadius:F

    return-object p0
.end method

.method public setCornerRadius(I)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tooltip/Tooltip$Builder;->setCornerRadius(F)Lcom/tooltip/Tooltip$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDismissOnClick(Z)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 477
    iput-boolean p1, p0, Lcom/tooltip/Tooltip$Builder;->isDismissOnClick:Z

    return-object p0
.end method

.method public setGravity(I)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 621
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mGravity:I

    return-object p0
.end method

.method public setLineSpacing(FF)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 703
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingExtra:F

    .line 704
    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingMultiplier:F

    return-object p0
.end method

.method public setLineSpacing(IF)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingExtra:F

    .line 692
    iput p2, p0, Lcom/tooltip/Tooltip$Builder;->mLineSpacingMultiplier:F

    return-object p0
.end method

.method public setMargin(F)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 582
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mMargin:F

    return-object p0
.end method

.method public setMargin(I)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tooltip/Tooltip$Builder;->setMargin(F)Lcom/tooltip/Tooltip$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOnClickListener(Lcom/tooltip/OnClickListener;)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mOnClickListener:Lcom/tooltip/OnClickListener;

    return-object p0
.end method

.method public setOnDismissListener(Lcom/tooltip/OnDismissListener;)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mOnDismissListener:Lcom/tooltip/OnDismissListener;

    return-object p0
.end method

.method public setOnLongClickListener(Lcom/tooltip/OnLongClickListener;)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mOnLongClickListener:Lcom/tooltip/OnLongClickListener;

    return-object p0
.end method

.method public setPadding(F)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 611
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mPadding:F

    return-object p0
.end method

.method public setPadding(I)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tooltip/Tooltip$Builder;->setPadding(F)Lcom/tooltip/Tooltip$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setText(I)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tooltip/Tooltip$Builder;->setText(Ljava/lang/String;)Lcom/tooltip/Tooltip$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/String;)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public setTextAppearance(I)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 592
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mTextAppearance:I

    return-object p0
.end method

.method public setTextColor(I)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 670
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setTextSize(F)Lcom/tooltip/Tooltip$Builder;
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mTextSize:F

    return-object p0
.end method

.method public setTextSize(I)Lcom/tooltip/Tooltip$Builder;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/tooltip/Tooltip$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mTextSize:F

    return-object p0
.end method

.method public setTextStyle(I)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 680
    iput p1, p0, Lcom/tooltip/Tooltip$Builder;->mTextStyle:I

    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/tooltip/Tooltip$Builder;
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/tooltip/Tooltip$Builder;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public show()Lcom/tooltip/Tooltip;
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/tooltip/Tooltip$Builder;->build()Lcom/tooltip/Tooltip;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Lcom/tooltip/Tooltip;->show()V

    return-object v0
.end method
