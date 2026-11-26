.class Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 337
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 339
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$002(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 340
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    .line 341
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "onVideoSizeChanged width=%d,height=%d"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyVideoView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 344
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->requestLayout()V

    :cond_0
    return-void
.end method
