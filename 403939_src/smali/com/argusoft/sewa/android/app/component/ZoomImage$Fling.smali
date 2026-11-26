.class Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;
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
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/ZoomImage;II)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 756
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    sget-object v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->FLING:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    .line 758
    new-instance v0, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    .line 759
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 761
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    .line 762
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v10, v1

    .line 768
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 769
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1700(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1800(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    move v6, v1

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v6

    .line 776
    :goto_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result v1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 777
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1900(Lcom/argusoft/sewa/android/app/component/ZoomImage;)I

    move-result v1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2000(Lcom/argusoft/sewa/android/app/component/ZoomImage;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    move v8, v1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move v8, v10

    move v9, v8

    .line 784
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->fling(IIIIIIII)V

    .line 786
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->currX:I

    .line 787
    iput v10, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->currY:I

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/ZoomImage$State;->NONE:Lcom/argusoft/sewa/android/app/component/ZoomImage$State;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$1600(Lcom/argusoft/sewa/android/app/component/ZoomImage;Lcom/argusoft/sewa/android/app/component/ZoomImage$State;)V

    .line 793
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 799
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2400(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$OnTouchImageViewListener;->onMove()V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    return-void

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->getCurrX()I

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->scroller:Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage$CompatScroller;->getCurrY()I

    move-result v1

    .line 809
    iget v2, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->currX:I

    sub-int v2, v0, v2

    .line 810
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->currY:I

    sub-int v3, v1, v3

    .line 811
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->currX:I

    .line 812
    iput v1, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->currY:I

    .line 813
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 814
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2200(Lcom/argusoft/sewa/android/app/component/ZoomImage;)V

    .line 815
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$2100(Lcom/argusoft/sewa/android/app/component/ZoomImage;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 816
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ZoomImage$Fling;->this$0:Lcom/argusoft/sewa/android/app/component/ZoomImage;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/component/ZoomImage;->access$900(Lcom/argusoft/sewa/android/app/component/ZoomImage;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
