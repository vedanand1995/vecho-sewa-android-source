.class public Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
.super Ljava/lang/Object;
.source "TreeNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;,
        Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;,
        Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;
    }
.end annotation


# static fields
.field public static final NODES_ID_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

.field private mExpanded:Z

.field private mId:I

.field private mLastId:I

.field private mLongClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

.field private mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

.field private mSelectable:Z

.field private mSelected:Z

.field private mValue:Ljava/lang/Object;

.field private mViewHolder:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mSelectable:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private generateId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mLastId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mLastId:I

    return v0
.end method

.method public static root()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 2

    .line 36
    new-instance v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->setSelectable(Z)V

    return-object v0
.end method


# virtual methods
.method public addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 1

    .line 51
    iput-object p0, p1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 52
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->generateId()I

    move-result v0

    iput v0, p1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addChildren(Ljava/util/Collection;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 66
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addChildren([Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 3

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 59
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->addChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public deleteChild(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)I
    .locals 3

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget v1, p1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    iget v2, v2, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    if-ne v1, v2, :cond_0

    .line 74
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClickListener()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    .line 147
    :goto_0
    iget-object v1, v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLongClickListener()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mLongClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    return-object v0
.end method

.method public getParent()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    .line 133
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    .line 136
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    if-eqz v2, :cond_0

    .line 137
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 2

    move-object v0, p0

    .line 209
    :goto_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewHolder()Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mViewHolder:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mExpanded:Z

    return v0
.end method

.method public isFirstChild()Z
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    .line 198
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    iget v0, v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLastChild()Z
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 159
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    iget v0, v0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mId:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLeaf()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mParent:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mSelectable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;

    return-object p0
.end method

.method public setExpanded(Z)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mExpanded:Z

    return-object p0
.end method

.method public setLongClickListener(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mLongClickListener:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;

    return-object p0
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mSelectable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mSelected:Z

    return-void
.end method

.method public setViewHolder(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;)Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->mViewHolder:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;

    if-eqz p1, :cond_0

    .line 168
    iput-object p0, p1, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
