.class Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 552
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 555
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1102(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 556
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1, p4}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1202(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 557
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1300(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 558
    :goto_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p2

    if-ne p2, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 559
    :goto_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 560
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 561
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->seekTo(I)V

    .line 563
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1902(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 569
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$2000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    .line 570
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$2100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 575
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1902(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 576
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$2200(Lcom/argusoft/sewa/android/app/lms/MyVideoView;Z)V

    .line 578
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$2300(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V

    return-void
.end method
