.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$21;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "RoutineImmunizationActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

.field final synthetic val$formType:Ljava/lang/String;

.field final synthetic val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
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

    .line 393
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$21;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$21;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$21;->val$formType:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$21;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$21;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$21;->val$formType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;->access$2001(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 400
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
