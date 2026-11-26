.class Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "NotificationActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;

.field final synthetic val$limit:J

.field final synthetic val$notificationCode:Ljava/lang/String;

.field final synthetic val$offset:J

.field final synthetic val$searchString:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$notificationCode:Ljava/lang/String;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$searchString:Ljava/lang/CharSequence;

    iput-wide p8, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$limit:J

    iput-wide p10, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$offset:J

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$notificationCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$searchString:Ljava/lang/CharSequence;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_$16;->val$offset:J

    invoke-static/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;->access$1501(Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 307
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
