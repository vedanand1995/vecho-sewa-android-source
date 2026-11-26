.class Lcom/tooltip/Tooltip$5;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 299
    iput-object p1, p0, Lcom/tooltip/Tooltip$5;->this$0:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 302
    iget-object p1, p0, Lcom/tooltip/Tooltip$5;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {p1}, Lcom/tooltip/Tooltip;->access$2900(Lcom/tooltip/Tooltip;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/tooltip/Tooltip$5;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {p1}, Lcom/tooltip/Tooltip;->access$3000(Lcom/tooltip/Tooltip;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/tooltip/Tooltip$5;->this$0:Lcom/tooltip/Tooltip;

    invoke-virtual {p1}, Lcom/tooltip/Tooltip;->dismiss()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
