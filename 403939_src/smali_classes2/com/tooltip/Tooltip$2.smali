.class Lcom/tooltip/Tooltip$2;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tooltip/Tooltip;->show()V
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

    .line 208
    iput-object p1, p0, Lcom/tooltip/Tooltip$2;->this$0:Lcom/tooltip/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/tooltip/Tooltip$2;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v0}, Lcom/tooltip/Tooltip;->access$2600(Lcom/tooltip/Tooltip;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/tooltip/Tooltip$2;->this$0:Lcom/tooltip/Tooltip;

    invoke-static {v1}, Lcom/tooltip/Tooltip;->access$1000(Lcom/tooltip/Tooltip;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
