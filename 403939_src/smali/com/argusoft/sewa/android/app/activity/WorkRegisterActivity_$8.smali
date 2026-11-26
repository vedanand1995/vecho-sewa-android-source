.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "WorkRegisterActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;->retrieveData(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

.field final synthetic val$createTable:Z

.field final synthetic val$limit:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;Ljava/lang/String;JLjava/lang/String;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

    iput-boolean p6, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->val$createTable:Z

    iput p7, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->val$limit:I

    iput p8, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->val$offset:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->val$createTable:Z

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->val$limit:I

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$8;->val$offset:I

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;->access$701(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 182
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
