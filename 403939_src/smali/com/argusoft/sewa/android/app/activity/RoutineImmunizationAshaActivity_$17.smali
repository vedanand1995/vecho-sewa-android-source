.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "RoutineImmunizationAshaActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->retrieveCountsForEachNotificationType(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

.field final synthetic val$locationIds:Ljava/util/List;

.field final synthetic val$selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
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

    .line 320
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;->val$locationIds:Ljava/util/List;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;->val$selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;->val$locationIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$17;->val$selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->access$1601(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 327
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
