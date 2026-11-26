.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "MyPeopleActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$locationId:Ljava/lang/Long;

.field final synthetic val$s:Ljava/lang/CharSequence;

.field final synthetic val$searchType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
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

    .line 607
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$s:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$date:Ljava/util/Date;

    iput-object p8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$searchType:Ljava/lang/String;

    iput-object p9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$locationId:Ljava/lang/Long;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$s:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$date:Ljava/util/Date;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$searchType:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$41;->val$locationId:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->access$4001(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 614
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
