.class Lcom/tooltip/Tooltip$1;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tooltip/Tooltip;-><init>(Lcom/tooltip/Tooltip$Builder;)V
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

    .line 97
    iput-object p1, p0, Lcom/tooltip/Tooltip$1;->this$0:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/tooltip/Tooltip$1;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$1000(Lcom/tooltip/Tooltip;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tooltip/Tooltip$1;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$900(Lcom/tooltip/Tooltip;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/tooltip/Tooltip$1;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$1100(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tooltip/Tooltip$1;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$1100(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tooltip/OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
