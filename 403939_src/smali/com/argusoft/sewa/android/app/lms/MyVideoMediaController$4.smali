.class Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;
.super Ljava/lang/Object;
.source "MyVideoMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 481
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$702(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z

    .line 482
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updateScaleButton()V

    .line 483
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updateBackButton()V

    .line 484
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$4;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->setFullscreen(Z)V

    return-void
.end method
