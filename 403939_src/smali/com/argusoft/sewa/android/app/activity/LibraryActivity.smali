.class public Lcom/argusoft/sewa/android/app/activity/LibraryActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private currentLevel:I

.field private distinctCategory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private foldersInCurrentLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/widget/LinearLayout;

.field private libBeansInCurrentLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;",
            ">;"
        }
    .end annotation
.end field

.field libraryDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

.field private nothingToShow:Z

.field private pdfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private unsupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->currentLevel:I

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->distinctCategory:Ljava/util/Set;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->pdfs:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->unsupported:Ljava/util/List;

    .line 72
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->nothingToShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LibraryActivity;Ljava/lang/String;I)I
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->getPositionAccordingToType(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private addFolderView(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 279
    const-string v0, "FOLDERS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->getFileTypeHeader(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyLibraryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 283
    new-instance p1, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;->setExpanded(Z)V

    .line 285
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;->setNumColumns(I)V

    const/4 p3, 0x0

    .line 286
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;->setVerticalScrollBarEnabled(Z)V

    const/16 p3, 0x10

    .line 287
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;->setGravity(I)V

    .line 288
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    new-instance p3, Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;

    invoke-direct {p3, p0, p2}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LibraryActivity;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/MyExpandedGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getFileTypeHeader(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->file_type_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 306
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->fileTypeHeaderText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 307
    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getPositionAccordingToType(Ljava/lang/String;I)I
    .locals 2

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "FOLDERS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "PDFS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "UNSUPPORTED FILES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "VIDEOS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "IMAGES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    .line 266
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    add-int/2addr p1, v0

    :goto_3
    add-int/2addr p1, p2

    return p1

    :pswitch_1
    return p2

    .line 270
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 272
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->pdfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 264
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_3

    .line 268
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x7f128988 -> :sswitch_5
        -0x691a90a8 -> :sswitch_4
        -0x4bec1774 -> :sswitch_3
        0x2565c1 -> :sswitch_2
        0x211fda5 -> :sswitch_1
        0x3bba3b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openFileAccordingToType(I)V
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getActualId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 366
    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "fileName"

    const-string v5, "path"

    if-nez v3, :cond_6

    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 371
    :cond_0
    const-string v3, "pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 377
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 378
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 380
    const-string v3, "3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 387
    :cond_2
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;)V

    .line 388
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->show()V

    goto :goto_2

    .line 381
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getActualId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dataMap"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string p1, "isFromAnnouncement"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 384
    const-string p1, "fileLocation"

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 390
    :cond_4
    sget-object p1, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->SUPPORTED_EXTENSIONS:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 391
    const-string p1, "File is not supported."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 393
    :cond_5
    const-string p1, "File is corrupted."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 367
    :cond_6
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 397
    :cond_7
    const-string p1, "File does not exist"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private sortLibraryDataBeans()V
    .locals 10

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 125
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 126
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 127
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 128
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;

    .line 129
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileType()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_1
    const-string v8, "pdf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_2
    const-string v8, "mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_3
    const-string v8, "mp3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_4
    const-string v8, "jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_5
    const-string v8, "3gp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 146
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_6
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 151
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0xcc5c -> :sswitch_5
        0x19be1 -> :sswitch_4
        0x1a6f0 -> :sswitch_3
        0x1a6f1 -> :sswitch_2
        0x1b0f2 -> :sswitch_1
        0x1b229 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 8

    .line 334
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->currentLevel:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 337
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->currentLevel:I

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 340
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    .line 343
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    goto :goto_1

    .line 349
    :cond_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 352
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    if-eq v0, v3, :cond_3

    .line 353
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->getFileTypeHeader(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->retrieveLibraryBeans()V

    :goto_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 313
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->nothingToShow:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p3, 0x1

    .line 317
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 318
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->openFileAccordingToType(I)V

    goto :goto_1

    .line 320
    :cond_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->currentLevel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->currentLevel:I

    .line 321
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    .line 326
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 327
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->getFileTypeHeader(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->retrieveLibraryBeans()V

    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 403
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 77
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 78
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_library:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->setContentView(I)V

    .line 79
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 80
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 81
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lib_icons:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    .line 82
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->finish()V

    .line 89
    :cond_0
    const-string v0, "Library"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->setTitle(Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 93
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->retrieveLibraryBeans()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public retrieveLibraryBeans()V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->showProcessDialog()V

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->distinctCategory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->nothingToShow:Z

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libraryDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;->retrieveLibraryBeansByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;

    .line 111
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->category:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->distinctCategory:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->sortLibraryDataBeans()V

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->setLibraryBeansStatic()V

    return-void
.end method

.method public setLibraryBeansStatic()V
    .locals 15

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->pdfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->unsupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->distinctCategory:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->distinctCategory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->currentLevel:I

    aget-object v4, v4, v5

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->currentLevel:I

    aget-object v1, v1, v3

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->foldersInCurrentLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 179
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 186
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->pdf:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 187
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->ic_unsupported_file:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->libBeansInCurrentLevel:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;

    .line 190
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileType()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 192
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getActualId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 194
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 196
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 198
    invoke-virtual {v12, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 204
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v11, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v7, "png"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    const/4 v11, 0x5

    goto :goto_3

    :sswitch_1
    const-string v7, "pdf"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    const/4 v11, 0x4

    goto :goto_3

    :sswitch_2
    const-string v7, "mp4"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    const/4 v11, 0x3

    goto :goto_3

    :sswitch_3
    const-string v7, "mp3"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    const/4 v11, 0x2

    goto :goto_3

    :sswitch_4
    const-string v7, "jpg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_3

    :cond_a
    const/4 v11, 0x1

    goto :goto_3

    :sswitch_5
    const-string v7, "3gp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_3

    :cond_b
    const/4 v11, 0x0

    :goto_3
    packed-switch v11, :pswitch_data_0

    if-eqz v5, :cond_4

    .line 225
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    sget v8, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 226
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->unsupported:Ljava/util/List;

    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_0
    if-eqz v4, :cond_4

    .line 220
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->pdfs:Ljava/util/List;

    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    if-eqz v0, :cond_4

    .line 215
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 211
    :pswitch_2
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/16 v11, 0x140

    invoke-static {v10, v11, v11}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 207
    :pswitch_3
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;

    invoke-static {v10, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Lcom/argusoft/sewa/android/app/databean/LibraryScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 233
    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->pdfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->unsupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->context:Landroid/content/Context;

    const-string v5, "There is Nothing to display"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->nothingToShow:Z

    .line 238
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->folders:Ljava/util/List;

    const-string v4, "FOLDERS"

    invoke-direct {p0, v0, v4, v3}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->addFolderView(Ljava/util/List;Ljava/lang/String;I)V

    .line 241
    :cond_e
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->videos:Ljava/util/List;

    const-string v4, "VIDEOS"

    invoke-direct {p0, v0, v4, v1}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->addFolderView(Ljava/util/List;Ljava/lang/String;I)V

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->audios:Ljava/util/List;

    const-string v4, "AUDIO"

    invoke-direct {p0, v0, v4, v2}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->addFolderView(Ljava/util/List;Ljava/lang/String;I)V

    .line 247
    :cond_10
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->images:Ljava/util/List;

    const-string v2, "IMAGES"

    invoke-direct {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->addFolderView(Ljava/util/List;Ljava/lang/String;I)V

    .line 250
    :cond_11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->pdfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 251
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->pdfs:Ljava/util/List;

    const-string v1, "PDFS"

    invoke-direct {p0, v0, v1, v3}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->addFolderView(Ljava/util/List;Ljava/lang/String;I)V

    .line 253
    :cond_12
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->unsupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->unsupported:Ljava/util/List;

    const-string v1, "UNSUPPORTED FILES"

    invoke-direct {p0, v0, v1, v3}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->addFolderView(Ljava/util/List;Ljava/lang/String;I)V

    .line 256
    :cond_13
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LibraryActivity;->hideProcessDialog()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xcc5c -> :sswitch_5
        0x19be1 -> :sswitch_4
        0x1a6f0 -> :sswitch_3
        0x1a6f1 -> :sswitch_2
        0x1b0f2 -> :sswitch_1
        0x1b229 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
