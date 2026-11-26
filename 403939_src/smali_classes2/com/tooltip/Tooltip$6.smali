.class Lcom/tooltip/Tooltip$6;
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

    .line 310
    iput-object p1, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3100(Lcom/tooltip/Tooltip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tooltip/Util;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 315
    iget-object v0, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3100(Lcom/tooltip/Tooltip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$3200(Lcom/tooltip/Tooltip;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 316
    iget-object v0, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$3300(Lcom/tooltip/Tooltip;)Landroid/graphics/PointF;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$2600(Lcom/tooltip/Tooltip;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 318
    iget-object v1, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$2600(Lcom/tooltip/Tooltip;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iget-object v3, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v3}, Lcom/tooltip/Tooltip;->access$2600(Lcom/tooltip/Tooltip;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tooltip/Tooltip$6;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v4}, Lcom/tooltip/Tooltip;->access$2600(Lcom/tooltip/Tooltip;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method
