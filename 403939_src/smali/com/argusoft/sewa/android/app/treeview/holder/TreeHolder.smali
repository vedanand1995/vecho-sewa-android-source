.class public Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;
.super Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;
.source "TreeHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder<",
        "Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT:I


# instance fields
.field child:I

.field img:Landroid/widget/ImageView;

.field isCompleted:Z

.field leftMargin:I

.field toggle:Z

.field tvValue:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$BaseNodeViewHolder;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->toggle:Z

    .line 31
    iput p3, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->child:I

    .line 32
    iput p4, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->leftMargin:I

    return-void
.end method

.method private getDimens(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public createNodeView(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;)Landroid/view/View;
    .locals 3

    .line 37
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 38
    iget v0, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->child:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 39
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->parent:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->view:Landroid/view/View;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->view:Landroid/view/View;

    .line 44
    :goto_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->leftMargin:I

    const/16 v0, 0x14

    if-nez p1, :cond_1

    .line 45
    iput v0, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->leftMargin:I

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->view:Landroid/view/View;

    iget v1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->leftMargin:I

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->view:Landroid/view/View;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->img:Landroid/widget/ImageView;

    .line 50
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->view:Landroid/view/View;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->tvValue:Landroid/widget/TextView;

    .line 51
    iget-boolean p1, p2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;->isCompleted:Z

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->isCompleted:Z

    .line 52
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->img:Landroid/widget/ImageView;

    iget v0, p2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;->icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->tvValue:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean p2, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->isCompleted:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->tvValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$color;->hofTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->view:Landroid/view/View;

    return-object p1
.end method

.method public bridge synthetic createNodeView(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 17
    check-cast p2, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->createNodeView(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public toggle(Z)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->toggle:Z

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;->img:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_down:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
