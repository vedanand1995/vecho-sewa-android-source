.class public Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ImageGridLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ImageDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private imageLength:I

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final uniqueIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageDataBeans:Ljava/util/List;

    const/4 v1, 0x0

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->uniqueIdList:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 35
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageDataBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageLength:I

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->uniqueIdList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addImage(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->uniqueIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;)V

    .line 73
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageDataBeans:Ljava/util/List;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageLength:I

    if-le p1, p2, :cond_0

    .line 75
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageDataBeans:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUniqueIdList()Ljava/lang/String;
    .locals 2

    .line 81
    const-string v0, ","

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->uniqueIdList:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 23
    check-cast p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->onBindViewHolder(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;I)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->imageDataBeans:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->getFromGallery()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/ImageDataBean;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 55
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    :goto_0
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->closeImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 59
    :cond_1
    iget-object p2, p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->camera:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object p2, p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;->closeImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
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

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->item_image_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter$ViewHolder;-><init>(Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;Landroid/view/View;)V

    return-object p2
.end method
