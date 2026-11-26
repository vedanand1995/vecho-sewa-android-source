.class public Lcom/argusoft/sewa/android/app/support/SupportAudio;
.super Ljava/lang/Object;
.source "SupportAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;

.field private player:Landroid/media/MediaPlayer;

.field private playingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->listener:Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;

    return-void
.end method


# virtual methods
.method public durationMs()J
    .locals 3

    const-wide/16 v0, 0x0

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    :catch_0
    :goto_0
    return-wide v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->playingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$toggle$0$com-argusoft-sewa-android-app-support-SupportAudio(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    return-void
.end method

.method synthetic lambda$toggle$1$com-argusoft-sewa-android-app-support-SupportAudio(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Playback error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SupportAudio"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    const/4 p1, 0x1

    return p1
.end method

.method public positionMs()J
    .locals 3

    const-wide/16 v0, 0x0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    :catch_0
    :goto_0
    return-wide v0
.end method

.method public stop()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 85
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :catch_1
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    .line 96
    :cond_1
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->playingKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->listener:Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;

    invoke-interface {v0, v2}, Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;->onChanged(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public toggle(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 51
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    return v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    .line 57
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    .line 58
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 59
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportAudio$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/support/SupportAudio$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/support/SupportAudio;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 64
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportAudio$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/support/SupportAudio$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/support/SupportAudio;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 69
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepare()V

    .line 70
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->playingKey:Ljava/lang/String;

    .line 72
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio;->listener:Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;

    invoke-interface {p2, p1}, Lcom/argusoft/sewa/android/app/support/SupportAudio$Listener;->onChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 75
    const-string p2, "SupportAudio"

    const-string v0, "Could not play"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->stop()V

    const/4 p1, 0x0

    return p1
.end method
