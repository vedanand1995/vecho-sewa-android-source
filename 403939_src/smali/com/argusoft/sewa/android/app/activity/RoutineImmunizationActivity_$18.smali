.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "RoutineImmunizationActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;->retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$locationId:Ljava/lang/Long;

.field final synthetic val$s:Ljava/lang/CharSequence;

.field final synthetic val$scheduleDate:Ljava/lang/Long;

.field final synthetic val$searchType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
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
            null,
            null
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$s:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$date:Ljava/util/Date;

    iput-object p8, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$searchType:Ljava/lang/String;

    iput-object p9, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$locationId:Ljava/lang/Long;

    iput-object p10, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$scheduleDate:Ljava/lang/Long;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$s:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$date:Ljava/util/Date;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$searchType:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$locationId:Ljava/lang/Long;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$18;->val$scheduleDate:Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;->access$1701(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 352
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
