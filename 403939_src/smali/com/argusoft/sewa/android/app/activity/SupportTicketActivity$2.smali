.class Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;
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

    .line 126
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    if-eqz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Lcom/argusoft/sewa/android/app/support/SupportAudio;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->isPlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Lcom/argusoft/sewa/android/app/support/SupportAudio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->positionMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Lcom/argusoft/sewa/android/app/support/SupportAudio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->durationMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
