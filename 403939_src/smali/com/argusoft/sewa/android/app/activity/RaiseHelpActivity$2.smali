.class Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;
.super Ljava/lang/Object;
.source "RaiseHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Lcom/argusoft/sewa/android/app/support/VoiceNote;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Lcom/argusoft/sewa/android/app/support/VoiceNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Lcom/argusoft/sewa/android/app/support/VoiceNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->playedMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Lcom/argusoft/sewa/android/app/support/VoiceNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lengthMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->clock(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
