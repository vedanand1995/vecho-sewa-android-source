.class public Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImageGridLayoutAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field closeImageView:Landroid/widget/ImageView;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    .line 88
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->imageView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 90
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->closeImageView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->closeImageView:Landroid/widget/ImageView;

    .line 91
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->closeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->imageView:I

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$100(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$200(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->closeImageView:I

    if-ne v0, v1, :cond_3

    .line 103
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->getFromGallery()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/FileUtils;->getInstance()Lcom/argusoft/sewa/android/app/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/util/FileUtils;->removeFile(Ljava/lang/String;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$300(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$100(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->getUniqueIdList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->access$200(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 115
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method
