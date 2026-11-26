.class Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;
.super Ljava/lang/Object;
.source "ZoomImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ZoomImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapZoom"
.end annotation


# static fields
.field private static final ZOOM_TIME:F = 500.0f


# instance fields
.field private final bitmapX:F

.field private final bitmapY:F

.field private final endTouch:Landroid/graphics/PointF;

.field private final interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final startTime:J

.field private final startTouch:Landroid/graphics/PointF;

.field private final startZoom:F

.field private final stretchImageToSuper:Z

.field private final targetZoom:F

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;FFFZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 670
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 671
    sget-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->ANIMATE_ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startTime:J

    .line 673
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startZoom:F

    .line 674
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->targetZoom:F

    .line 675
    iput-boolean p5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->stretchImageToSuper:Z

    const/4 p2, 0x0

    .line 676
    invoke-static {p1, p3, p4, p2}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2600(Lcom/argusoft/sewa/android/app/component/ZoomImage;FFZ)Landroid/graphics/PointF;

    move-result-object p2

    .line 677
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->bitmapX:F

    .line 678
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->bitmapY:F

    .line 679
    invoke-direct {p0, p3, p2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    .line 680
    new-instance p2, Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    return-void
.end method

.method private calculateDeltaScale(F)D
    .locals 4

    .line 728
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startZoom:F

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->targetZoom:F

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 729
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private interpolate()F
    .locals 4

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 722
    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 723
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 724
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 685
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 686
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    .line 689
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 690
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)[F

    move-result-object p1

    const/4 v1, 0x5

    aget p1, p1, v1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    .line 691
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private translateImageToCenterTouchPosition(F)V
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 715
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 716
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->bitmapX:F

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->bitmapY:F

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 717
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 696
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->interpolate()F

    move-result v0

    .line 697
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->calculateDeltaScale(F)D

    move-result-wide v2

    .line 698
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    iget v4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->bitmapX:F

    iget v5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->bitmapY:F

    iget-boolean v6, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->stretchImageToSuper:Z

    invoke-static/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2500(Lcom/argusoft/sewa/android/app/component/ZoomImage;DFFZ)V

    .line 699
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->translateImageToCenterTouchPosition(F)V

    .line 700
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V

    .line 701
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 702
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;->onMove()V

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$900(Lcom/argusoft/sewa/android/app/component/ZoomImage;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    :goto_0
    return-void
.end method
