.class public Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "LMSVideoAdapter.java"


# instance fields
.field private adapterView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private colCount:I

.field private context:Landroid/content/Context;

.field private fileType:Ljava/lang/String;

.field private libraryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->libraryList:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->adapterView:Ljava/util/Map;

    .line 30
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->fileType:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->setColCountAccordingToFileType()V

    return-void
.end method

.method private getViewAccordingToFileType()Landroid/view/View;
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "IMAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string v1, "VIDEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->library_folder_cards:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->library_video_cards:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method private setColCountAccordingToFileType()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "IMAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIDEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 41
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->colCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->colCount:I

    :goto_0
    return-void
.end method

.method private setRightBorderBackground(Landroid/view/View;I)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "FOLDERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "PDFS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "UNSUPPORTED FILES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 94
    :pswitch_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->colCount:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 95
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->line_background_left:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bec1774 -> :sswitch_2
        0x2565c1 -> :sswitch_1
        0x211fda5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->libraryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->libraryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 69
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_1

    .line 70
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->libraryList:Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 71
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->libraryList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;

    .line 73
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->getViewAccordingToFileType()Landroid/view/View;

    move-result-object p3

    .line 74
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->setRightBorderBackground(Landroid/view/View;I)V

    .line 76
    iget-object v0, p2, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 77
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_imageView:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    iget-object v1, p2, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_textView:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    iget-object p2, p2, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LMSVideoAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_1
    return-object p2
.end method
