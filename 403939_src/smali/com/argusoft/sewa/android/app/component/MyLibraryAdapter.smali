.class public Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyLibraryAdapter.java"


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
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
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
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->libraryList:Ljava/util/List;

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->adapterView:Ljava/util/Map;

    .line 31
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->fileType:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->setColCountAccordingToFileType()V

    return-void
.end method

.method private getViewAccordingToFileType()Landroid/view/View;
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "VIDEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "IMAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/16 v0, -0x14

    const/4 v1, 0x0

    packed-switch v3, :pswitch_data_0

    .line 122
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->library_folder_cards:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object v1

    .line 117
    :pswitch_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->library_audio_cards:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object v1

    .line 112
    :pswitch_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->library_video_cards:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f128988 -> :sswitch_2
        -0x691a90a8 -> :sswitch_1
        0x3bba3b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setColCountAccordingToFileType()V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "VIDEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "IMAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v0, 0x3

    .line 45
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->colCount:I

    goto :goto_1

    .line 38
    :pswitch_0
    iput v3, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->colCount:I

    goto :goto_1

    .line 42
    :pswitch_1
    iput v2, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->colCount:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f128988 -> :sswitch_2
        -0x691a90a8 -> :sswitch_1
        0x3bba3b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRightBorderBackground(Landroid/view/View;I)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->fileType:Ljava/lang/String;

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

    .line 98
    :pswitch_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->colCount:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 99
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->context:Landroid/content/Context;

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

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->libraryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->libraryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
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

    .line 73
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_1

    .line 74
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->libraryList:Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 75
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->libraryList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;

    .line 77
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->getViewAccordingToFileType()Landroid/view/View;

    move-result-object p3

    .line 78
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->setRightBorderBackground(Landroid/view/View;I)V

    .line 80
    iget-object v0, p2, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 81
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_imageView:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    iget-object v1, p2, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->card_textView:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    iget-object p2, p2, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_1
    return-object p2
.end method
