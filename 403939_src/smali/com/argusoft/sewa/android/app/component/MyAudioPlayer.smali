.class public Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;
.super Landroidx/appcompat/app/AlertDialog;
.source "MyAudioPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private button:Landroid/widget/Button;

.field private final context:Landroid/content/Context;

.field private courseId:Ljava/lang/Integer;

.field private currentPos:I

.field private feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

.field private isFromLms:Z

.field private isPlay:Z

.field private lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private player:Landroid/media/MediaPlayer;

.field private seekbar:Landroid/widget/SeekBar;

.field private startDate:Ljava/util/Date;

.field private timeView:Landroid/widget/TextView;

.field private final uIHandler:Landroid/os/Handler;

.field private viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->uIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

    .line 43
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    .line 46
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isFromLms:Z

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->context:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer;ZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/lang/Integer;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->uIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

    .line 43
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->context:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 66
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isFromLms:Z

    .line 67
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 68
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 69
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->courseId:Ljava/lang/Integer;

    .line 70
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 71
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->startDate:Ljava/util/Date;

    .line 72
    invoke-virtual {p6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, p3, p4, v0, p7}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {p6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    .line 75
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isFromLms:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->timeView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->uIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

    return p0
.end method

.method static synthetic access$208(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

    return v0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Ljava/lang/Integer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->courseId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Ljava/util/Date;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->askForFeedback()V

    return-void
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/widget/SeekBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->getTimeViewString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private askForFeedback()V
    .locals 4

    .line 269
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getUserFeedbackRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getCompleted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->feedbackAlert:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    .line 275
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->show()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private getTimeInHhMmSSFromMillis(I)Ljava/lang/String;
    .locals 11

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/16 v1, 0xe10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v0, v1, :cond_0

    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, p1

    .line 215
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 216
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

    .line 217
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

    .line 214
    const-string p1, "%02d:%02d:%02d"

    invoke-static {v0, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, p1

    .line 220
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 221
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

    .line 219
    const-string p1, "%02d:%02d"

    invoke-static {v0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimeViewString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->getTimeInHhMmSSFromMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->getTimeInHhMmSSFromMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 79
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_MaterialComponents_MaterialAlertDialog:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz p2, :cond_1

    .line 88
    :try_start_0
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    .line 93
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p1, v4, v2, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v7, 0x1e

    .line 96
    invoke-virtual {v5, v7, v7, v7, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 97
    new-instance v8, Landroid/widget/SeekBar;

    invoke-direct {v8, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    .line 98
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 100
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->getTimeViewString()Ljava/lang/String;

    move-result-object p2

    sget v6, Lcom/argusoft/sewa/android/app/R$style;->CustomLabelView:I

    .line 102
    invoke-static {p1, p2, v4, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->timeView:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p1, v7, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->timeView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 111
    :cond_1
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)V

    .line 127
    const-string p2, "Pause"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 128
    const-string v5, "Cancel"

    invoke-virtual {v0, v5, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 130
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 131
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->button:Landroid/widget/Button;

    .line 132
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->seekbar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->viewedMediaBean:Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->play()V

    .line 139
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->button:Landroid/widget/Button;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->button:Landroid/widget/Button;

    const-string p2, "Play"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    :goto_1
    return-void
.end method

.method private pause()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 263
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    .line 264
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private play()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;-><init>(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->hide()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 149
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->pause()V

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->button:Landroid/widget/Button;

    const-string v0, "Play"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->play()V

    .line 155
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->button:Landroid/widget/Button;

    const-string v0, "Pause"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isPlay:Z

    .line 229
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->cancel()V

    .line 230
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

    .line 231
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->isFromLms:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 233
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->startDate:Ljava/util/Date;

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->courseId:Ljava/lang/Integer;

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 235
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->courseId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 236
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->courseId:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 237
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->askForFeedback()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 244
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    mul-int/lit16 p3, p2, 0x3e8

    .line 245
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 247
    :cond_0
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->currentPos:I

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

.method public show()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
