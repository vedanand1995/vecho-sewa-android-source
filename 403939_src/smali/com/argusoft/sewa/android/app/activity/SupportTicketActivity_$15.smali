.class Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "SupportTicketActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

.field final synthetic val$fixed:Z

.field final synthetic val$saved:Lcom/argusoft/sewa/android/app/model/SupportActionBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;->val$saved:Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    iput-boolean p7, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;->val$fixed:Z

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;->val$saved:Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$15;->val$fixed:Z

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->access$1401(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Lcom/argusoft/sewa/android/app/model/SupportActionBean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 289
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
