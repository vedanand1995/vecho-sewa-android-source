.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "WorkRegisterAshaActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;->retrieveData(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;

.field final synthetic val$createTable:Z

.field final synthetic val$limit:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;Ljava/lang/String;JLjava/lang/String;ZII)V
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

    .line 187
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;

    iput-boolean p6, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->val$createTable:Z

    iput p7, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->val$limit:I

    iput p8, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->val$offset:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->val$createTable:Z

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->val$limit:I

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_$9;->val$offset:I

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;->access$801(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 194
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
