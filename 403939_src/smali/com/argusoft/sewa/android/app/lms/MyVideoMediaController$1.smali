.class Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;
.super Landroid/os/Handler;
.source "MyVideoMediaController.java"


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

    .line 247
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 251
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->center_play_btn:I

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$400(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;I)V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show()V

    .line 271
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->error_layout:I

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$400(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;I)V

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    .line 277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$500(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show()V

    .line 264
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->loading_layout:I

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$400(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;I)V

    goto :goto_0

    .line 256
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)I

    move-result p1

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$200(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 258
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    rem-int/lit16 p1, p1, 0x3e8

    rsub-int p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 253
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->hide()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
