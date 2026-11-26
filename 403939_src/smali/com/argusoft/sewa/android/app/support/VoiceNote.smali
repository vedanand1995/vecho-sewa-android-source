.class public Lcom/argusoft/sewa/android/app/support/VoiceNote;
.super Ljava/lang/Object;
.source "VoiceNote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/support/VoiceNote$PlaybackListener;
    }
.end annotation


# static fields
.field private static final MAX_MS:I = 0x2bf20


# instance fields
.field private final context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private lengthMs:J

.field private playbackListener:Lcom/argusoft/sewa/android/app/support/VoiceNote$PlaybackListener;

.field private player:Landroid/media/MediaPlayer;

.field private recorder:Landroid/media/MediaRecorder;

.field private startedAt:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->context:Landroid/content/Context;

    return-void
.end method

.method public static clock(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 204
    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3c

    div-long v3, p0, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    rem-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const-string p0, "%02d"

    invoke-static {v3, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private releaseRecorder()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method private stoppedByItself()V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stopPlaying()V

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->playbackListener:Lcom/argusoft/sewa/android/app/support/VoiceNote$PlaybackListener;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote$PlaybackListener;->onPlaybackStopped()V

    :cond_0
    return-void
.end method


# virtual methods
.method public discard()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stopPlaying()V

    .line 183
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->releaseRecorder()V

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    :cond_0
    const-wide/16 v0, 0x0

    .line 189
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs:J

    return-void
.end method

.method public file()Ljava/io/File;
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public handOver()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stopPlaying()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs:J

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$play$0$com-argusoft-sewa-android-app-support-VoiceNote(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stoppedByItself()V

    return-void
.end method

.method synthetic lambda$play$1$com-argusoft-sewa-android-app-support-VoiceNote(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Playback error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VoiceNote"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stoppedByItself()V

    const/4 p1, 0x1

    return p1
.end method

.method public lengthMs()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs:J

    return-wide v0
.end method

.method public play()Z
    .locals 5

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stopPlaying()V

    .line 128
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    .line 129
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x1

    .line 130
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 133
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/support/VoiceNote;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/support/VoiceNote;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    .line 144
    const-string v2, "VoiceNote"

    const-string v3, "Could not play"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->stopPlaying()V

    return v1
.end method

.method public playedMs()J
    .locals 3

    const-wide/16 v0, 0x0

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

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

.method public setPlaybackListener(Lcom/argusoft/sewa/android/app/support/VoiceNote$PlaybackListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->playbackListener:Lcom/argusoft/sewa/android/app/support/VoiceNote$PlaybackListener;

    return-void
.end method

.method public start()Z
    .locals 5

    .line 49
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->discard()V

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "support"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 53
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voice_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    .line 55
    :try_start_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x3e80

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x7d00

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    const v2, 0x2bf20

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->startedAt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 68
    const-string v1, "VoiceNote"

    const-string v2, "Could not start recording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->releaseRecorder()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->file:Ljava/io/File;

    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 82
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    nop

    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->startedAt:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs:J

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->releaseRecorder()V

    if-eqz v0, :cond_2

    .line 89
    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs:J

    const-wide/16 v5, 0x2bc

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->discard()V

    return v1
.end method

.method public stopPlaying()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote;->player:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
