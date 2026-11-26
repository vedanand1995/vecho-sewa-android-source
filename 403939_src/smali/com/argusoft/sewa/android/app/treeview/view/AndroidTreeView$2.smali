.class Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;
.super Ljava/lang/Object;
.source "AndroidTreeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 264
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 267
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getClickListener()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getClickListener()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;->onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->access$000(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->access$000(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;->onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V

    .line 272
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->access$100(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->this$0:Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;->val$n:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->toggleNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    :cond_2
    return-void
.end method
