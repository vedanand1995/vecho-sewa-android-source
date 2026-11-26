.class public Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;
.super Ljava/lang/Object;
.source "SimulationsAudioPlayerListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPlayerListener"


# instance fields
.field private actionButton:Landroid/widget/ImageView;

.field private final context:Landroid/content/Context;

.field private flag:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->path:Ljava/lang/String;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z

    return-void
.end method

.method private startPlaying()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is found and ready to play"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private stopPlaying()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    const-string v1, "AudioPlayerListener"

    const-string v2, "Audio Player not stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    .line 43
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z

    const-string v0, "AudioPlayerListener"

    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->startPlaying()V

    .line 46
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    const-string v1, "Audio Player not started"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->context:Landroid/content/Context;

    const-string v0, "There is no audio to play"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->stopPlaying()V

    .line 57
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 60
    const-string v1, "Audio Player not stopped"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->context:Landroid/content/Context;

    const-string v0, "Audio can not be stopped"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->stopPlaying()V

    .line 98
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->actionButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 99
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;->flag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    const-string v0, "AudioPlayerListener"

    const-string v1, "Audio Player not started"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
