.class public Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "AnnouncementArrayAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
        ">;"
    }
.end annotation


# instance fields
.field private announcementBeansDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            ">;"
        }
    .end annotation
.end field

.field private myAudioPlayer:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

.field private onClickMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->list:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->announcementBeansDao:Lcom/j256/ormlite/dao/Dao;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->onClickMap:Ljava/util/Map;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->bitmapMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Lcom/j256/ormlite/dao/Dao;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->announcementBeansDao:Lcom/j256/ormlite/dao/Dao;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Landroid/media/MediaPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->player:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;)Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->myAudioPlayer:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->myAudioPlayer:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    return-object p1
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x1f4

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    int-to-float v1, v2

    mul-float v1, v1, v0

    float-to-int v0, v1

    move v2, v0

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_2
    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    :goto_0
    const/4 v1, 0x1

    .line 84
    invoke-static {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private manageAnnouncementAudioData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 218
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->audio:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->onClickMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    .line 223
    new-instance p1, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$4;-><init>(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Lcom/argusoft/sewa/android/app/model/AnnouncementBean;)V

    .line 253
    :cond_0
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private manageAnnouncementImageData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->image:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->bitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 93
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->bitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 94
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->getScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->bitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->onClickMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    if-nez p1, :cond_2

    .line 104
    new-instance p1, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$1;

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$1;-><init>(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Lcom/argusoft/sewa/android/app/model/AnnouncementBean;)V

    .line 127
    :cond_2
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private manageAnnouncementPdfData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 131
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->document:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->onClickMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$2;-><init>(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Lcom/argusoft/sewa/android/app/model/AnnouncementBean;)V

    .line 160
    :cond_0
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private manageAnnouncementVideoData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V
    .locals 4

    .line 165
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->video_play:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 166
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->video:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 168
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->bitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 172
    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->bitmapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->onClickMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    if-nez p1, :cond_1

    .line 182
    new-instance p1, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$3;

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor$3;-><init>(Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;Lcom/argusoft/sewa/android/app/model/AnnouncementBean;)V

    .line 214
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 259
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->list:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    .line 260
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->announcement_card:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 261
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    const-string v2, "pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->manageAnnouncementPdfData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V

    goto :goto_2

    .line 267
    :cond_1
    const-string v2, "3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->manageAnnouncementAudioData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V

    goto :goto_2

    .line 268
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->manageAnnouncementVideoData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V

    goto :goto_2

    .line 264
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/AnnouncementArrayAdaptor;->manageAnnouncementImageData(ILcom/argusoft/sewa/android/app/model/AnnouncementBean;Landroid/widget/LinearLayout;)V

    .line 273
    :cond_5
    :goto_2
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 274
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->published_on:I

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 276
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getPublishedOn()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p2, 0x0

    invoke-static {v2, v3, p2, v1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
