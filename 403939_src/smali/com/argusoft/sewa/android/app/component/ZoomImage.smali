.class public Lcom/argusoft/sewa/android/app/component/ZoomImage;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ZoomImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$State;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;,
        Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;
    }
.end annotation


# static fields
.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.75f


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 60
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->touchImageViewListener:Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    .line 65
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 60
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->touchImageViewListener:Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    .line 70
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 60
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->touchImageViewListener:Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    .line 75
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$State;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->state:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    return p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->minScale:F

    return p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->maxScale:F

    return p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setState(Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    return p0
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    return p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageHeight()F

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fixTrans()V

    return-void
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->touchImageViewListener:Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/argusoft/sewa/android/app/component/ZoomImage;DFFZ)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->scaleImage(DFFZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/argusoft/sewa/android/app/component/ZoomImage;FFZ)Landroid/graphics/PointF;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)[F
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    return-object p0
.end method

.method static synthetic access$2800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fixScaleTrans()V

    return-void
.end method

.method static synthetic access$2900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fling:Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fling:Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/ZoomImage;Ljava/lang/Runnable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 884
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fitImageToView()V
    .locals 15

    .line 392
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 393
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 400
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 401
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 402
    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    .line 403
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 404
    sget-object v5, Lcom/argusoft/sewa/android/app/component/ZoomImage$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v5, v6, :cond_6

    if-eq v5, v10, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    if-eq v5, v8, :cond_3

    if-ne v5, v7, :cond_2

    goto :goto_1

    .line 420
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    .line 412
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    .line 409
    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 422
    :goto_1
    iget v5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v6, v5

    mul-float v12, v1, v2

    sub-float/2addr v6, v12

    .line 423
    iget v12, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float v13, v12

    mul-float v14, v3, v4

    sub-float/2addr v13, v14

    int-to-float v5, v5

    sub-float/2addr v5, v6

    .line 424
    iput v5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewWidth:F

    int-to-float v5, v12

    sub-float/2addr v5, v13

    .line 425
    iput v5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewHeight:F

    .line 426
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->isZoomed()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->imageRenderedAtLeastOnce:Z

    if-nez v5, :cond_7

    .line 427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    div-float/2addr v13, v1

    invoke-virtual {v0, v6, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 429
    iput v11, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    goto :goto_2

    .line 431
    :cond_7
    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewWidth:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewHeight:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9

    .line 432
    :cond_8
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->savePreviousImageValues()V

    .line 434
    :cond_9
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 435
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    iget v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewWidth:F

    div-float/2addr v3, v2

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    mul-float v3, v3, v2

    const/4 v5, 0x0

    aput v3, v1, v5

    .line 436
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewHeight:F

    div-float/2addr v3, v4

    mul-float v3, v3, v2

    aput v3, v1, v8

    .line 437
    aget v4, v1, v10

    .line 438
    aget v10, v1, v7

    .line 439
    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewWidth:F

    mul-float v5, v1, v2

    .line 440
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result v6

    .line 441
    iget v7, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevViewWidth:I

    iget v8, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    const/4 v3, 0x2

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->translateMatrixAfterRotate(IFFFIII)V

    .line 442
    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewHeight:F

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    mul-float v4, v1, v2

    .line 443
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageHeight()F

    move-result v5

    .line 444
    iget v6, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevViewHeight:I

    iget v7, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    const/4 v2, 0x5

    move-object v1, p0

    move v3, v10

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->translateMatrixAfterRotate(IFFFIII)V

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 447
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fixTrans()V

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private fixScaleTrans()V
    .locals 4

    .line 331
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fixTrans()V

    .line 332
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 333
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private fixTrans()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    .line 320
    aget v0, v0, v2

    .line 322
    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getFixTrans(FFF)F

    move-result v1

    .line 323
    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageHeight()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getFixTrans(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method private getFixTrans(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, p2

    if-gtz v1, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    const/4 p3, 0x0

    :goto_0
    cmpg-float v1, p1, p2

    if-gez v1, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_2
    return v0
.end method

.method private getImageHeight()F
    .locals 2

    .line 368
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewHeight:F

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    .line 364
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewWidth:F

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private savePreviousImageValues()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 182
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewHeight:F

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewHeight:F

    .line 183
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewWidth:F

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewWidth:F

    .line 184
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevViewHeight:I

    .line 185
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevViewWidth:I

    :cond_0
    return-void
.end method

.method private scaleImage(DFFZ)V
    .locals 4

    if-eqz p5, :cond_0

    .line 639
    iget p5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->superMinScale:F

    .line 640
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->superMaxScale:F

    goto :goto_0

    .line 642
    :cond_0
    iget p5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->minScale:F

    .line 643
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->maxScale:F

    .line 645
    :goto_0
    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    float-to-double v2, v1

    mul-double v2, v2, p1

    double-to-float v2, v2

    .line 646
    iput v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 648
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    div-float/2addr v0, v1

    float-to-double p1, v0

    goto :goto_1

    :cond_1
    cmpg-float v0, v2, p5

    if-gez v0, :cond_2

    .line 651
    iput p5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    div-float/2addr p5, v1

    float-to-double p1, p5

    .line 654
    :cond_2
    :goto_1
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    double-to-float p1, p1

    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 655
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fixScaleTrans()V

    return-void
.end method

.method private setState(Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->state:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    return-void
.end method

.method private setViewSize(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 79
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 82
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    .line 84
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 85
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 86
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 90
    :cond_0
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->minScale:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 91
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->maxScale:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float p1, p1, v1

    .line 92
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->superMinScale:F

    const/high16 p1, 0x3fa00000    # 1.25f

    mul-float v0, v0, p1

    .line 93
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->superMaxScale:F

    .line 94
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 95
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    sget-object p1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setState(Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->onDrawReady:Z

    .line 98
    new-instance p1, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;

    invoke-direct {p1, p0, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$1;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 5

    .line 734
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 735
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 736
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 737
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    .line 738
    aget v2, v2, v4

    sub-float/2addr p1, v3

    mul-float p1, p1, v0

    .line 739
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result v3

    div-float/2addr p1, v3

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    .line 740
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageHeight()F

    move-result v2

    div-float/2addr p2, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 743
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 744
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 747
    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method private translateMatrixAfterRotate(IFFFIII)V
    .locals 2

    int-to-float p6, p6

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p4, p6

    if-gez v1, :cond_0

    .line 470
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    int-to-float p3, p7

    const/4 p4, 0x0

    aget p4, p2, p4

    mul-float p3, p3, p4

    sub-float/2addr p6, p3

    mul-float p6, p6, v0

    aput p6, p2, p1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    cmpl-float p7, p2, p7

    if-lez p7, :cond_1

    .line 472
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    sub-float/2addr p4, p6

    mul-float p4, p4, v0

    neg-float p3, p4

    aput p3, p2, p1

    goto :goto_0

    .line 474
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p5, p5

    mul-float p5, p5, v0

    add-float/2addr p2, p5

    div-float/2addr p2, p3

    .line 475
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    mul-float p2, p2, p4

    mul-float p6, p6, v0

    sub-float/2addr p2, p6

    neg-float p2, p2

    aput p2, p3, p1

    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 486
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 487
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return v3

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-gez p1, :cond_1

    return v3

    .line 489
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    if-gtz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public getCurrentZoom()F
    .locals 1

    .line 254
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 241
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 250
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->minScale:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 5

    .line 300
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 305
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 307
    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v3}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    .line 308
    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 309
    iget v1, v2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-direct {p0, v0, v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 172
    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 174
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 175
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    iget v6, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    invoke-direct {v4, v5, v0, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoomed()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->savePreviousImageValues()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->onDrawReady:Z

    .line 226
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->imageRenderedAtLeastOnce:Z

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->delayedZoomVariables:Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->access$300(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)F

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->delayedZoomVariables:Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->access$400(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)F

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->delayedZoomVariables:Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->access$500(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)F

    move-result v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->delayedZoomVariables:Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;->access$600(Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;)Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->delayedZoomVariables:Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

    .line 231
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 373
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 380
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 381
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 382
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 383
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 384
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 385
    invoke-direct {p0, p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    .line 386
    invoke-direct {p0, p2, v3, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    .line 387
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setMeasuredDimension(II)V

    .line 388
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fitImageToView()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 375
    invoke-virtual {p0, p1, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 206
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 207
    check-cast p1, Landroid/os/Bundle;

    .line 208
    const-string v0, "saveScale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    .line 209
    const-string v0, "matrix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    .line 210
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 211
    const-string v0, "matchViewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewHeight:F

    .line 212
    const-string v0, "matchViewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevMatchViewWidth:F

    .line 213
    const-string v0, "viewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevViewHeight:I

    .line 214
    const-string v0, "viewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->prevViewWidth:I

    .line 215
    const-string v0, "imageRendered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->imageRenderedAtLeastOnce:Z

    .line 216
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    const-string v1, "instanceState"

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    const-string v1, "saveScale"

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 194
    const-string v1, "matchViewHeight"

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 195
    const-string v1, "matchViewWidth"

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matchViewWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 196
    const-string v1, "viewWidth"

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v1, "viewHeight"

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 199
    const-string v1, "matrix"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 200
    const-string v1, "imageRendered"

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->imageRenderedAtLeastOnce:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public resetZoom()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 263
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    .line 264
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fitImageToView()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->savePreviousImageValues()V

    .line 125
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fitImageToView()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->savePreviousImageValues()V

    .line 132
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fitImageToView()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->savePreviousImageValues()V

    .line 118
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fitImageToView()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 138
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->savePreviousImageValues()V

    .line 139
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fitImageToView()V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    .line 245
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->maxScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    .line 246
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->superMaxScale:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 1

    .line 258
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->minScale:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float p1, p1, v0

    .line 259
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->superMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->touchImageViewListener:Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 144
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    .line 147
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 148
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 152
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->onDrawReady:Z

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0, p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setZoom(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V

    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollPosition(FF)V
    .locals 1

    .line 314
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->normalizedScale:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 268
    invoke-virtual {p0, p1, v0, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 7

    .line 276
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->onDrawReady:Z

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;-><init>(FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->delayedZoomVariables:Lcom/argusoft/sewa/android/app/component/ZoomImage$ZoomVariables;

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    .line 282
    invoke-virtual {p0, p4}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->resetZoom()V

    float-to-double v2, p1

    .line 285
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float p1, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float v4, p1, p4

    iget p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float p1, p1

    div-float v5, p1, p4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->scaleImage(DFFZ)V

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {p1, p4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 287
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageWidth()F

    move-result p4

    mul-float p2, p2, p4

    iget p4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewWidth:I

    int-to-float p4, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    sub-float/2addr p2, p4

    neg-float p2, p2

    const/4 p4, 0x2

    aput p2, p1, p4

    .line 288
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getImageHeight()F

    move-result p2

    mul-float p3, p3, p2

    iget p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->viewHeight:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    sub-float/2addr p3, p2

    neg-float p2, p3

    const/4 p3, 0x5

    aput p2, p1, p3

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->m:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 290
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->fixTrans()V

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setZoom(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V
    .locals 3

    .line 295
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method
