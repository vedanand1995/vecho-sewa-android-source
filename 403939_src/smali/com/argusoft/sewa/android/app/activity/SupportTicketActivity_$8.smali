.class Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;
.super Ljava/lang/Object;
.source "SupportTicketActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->answered(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

.field final synthetic val$fixed:Z

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;->val$ok:Z

    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;->val$fixed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;->val$ok:Z

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$8;->val$fixed:Z

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->access$701(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;ZZ)V

    return-void
.end method
