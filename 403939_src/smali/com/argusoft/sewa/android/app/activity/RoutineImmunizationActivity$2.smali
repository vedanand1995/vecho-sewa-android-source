.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$2;
.super Ljava/lang/Object;
.source "RoutineImmunizationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveCountsForEachNotificationType(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 847
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    return-void
.end method
