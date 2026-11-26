.class public Lcom/argusoft/sewa/android/app/component/MyAudioComponent;
.super Landroid/widget/LinearLayout;
.source "MyAudioComponent.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private courseId:Ljava/lang/Integer;

.field private currentPos:I

.field private feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

.field private isFromLms:Z

.field private isPlaying:Z

.field private layoutResId:I

.field private lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private mediaPlayerListener:Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;

.field private playPauseButton:Landroid/widget/ImageButton;

.field private playedTime:Landroid/widget/TextView;

.field private final player:Landroid/media/MediaPlayer;

.field private seekbar:Landroid/widget/SeekBar;

.field private startDate:Ljava/util/Date;

.field private timer:Ljava/util/Timer;

.field private final uIHandler:Landroid/os/Handler;

.field private viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/media/MediaPlayer;Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->timer:Ljava/util/Timer;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->uIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    .line 45
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    .line 48
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isFromLms:Z

    .line 55
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->audio_player_layout:I

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->context:Landroid/content/Context;

    .line 84
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->layoutResId:I

    .line 85
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    .line 86
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mediaPlayerListener:Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;

    const/4 p2, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->timer:Ljava/util/Timer;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->uIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    .line 45
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    .line 48
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isFromLms:Z

    .line 55
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->audio_player_layout:I

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->layoutResId:I

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->context:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;ZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/lang/Integer;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->timer:Ljava/util/Timer;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->uIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    .line 45
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    .line 48
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isFromLms:Z

    .line 55
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->audio_player_layout:I

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->layoutResId:I

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->context:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    .line 69
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isFromLms:Z

    .line 70
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 71
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 72
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->courseId:Ljava/lang/Integer;

    .line 73
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 74
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->startDate:Ljava/util/Date;

    .line 75
    invoke-virtual {p6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, p3, p4, v0, p7}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {p6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    .line 78
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/media/MediaPlayer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    return p0
.end method

.method static synthetic access$108(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)I
    .locals 2

    .line 30
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    return v0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/widget/SeekBar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->seekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->getTimeInHhMmSSFromMillis(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->playedTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->uIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private askForFeedback()V
    .locals 4

    .line 244
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getUserFeedbackRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    if-eqz v0, :cond_1

    .line 246
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getCompleted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    .line 250
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->show()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private getTimeInHhMmSSFromMillis(I)Ljava/lang/String;
    .locals 11

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/16 v1, 0xe10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v0, v1, :cond_0

    .line 193
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, p1

    .line 194
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v1, v6, v2

    aput-object v5, v6, v4

    .line 193
    const-string p1, "%02d:%02d:%02d"

    invoke-static {v0, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, p1

    .line 199
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v1, v4, v2

    .line 198
    const-string p1, "%02d:%02d"

    invoke-static {v0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->audio_player_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    .line 93
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->audio_title_view:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    .line 105
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 107
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->audio_play_button:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->playPauseButton:Landroid/widget/ImageButton;

    .line 108
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->audio_seekbar:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->seekbar:Landroid/widget/SeekBar;

    .line 111
    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 112
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 114
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->audio_total_time:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->getTimeInHhMmSSFromMillis(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/argusoft/sewa/android/app/R$id;->audio_played_time:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->playedTime:Landroid/widget/TextView;

    .line 121
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->seekbar:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    .line 129
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method private pause()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 153
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    .line 154
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->playPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->my_video_view_player_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    if-eqz p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->pause()V

    goto :goto_0

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    .line 208
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    .line 209
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->playPauseButton:Landroid/widget/ImageButton;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->my_video_view_player_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mediaPlayerListener:Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$MediaPlayerListener;->onCompletion()V

    .line 213
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isFromLms:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->startDate:Ljava/util/Date;

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 217
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 218
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->courseId:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 219
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->askForFeedback()V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 226
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    mul-int/lit16 p3, p2, 0x3e8

    .line 227
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 229
    :cond_0
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->currentPos:I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->isPlaying:Z

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->playPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->my_video_view_stop_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 167
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->timer:Ljava/util/Timer;

    .line 168
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method
