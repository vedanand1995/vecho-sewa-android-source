.class public Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;
.super Ljava/lang/Object;
.source "AudioPlayerListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPlayerListener"


# instance fields
.field private actionButton:Landroid/widget/ImageView;

.field private final context:Landroid/content/Context;

.field private currentAudioPlay:I

.field private dataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    .line 36
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->dataSources:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    .line 43
    const-string p1, "AudioPlayerListener"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Data map is Found is : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDataMapValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->dataSources:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 46
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    goto :goto_0

    .line 49
    :cond_0
    const-string p2, "No Files Found in local"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_1
    const-string p2, "No Audio list found in dataMap"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setMandatory(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v0, "Audio is playing"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v0, "T"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v0, "F"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startPlaying()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->dataSources:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 91
    :goto_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->dataSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->dataSources:Ljava/util/List;

    iget v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is found and ready to play"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioPlayerListener"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 99
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    goto :goto_0

    .line 103
    :cond_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void

    .line 110
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "There is no audio to play"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    throw v1
.end method

.method private stopPlaying()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    const-string v1, "AudioPlayerListener"

    const-string v2, "Audio Player not stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 59
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    .line 61
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    const-string v0, "AudioPlayerListener"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->startPlaying()V

    .line 64
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    .line 66
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->setMandatory(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    const-string v1, "Audio Player not started"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->context:Landroid/content/Context;

    const-string v0, "There is no audio to play"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->setMandatory(Z)V

    goto :goto_0

    .line 76
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->stopPlaying()V

    .line 77
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    .line 79
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->setMandatory(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 81
    const-string v1, "Audio Player not stopped"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->context:Landroid/content/Context;

    const-string v0, "Audio can not be stopped"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 129
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->startPlaying()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    const-string v0, "AudioPlayerListener"

    const-string v1, "Audio Player not started"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->flag:Z

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->currentAudioPlay:I

    .line 138
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;->setMandatory(Z)V

    :cond_0
    :goto_0
    return-void
.end method
