.class Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ZoomImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
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

    .line 492
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$1;)V
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 523
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    if-ne v1, v2, :cond_2

    .line 524
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1300(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v0

    :goto_1
    move v3, v0

    .line 525
    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;FFFZ)V

    .line 526
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$900(Lcom/argusoft/sewa/android/app/component/ZoomImage;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->cancelFling()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;II)V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$802(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    .line 513
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$900(Lcom/argusoft/sewa/android/app/component/ZoomImage;Ljava/lang/Runnable;)V

    .line 514
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 504
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$GestureListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->performClick()Z

    move-result p1

    return p1
.end method
