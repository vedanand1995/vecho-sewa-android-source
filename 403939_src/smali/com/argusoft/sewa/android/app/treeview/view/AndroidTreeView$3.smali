.class Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;
.super Ljava/lang/Object;
.source "AndroidTreeView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

.field final synthetic val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 281
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getLongClickListener()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getLongClickListener()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;->onLongClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->access$200(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->access$200(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;->onLongClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->access$100(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 287
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->toggleNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
