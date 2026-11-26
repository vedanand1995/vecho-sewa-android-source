.class Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$6;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "RaiseHelpActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;->sendNow(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;

.field final synthetic val$saved:Lcom/argusoft/sewa/android/app/model/SupportTicketBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$6;->val$saved:Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$6;->val$saved:Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;->access$501(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 159
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
