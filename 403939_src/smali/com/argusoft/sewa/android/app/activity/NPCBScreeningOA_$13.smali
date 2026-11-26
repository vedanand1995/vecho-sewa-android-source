.class Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "NPCBScreeningOA_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->screenRbskMappedMember(Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;

.field final synthetic val$rbskMember:Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Ljava/lang/String;JLjava/lang/String;Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V
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

    .line 245
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;->val$rbskMember:Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;

    iput p7, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;->val$requestId:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;->val$rbskMember:Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_$13;->val$requestId:I

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;->access$1201(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA_;Lcom/argusoft/sewa/android/app/databean/RbskVisionReferredMemberBean;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
