.class public Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;
.super Ljava/lang/Object;
.source "AndroidTreeView.java"


# static fields
.field private static final NODES_PATH_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private applyForRoot:Z

.field private containerStyle:I

.field private defaultViewHolderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private enableAutoToggle:Z

.field private mContext:Landroid/content/Context;

.field protected mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

.field private mSelectionModeEnabled:Z

.field private mUseDefaultAnimation:Z

.field private nodeClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

.field private nodeLongClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

.field private use2dScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->containerStyle:I

    .line 33
    const-class v1, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    .line 37
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mUseDefaultAnimation:Z

    .line 38
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->use2dScroll:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->enableAutoToggle:Z

    .line 42
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->containerStyle:I

    .line 33
    const-class v1, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    .line 37
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mUseDefaultAnimation:Z

    .line 38
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->use2dScroll:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->enableAutoToggle:Z

    .line 50
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->nodeClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->enableAutoToggle:Z

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->nodeLongClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    return-object p0
.end method

.method private addNode(Landroid/view/ViewGroup;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 2

    .line 257
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    .line 264
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$2;-><init>(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance p1, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$3;-><init>(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static collapse(Landroid/view/View;)V
    .locals 4

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 445
    new-instance v1, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$5;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$5;-><init>(Landroid/view/View;I)V

    int-to-float v0, v0

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 464
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private collapseNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setExpanded(Z)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 217
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    .line 219
    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mUseDefaultAnimation:Z

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->collapse(Landroid/view/View;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    :goto_0
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    if-eqz p2, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 227
    invoke-direct {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->collapseNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static expand(Landroid/view/View;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 417
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 421
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    new-instance v1, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$4;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$4;-><init>(Landroid/view/View;I)V

    int-to-float v0, v0

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private expandLevel(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;I)V
    .locals 1

    .line 153
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getLevel()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 157
    invoke-direct {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandLevel(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setExpanded(Z)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 234
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    .line 240
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 241
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    .line 243
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    .line 244
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    goto :goto_0

    .line 248
    :cond_2
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mUseDefaultAnimation:Z

    if-eqz p1, :cond_3

    .line 249
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expand(Landroid/view/View;)V

    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private getSaveState(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 197
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 198
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getSaveState(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getSelected(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 347
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getSelected(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;
    .locals 5

    .line 397
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getViewHolder()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    .line 402
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not instantiate class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getContainerStyle()I

    move-result p1

    if-gtz p1, :cond_1

    .line 408
    iget p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->containerStyle:I

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->setContainerStyle(I)V

    .line 410
    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getTreeView()Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;

    move-result-object p1

    if-nez p1, :cond_2

    .line 411
    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->setTreeView(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;)V

    :cond_2
    return-object v0
.end method

.method private makeAllSelection(ZZ)V
    .locals 2

    .line 364
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 366
    invoke-direct {p0, v1, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->selectNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private restoreNodeState(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 189
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    .line 191
    invoke-direct {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->restoreNodeState(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private selectNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;ZZ)V
    .locals 1

    .line 379
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setSelected(Z)V

    const/4 v0, 0x1

    .line 380
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->toogleSelectionForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    if-eqz p3, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isExpanded()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 384
    invoke-direct {p0, v0, p2, p3}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->selectNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private toggleSelectionMode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V
    .locals 1

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->toogleSelectionForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    .line 328
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 330
    invoke-direct {p0, v0, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->toggleSelectionMode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toogleSelectionForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V
    .locals 1

    .line 390
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 1

    .line 471
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 472
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V

    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    const/4 v2, 0x1

    .line 101
    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->collapseNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public collapseNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->collapseNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    return-void
.end method

.method public deselectAll()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->makeAllSelection(ZZ)V

    return-void
.end method

.method public expandAll()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    return-void
.end method

.method public expandLevel(I)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 148
    invoke-direct {p0, v1, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandLevel(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    return-void
.end method

.method public getSaveState()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getSaveState(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/StringBuilder;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation

    .line 336
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getSelected(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSelectedValues(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getSelected()Ljava/util/List;

    move-result-object v1

    .line 313
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 314
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    .line 142
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 4

    if-lez p1, :cond_1

    .line 109
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->use2dScroll:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;

    invoke-direct {p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->use2dScroll:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    .line 116
    iget v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->containerStyle:I

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->applyForRoot:Z

    if-eqz v1, :cond_3

    .line 117
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->containerStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 119
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget v3, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->containerStyle:I

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->tree_items:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x1

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    new-instance v2, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$1;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView$1;-><init>(Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    return-object p1
.end method

.method public is2dScrollEnabled()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->use2dScroll:Z

    return v0
.end method

.method public isAutoToggleEnabled()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->enableAutoToggle:Z

    return v0
.end method

.method public isSelectionModeEnabled()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mSelectionModeEnabled:Z

    return v0
.end method

.method public removeNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 2

    .line 479
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getParent()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getParent()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    move-result-object v0

    .line 481
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->deleteChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)I

    move-result p1

    .line 482
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 483
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->getViewHolderForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 1

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->collapseAll()V

    .line 181
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 183
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->restoreNodeState(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 356
    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->makeAllSelection(ZZ)V

    return-void
.end method

.method public selectNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setSelected(Z)V

    const/4 p2, 0x1

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->toogleSelectionForNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    :cond_0
    return-void
.end method

.method public setDefaultAnimation(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mUseDefaultAnimation:Z

    return-void
.end method

.method public setDefaultContainerStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->setDefaultContainerStyle(IZ)V

    return-void
.end method

.method public setDefaultContainerStyle(IZ)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->containerStyle:I

    .line 64
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->applyForRoot:Z

    return-void
.end method

.method public setDefaultNodeClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->nodeClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    return-void
.end method

.method public setDefaultNodeLongClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->nodeLongClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    return-void
.end method

.method public setDefaultViewHolder(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    return-void
.end method

.method public setRoot(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    return-void
.end method

.method public setSelectionModeEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->deselectAll()V

    .line 302
    :cond_0
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mSelectionModeEnabled:Z

    .line 304
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->mRoot:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 305
    invoke-direct {p0, v1, p1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->toggleSelectionMode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUse2dScroll(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->use2dScroll:Z

    return-void
.end method

.method public setUseAutoToggle(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->enableAutoToggle:Z

    return-void
.end method

.method public toggleNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
    .locals 2

    .line 207
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isExpanded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->collapseNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/treeview/view/AndroidTreeView;->expandNode(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Z)V

    :goto_0
    return-void
.end method
