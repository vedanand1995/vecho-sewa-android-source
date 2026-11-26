.class Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;
.super Ljava/lang/Object;
.source "MyVideoMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field change:Z

.field newPosition:I

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

    .line 549
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 550
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->newPosition:I

    .line 552
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->change:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 565
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->getDuration()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x3e8

    .line 572
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 573
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->newPosition:I

    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->change:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 555
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const v0, 0x36ee80

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    .line 560
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z

    .line 561
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$800(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 578
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 581
    :cond_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->change:Z

    if-eqz p1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->newPosition:I

    invoke-interface {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$MediaPlayerControl;->seekTo(I)V

    .line 583
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 584
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$900(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->newPosition:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$1000(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z

    .line 588
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)I

    .line 589
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$1100(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)V

    .line 590
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->show(I)V

    .line 595
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$202(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;Z)Z

    .line 596
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController$7;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;->access$800(Lcom/argusoft/sewa/android/app/lms/MyVideoMediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
