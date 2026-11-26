.class Lcom/tooltip/Tooltip$3;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 283
    iput-object p1, p0, Lcom/tooltip/Tooltip$3;->this$0:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/tooltip/Tooltip$3;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {p1}, Lcom/tooltip/Tooltip;->access$2700(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/tooltip/Tooltip$3;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {p1}, Lcom/tooltip/Tooltip;->access$2700(Lcom/tooltip/Tooltip;)Lcom/tooltip/OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tooltip/Tooltip$3;->this$0:Lcom/tooltip/Tooltip;

    invoke-interface {p1, v0}, Lcom/tooltip/OnClickListener;->onClick(Lcom/tooltip/Tooltip;)V

    :cond_0
    return-void
.end method
