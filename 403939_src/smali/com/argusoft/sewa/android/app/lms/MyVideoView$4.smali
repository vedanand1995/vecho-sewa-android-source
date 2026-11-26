.class Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/MyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/16 v0, 0x2bd

    .line 424
    const-string v1, "MyVideoView"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 436
    :cond_0
    const-string v0, "onInfo MediaPlayer.MEDIA_INFO_BUFFERING_END"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1500(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1500(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;->onBufferingEnd(Landroid/media/MediaPlayer;)V

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 441
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hideLoading()V

    goto :goto_0

    .line 426
    :cond_2
    const-string v0, "onInfo MediaPlayer.MEDIA_INFO_BUFFERING_START"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1500(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1500(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;->onBufferingStart(Landroid/media/MediaPlayer;)V

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->showLoading()V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1600(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 447
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1600(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    return v2

    :cond_7
    return v0
.end method
