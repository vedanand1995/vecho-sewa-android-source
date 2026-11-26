.class Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "ZoomImage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ZoomImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private final last:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;


# direct methods
.method private constructor <init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 545
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$1;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V

    return-void
.end method

.method private getFixDragTrans(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 557
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 558
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1500(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 559
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 561
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->DRAG:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->FLING:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    if-ne v1, v2, :cond_5

    .line 562
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    goto/16 :goto_0

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->DRAG:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    if-ne v1, v2, :cond_5

    .line 571
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 572
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    .line 573
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->getFixDragTrans(FFF)F

    move-result v1

    .line 574
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->getFixDragTrans(FFF)F

    move-result v2

    .line 575
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 576
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V

    .line 577
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    goto :goto_0

    .line 564
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 565
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->cancelFling()V

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->DRAG:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    .line 588
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 589
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2300(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 590
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2300(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 592
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 593
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$PrivateOnTouchListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;->onMove()V

    :cond_7
    return v3
.end method
