.class Lcom/tooltip/Tooltip$7;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tooltip/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tooltip/Tooltip;


# direct methods
.method constructor <init>(Lcom/tooltip/Tooltip;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 325
    iget-object v0, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3100(Lcom/tooltip/Tooltip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tooltip/Util;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 327
    iget-object v0, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$1000(Lcom/tooltip/Tooltip;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/tooltip/Util;->calculateRectOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$3100(Lcom/tooltip/Tooltip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/tooltip/Util;->calculateRectOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v2}, Lcom/tooltip/Tooltip;->access$3400(Lcom/tooltip/Tooltip;)I

    move-result v2

    const/16 v3, 0x50

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/16 v6, 0x30

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v2}, Lcom/tooltip/Tooltip;->access$3400(Lcom/tooltip/Tooltip;)I

    move-result v2

    if-ne v2, v6, :cond_0

    goto/16 :goto_2

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v2}, Lcom/tooltip/Tooltip;->access$3100(Lcom/tooltip/Tooltip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lcom/tooltip/Util;->dpToPx(F)F

    move-result v3

    add-float/2addr v2, v3

    .line 345
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v7

    iget-object v6, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v6}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 346
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr v6, v0

    sub-float/2addr v3, v6

    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    .line 349
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float v2, v0, v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 354
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    .line 355
    iget-object v1, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$3400(Lcom/tooltip/Tooltip;)I

    move-result v1

    const v3, 0x800003

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    int-to-float v1, v4

    add-float/2addr v0, v1

    goto/16 :goto_5

    .line 331
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v2}, Lcom/tooltip/Tooltip;->access$3100(Lcom/tooltip/Tooltip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lcom/tooltip/Util;->dpToPx(F)F

    move-result v3

    add-float/2addr v2, v3

    .line 332
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v7

    iget-object v8, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v8}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v3, v8

    .line 333
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr v7, v0

    sub-float/2addr v3, v7

    cmpl-float v0, v3, v2

    if-lez v0, :cond_6

    .line 335
    iget-object v0, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    .line 336
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    .line 341
    :goto_3
    iget-object v1, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    .line 342
    iget-object v2, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v2}, Lcom/tooltip/Tooltip;->access$3400(Lcom/tooltip/Tooltip;)I

    move-result v2

    if-ne v2, v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    :goto_4
    int-to-float v2, v4

    add-float/2addr v2, v1

    .line 357
    :goto_5
    iget-object v1, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 358
    iget-object v0, p0, Lcom/tooltip/Tooltip$7;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3500(Lcom/tooltip/Tooltip;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
