.class Lcom/tooltip/Tooltip$4;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 292
    iput-object p1, p0, Lcom/tooltip/Tooltip$4;->this$0:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 295
    iget-object p1, p0, Lcom/tooltip/Tooltip$4;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {p1}, Lcom/tooltip/Tooltip;->access$2800(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tooltip/Tooltip$4;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {p1}, Lcom/tooltip/Tooltip;->access$2800(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tooltip/Tooltip$4;->this$0:Lcom/tooltip/Tooltip;

    invoke-interface {p1, v0}, Lcom/tooltip/OnLongClickListener;->onLongClick(Lcom/tooltip/Tooltip;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
