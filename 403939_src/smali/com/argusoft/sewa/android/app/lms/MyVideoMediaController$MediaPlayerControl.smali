.class public interface abstract Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "MyVideoMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract canPause()Z
.end method

.method public abstract canSeekBackward()Z
.end method

.method public abstract canSeekForward()Z
.end method

.method public abstract closePlayer()V
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setFullscreen(Z)V
.end method

.method public abstract setFullscreen(ZI)V
.end method

.method public abstract start()V
.end method
