.class Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZoomImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ZoomImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
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

    .line 599
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$1;)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 608
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2500(Lcom/argusoft/sewa/android/app/component/ZoomImage;DFFZ)V

    .line 609
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 610
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;->onMove()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 602
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    sget-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->ZOOM:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9

    .line 617
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 618
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    sget-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    .line 620
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result p1

    .line 621
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1300(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 622
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1300(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result p1

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 625
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v5, p1

    if-eqz v2, :cond_2

    .line 629
    new-instance p1, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v1

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/component/ZoomImage$DoubleTapZoom;-><init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;FFFZ)V

    .line 630
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$ScaleListener;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$900(Lcom/argusoft/sewa/android/app/component/ZoomImage;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
