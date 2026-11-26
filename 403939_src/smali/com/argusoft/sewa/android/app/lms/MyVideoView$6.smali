.class Lcom/argusoft/sewa/android/app/lms/MyVideoView$6;
.super Ljava/lang/Object;
.source "MyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    .line 504
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$6;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 506
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoView$6;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->access$1802(Lcom/argusoft/sewa/android/app/lms/MyVideoView;I)I

    return-void
.end method
