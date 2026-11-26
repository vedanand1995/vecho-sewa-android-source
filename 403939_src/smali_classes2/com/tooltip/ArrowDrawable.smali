.class final Lcom/tooltip/ArrowDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ArrowDrawable.java"


# instance fields
.field private final mBackgroundColor:I

.field private final mGravity:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 50
    invoke-static {p2}, Lcom/tooltip/Util;->gravityToArrowDirection(I)I

    move-result p2

    iput p2, p0, Lcom/tooltip/ArrowDrawable;->mGravity:I

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/tooltip/ArrowDrawable;->mBackgroundColor:I

    .line 53
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private declared-synchronized updatePath(Landroid/graphics/Rect;)V
    .locals 4

    monitor-enter p0

    .line 63
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 65
    iget v1, p0, Lcom/tooltip/ArrowDrawable;->mGravity:I

    const/16 v2, 0x30

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    const v2, 0x800003

    if-eq v1, v2, :cond_1

    const v2, 0x800005

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 80
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iget-object p1, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    iget-object p1, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 74
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 97
    iget v0, p0, Lcom/tooltip/ArrowDrawable;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 98
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/tooltip/ArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tooltip/ArrowDrawable;->updatePath(Landroid/graphics/Rect;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tooltip/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    const/4 v0, -0x2

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/tooltip/ArrowDrawable;->updatePath(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/tooltip/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
