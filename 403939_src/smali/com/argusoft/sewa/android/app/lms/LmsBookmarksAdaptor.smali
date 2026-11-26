.class public Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;
.super Landroid/widget/BaseAdapter;
.source "LmsBookmarksAdaptor.java"


# instance fields
.field private alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private final context:Landroid/content/Context;

.field private isAudioRecording:Z

.field private final lmsBookMarkBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;",
            ">;"
        }
    .end annotation
.end field

.field private final lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private recordedFileName:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;

.field private final selectedVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;",
            "Lcom/argusoft/sewa/android/app/lms/MyVideoView;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->lmsBookMarkBeans:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 58
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->selectedVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->lmsBookMarkBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->selectedVideoView:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->recordedFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->recordedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->isAudioRecording:Z

    return p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->isAudioRecording:Z

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/media/MediaRecorder;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->recorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->recorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method private getDeleteListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 139
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;I)V

    return-object v0
.end method

.method private getEditListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 162
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;I)V

    return-object v0
.end method

.method private getPlayListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 126
    new-instance p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$1;

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)V

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->lmsBookMarkBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->lmsBookMarkBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
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
    .locals 9

    .line 84
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->lmsBookMarkBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    .line 86
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_bookmark:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 88
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->bookmark_name:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 90
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bookmark_duration:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 91
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getPosition()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "%d sec"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bookmark_note:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 95
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->bookmark_play:I

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 97
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 100
    :goto_0
    array-length v8, v4

    if-ge v7, v8, :cond_0

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    .line 101
    aget-object v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_1
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->getPlayListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 112
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 115
    :goto_1
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->edit_bookmark:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 116
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->getEditListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->delete_bookmark:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 120
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->getDeleteListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
