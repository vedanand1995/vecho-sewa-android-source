.class Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;
.super Ljava/lang/Object;
.source "SupportTicketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Lcom/argusoft/sewa/android/app/support/VoiceNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->reply_recording_text:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tap_to_send_voice"

    .line 120
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
