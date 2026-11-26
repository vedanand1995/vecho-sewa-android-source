.class public Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;
.super Landroid/widget/FrameLayout;
.source "TwoDScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTwoDScrollViewMovedFocus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsLayoutDirty:Z

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 92
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->initTwoDScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsLayoutDirty:Z

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 97
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->initTwoDScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsLayoutDirty:Z

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 102
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->initTwoDScrollView()V

    return-void
.end method

.method private canScroll()Z
    .locals 5

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 220
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    if-lt v3, v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private clamp(III)I
    .locals 1

    if-ge p2, p3, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    sub-int/2addr p3, p2

    return p3

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private doScroll(II)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 723
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZIIZII)Landroid/view/View;
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x2

    move-object/from16 v5, p0

    .line 497
    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 509
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v6, :cond_b

    .line 511
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 512
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    .line 513
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 514
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 515
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v15

    if-ge v0, v13, :cond_a

    if-ge v12, v1, :cond_a

    if-ge v2, v15, :cond_a

    if-ge v14, v3, :cond_a

    const/16 v16, 0x1

    if-ge v0, v12, :cond_0

    if-ge v13, v1, :cond_0

    if-ge v2, v14, :cond_0

    if-ge v15, v3, :cond_0

    const/16 v17, 0x1

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    :goto_1
    if-nez v7, :cond_1

    move-object v7, v11

    move/from16 v10, v17

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    .line 529
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v12, v8, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 530
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-le v13, v8, :cond_4

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-eqz p4, :cond_5

    .line 532
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v12

    if-lt v14, v12, :cond_6

    :cond_5
    if-nez p4, :cond_7

    .line 533
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v15, v12, :cond_7

    :cond_6
    const/4 v12, 0x1

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    if-eqz v10, :cond_8

    if-eqz v17, :cond_a

    if-eqz v8, :cond_a

    if-eqz v12, :cond_a

    goto :goto_4

    :cond_8
    if-eqz v17, :cond_9

    move-object v7, v11

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    if-eqz v8, :cond_a

    if-eqz v12, :cond_a

    :goto_4
    move-object v7, v11

    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_b
    return-object v7
.end method

.method private findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;
    .locals 8

    .line 465
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    .line 467
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    sub-int v4, p2, v0

    .line 468
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int v6, p4, p2

    .line 470
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sub-int v7, p4, p2

    if-eqz p5, :cond_0

    .line 473
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p2

    if-ge p2, v4, :cond_0

    .line 474
    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p2

    if-le p2, v3, :cond_0

    .line 475
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result p2

    if-ge p2, v7, :cond_0

    .line 476
    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p2

    if-le p2, v6, :cond_0

    return-object p5

    :cond_0
    move-object v1, p0

    move v2, p1

    move v5, p3

    .line 479
    invoke-direct/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private initTwoDScrollView()V
    .locals 2

    .line 170
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 172
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->setWillNotDraw(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTouchSlop:I

    .line 176
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mMinimumVelocity:I

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 1025
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1026
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scrollAndFocus(IIIIII)Z
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v0

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v13

    add-int v14, v13, v0

    const/16 v16, 0x1

    const/16 v0, 0x21

    if-ne v8, v0, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 625
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v1

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v6

    add-int v5, v6, v1

    move/from16 v1, p4

    if-ne v1, v0, :cond_1

    const/16 v18, 0x1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v18

    move v15, v5

    move/from16 v5, p5

    move v8, v6

    move/from16 v6, p6

    .line 629
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v7

    :cond_2
    if-lt v9, v13, :cond_3

    if-le v10, v14, :cond_4

    :cond_3
    if-lt v11, v8, :cond_5

    if-gt v12, v15, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    if-eqz v17, :cond_6

    sub-int v1, v9, v13

    goto :goto_2

    :cond_6
    sub-int v1, v10, v14

    :goto_2
    if-eqz v18, :cond_7

    sub-int v2, v11, v8

    goto :goto_3

    :cond_7
    sub-int v2, v12, v15

    .line 638
    :goto_3
    invoke-direct {v7, v2, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->doScroll(II)V

    .line 640
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_8

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, v7, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    :cond_8
    return v16
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 842
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 843
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 845
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 858
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 862
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_1

    .line 864
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TwoDScrollView can host only one direct parent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 193
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 209
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 201
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 199
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(IZ)Z
    .locals 5

    .line 655
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 657
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getMaxScrollAmountHorizontal()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getMaxScrollAmountVertical()I

    move-result v1

    :goto_0
    const/16 v2, 0x21

    const/16 v3, 0x82

    const/4 v4, 0x0

    if-nez p2, :cond_7

    if-eqz v0, :cond_2

    .line 662
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 663
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 664
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    .line 665
    invoke-direct {p0, v4, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->doScroll(II)V

    .line 666
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_5

    :cond_2
    if-ne p1, v2, :cond_3

    .line 670
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result p2

    if-ge p2, v1, :cond_3

    .line 671
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v1

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    .line 673
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    .line 674
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 675
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v0

    if-ge p2, v1, :cond_4

    move v1, p2

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    return v4

    :cond_5
    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    neg-int v1, v1

    .line 684
    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->doScroll(II)V

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    .line 688
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 689
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 690
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    .line 691
    invoke-direct {p0, p2, v4}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->doScroll(II)V

    .line 692
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_5

    :cond_8
    if-ne p1, v2, :cond_9

    .line 696
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result p2

    if-ge p2, v1, :cond_9

    .line 697
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v1

    goto :goto_3

    :cond_9
    if-ne p1, v3, :cond_a

    .line 699
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    .line 700
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 701
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v0

    if-ge p2, v1, :cond_a

    move v1, p2

    :cond_a
    :goto_3
    if-nez v1, :cond_b

    return v4

    :cond_b
    if-ne p1, v3, :cond_c

    goto :goto_4

    :cond_c
    neg-int v1, v1

    .line 710
    :goto_4
    invoke-direct {p0, v1, v4}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->doScroll(II)V

    :goto_5
    const/4 p1, 0x1

    return p1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 7

    .line 797
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v0

    .line 815
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v1

    .line 816
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 817
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 818
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 819
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 820
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->clamp(III)I

    move-result v2

    .line 821
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v5, v4}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->clamp(III)I

    move-result v3

    .line 820
    invoke-virtual {p0, v2, v3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollTo(II)V

    goto :goto_0

    .line 823
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollTo(II)V

    .line 825
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->onScrollChanged(IIII)V

    .line 830
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->postInvalidate()V

    :cond_3
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    .line 879
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v0

    .line 881
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 883
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 885
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    .line 890
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    .line 894
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4

    .line 898
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 900
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_0

    .line 903
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    .line 907
    :goto_0
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    .line 909
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 911
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6

    .line 916
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5

    .line 918
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_1

    .line 921
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 925
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_2
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 764
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 229
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 246
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    .line 250
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 251
    invoke-virtual {p1, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    return v3

    .line 256
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 280
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x42

    if-nez p1, :cond_4

    .line 281
    invoke-virtual {p0, v0, v2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 283
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 273
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x11

    if-nez p1, :cond_5

    .line 274
    invoke-virtual {p0, v0, v2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 266
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 267
    invoke-virtual {p0, v1, v3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 269
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 259
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x21

    if-nez p1, :cond_7

    .line 260
    invoke-virtual {p0, v0, v3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 262
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v3

    :cond_8
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(II)V
    .locals 17

    move-object/from16 v6, p0

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v7, 0x0

    .line 1039
    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1041
    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1043
    iget-object v8, v6, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v10

    sub-int v14, v3, v2

    const/4 v15, 0x0

    sub-int v16, v1, v0

    const/4 v13, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v8 .. v16}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-lez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1048
    :goto_1
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v6

    .line 1053
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_4

    if-eqz v8, :cond_3

    const/16 v1, 0x82

    goto :goto_2

    :cond_3
    const/16 v1, 0x21

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1055
    iput-boolean v7, v6, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    .line 1058
    :cond_4
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->awakenScrollBars(I)Z

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->invalidate()V

    :cond_5
    return-void
.end method

.method public fullScroll(IZ)Z
    .locals 7

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    if-ne p1, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 577
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v0

    .line 578
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 579
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_1

    .line 581
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    sub-int/2addr p2, v1

    .line 583
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 584
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 585
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 588
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result p1

    return p1

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 591
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v0

    .line 592
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 593
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_4

    .line 595
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    sub-int/2addr p2, v1

    .line 597
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 598
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->right:I

    .line 599
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 602
    :cond_4
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmountHorizontal()I
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxScrollAmountVertical()I
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 780
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v0, p3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 781
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 783
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 789
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 790
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p2

    invoke-static {p5, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 792
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 303
    iget-boolean v3, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->canScroll()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 307
    iput-boolean v4, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    return v4

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 322
    :cond_2
    iget v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionY:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 323
    iget v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 324
    iget v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTouchSlop:I

    if-gt v0, v2, :cond_3

    if-le p1, v2, :cond_6

    .line 325
    :cond_3
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 345
    :cond_4
    iput-boolean v4, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 331
    :cond_5
    iput v3, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionY:F

    .line 332
    iput p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionX:F

    .line 339
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 353
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsBeingDragged:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 987
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 988
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsLayoutDirty:Z

    .line 990
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 991
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 993
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 996
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 961
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 962
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 969
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1001
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1003
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1011
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1012
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1013
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->doScroll(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 370
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v3, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    goto/16 :goto_2

    .line 394
    :cond_3
    iget v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 395
    iget v4, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionY:F

    sub-float/2addr v4, v2

    float-to-int v4, v4

    .line 396
    iput p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionX:F

    .line 397
    iput v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionY:F

    if-gez v0, :cond_5

    .line 400
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result p1

    if-gez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    .line 404
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 405
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, p1

    if-lez v2, :cond_4

    .line 407
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_6
    :goto_0
    if-gez v4, :cond_7

    .line 413
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result p1

    if-gez p1, :cond_8

    goto :goto_1

    :cond_7
    if-lez v4, :cond_8

    .line 417
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    .line 418
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, p1

    if-lez v2, :cond_9

    .line 420
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_8
    move v1, v4

    :cond_9
    :goto_1
    if-nez v1, :cond_a

    if-eqz v0, :cond_f

    .line 426
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_2

    .line 429
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 430
    iget v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 431
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 432
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 433
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mMinimumVelocity:I

    if-le v1, v2, :cond_c

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_c

    neg-int v0, v0

    neg-int p1, p1

    .line 434
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->fling(II)V

    .line 436
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 437
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 438
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 384
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 385
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 389
    :cond_e
    iput v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionY:F

    .line 390
    iput p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastMotionX:F

    :cond_f
    :goto_2
    return v3
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 932
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    if-nez v0, :cond_1

    .line 933
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 934
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 937
    :cond_0
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 940
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 975
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 976
    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 981
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mIsLayoutDirty:Z

    .line 982
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    .line 1070
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1072
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->clamp(III)I

    move-result p1

    .line 1073
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->clamp(III)I

    move-result p2

    .line 1074
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 1075
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 5

    .line 734
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 736
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 737
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->awakenScrollBars(I)Z

    .line 738
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->invalidate()V

    goto :goto_0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 743
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->scrollBy(II)V

    .line 745
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;->smoothScrollBy(II)V

    return-void
.end method
