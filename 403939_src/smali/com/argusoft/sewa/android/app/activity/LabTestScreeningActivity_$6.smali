.class Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "LabTestScreeningActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$isSearch:Z

.field final synthetic val$s:Ljava/lang/String;

.field final synthetic val$searchType:Ljava/lang/String;

.field final synthetic val$selectedService:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V
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

    .line 154
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$selectedService:Ljava/lang/String;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$s:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$isSearch:Z

    iput-object p9, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$searchType:Ljava/lang/String;

    iput-object p10, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$date:Ljava/util/Date;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$selectedService:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$s:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$isSearch:Z

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$searchType:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_$6;->val$date:Ljava/util/Date;

    invoke-static/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;->access$501(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 161
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
