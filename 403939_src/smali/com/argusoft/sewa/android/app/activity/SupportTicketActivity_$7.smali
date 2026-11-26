.class Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$7;
.super Ljava/lang/Object;
.source "SupportTicketActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->replyDone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$7;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$7;->val$ok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$7;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$7;->val$ok:Z

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->access$601(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Z)V

    return-void
.end method
