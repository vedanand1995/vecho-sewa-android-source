.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_$8;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "HomeScreenActivityCHO_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;->doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$restartHomescreen:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
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

    .line 209
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_$8;->val$restartHomescreen:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_$8;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_$8;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_$8;->val$restartHomescreen:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_$8;->val$callback:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;->access$701(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO_;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 216
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
