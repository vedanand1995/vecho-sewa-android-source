.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$3;
.super Ljava/lang/Object;
.source "RoutineImmunizationAshaActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

.field final synthetic val$campaignMasterBean:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
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

    .line 144
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$3;->val$campaignMasterBean:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_$3;->val$campaignMasterBean:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;->access$201(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    return-void
.end method
