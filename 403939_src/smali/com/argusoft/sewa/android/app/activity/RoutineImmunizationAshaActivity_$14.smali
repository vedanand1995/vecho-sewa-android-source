.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;
.super Ljava/lang/Object;
.source "RoutineImmunizationAshaActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->showMemberDetailsToAshaUser(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

.field final synthetic val$formType:Ljava/lang/String;

.field final synthetic val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;->val$formType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$14;->val$formType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->access$1301(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    return-void
.end method
