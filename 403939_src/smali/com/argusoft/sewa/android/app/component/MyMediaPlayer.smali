.class public Lcom/argusoft/sewa/android/app/component/MyMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "MyMediaPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public seekTo(I)V
    .locals 1

    .line 17
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 18
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
