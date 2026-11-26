.class Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 454
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$202(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 458
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1302(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 459
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 460
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->showError()V

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 465
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
