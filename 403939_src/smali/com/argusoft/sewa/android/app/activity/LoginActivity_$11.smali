.class Lcom/argusoft/sewa/android/app/activity/LoginActivity_$11;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "LoginActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->doAfterSuccessfulLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;JLjava/lang/String;Z)V
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

    .line 229
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$11;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iput-boolean p6, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$11;->val$flag:Z

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$11;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$11;->val$flag:Z

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->access$1001(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 236
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
