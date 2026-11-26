.class public Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;
.super Landroid/widget/LinearLayout;
.source "TreeNodeWrapperView.java"


# instance fields
.field private final containerStyle:I

.field private nodeContainer:Landroid/view/ViewGroup;

.field private nodeItemsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput p2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->containerStyle:I

    .line 24
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->setOrientation(I)V

    .line 30
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    .line 31
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->node_header:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 34
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->containerStyle:I

    invoke-direct {v1, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    iget v6, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->containerStyle:I

    invoke-direct {v2, v1, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->node_items:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 38
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getNodeContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public insertNodeView(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
