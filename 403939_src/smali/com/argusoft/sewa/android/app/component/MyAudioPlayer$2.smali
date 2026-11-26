.class Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;
.super Ljava/lang/Object;
.source "MyAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$800(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$208(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$1100(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x3e8

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;->access$000(Lcom/argusoft/sewa/android/app/component/MyAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
