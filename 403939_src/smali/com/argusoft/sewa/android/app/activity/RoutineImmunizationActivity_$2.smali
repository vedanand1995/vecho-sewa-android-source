.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$2;
.super Ljava/lang/Object;
.source "RoutineImmunizationActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;->setCampaignSelectionScreen(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

.field final synthetic val$sessionFinishedForToday:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$2;->val$sessionFinishedForToday:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_$2;->val$sessionFinishedForToday:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;->access$101(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;Ljava/lang/Boolean;)V

    return-void
.end method
