.class Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 349
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$202(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$502(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$402(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$302(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$602(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)Z

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hideLoading()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$800(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$800(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->setEnabled(Z)V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$002(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 369
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1200(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1300(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 381
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    .line 382
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 383
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show()V

    goto :goto_0

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    .line 386
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_7

    .line 387
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 389
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    goto :goto_0

    .line 396
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1300(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 397
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$2;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    :cond_7
    :goto_0
    return-void
.end method
