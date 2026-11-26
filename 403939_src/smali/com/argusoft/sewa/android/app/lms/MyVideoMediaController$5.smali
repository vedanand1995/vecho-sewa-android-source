.class Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;
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

    .line 488
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 490
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$700(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$702(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z

    .line 492
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updateScaleButton()V

    .line 493
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->updateBackButton()V

    .line 494
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$5;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->setFullscreen(Z)V

    :cond_0
    return-void
.end method
