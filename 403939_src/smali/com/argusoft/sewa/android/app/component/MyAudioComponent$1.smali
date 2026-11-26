.class Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;
.super Ljava/util/TimerTask;
.source "MyAudioComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->access$000(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->access$000(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->access$100(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->access$200(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->access$200(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->access$108(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyAudioComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent;->access$500(Lcom/argusoft/sewa/android/app/component/MyAudioComponent;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyAudioComponent$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
