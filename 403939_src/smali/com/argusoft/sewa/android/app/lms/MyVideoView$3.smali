.class Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 404
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 406
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$202(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1302(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 408
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$200(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->showComplete()V

    .line 412
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "a=%s,b=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1400(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1400(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$3;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
