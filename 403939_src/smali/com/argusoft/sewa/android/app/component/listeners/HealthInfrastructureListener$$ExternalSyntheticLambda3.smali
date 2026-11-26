.class public final synthetic Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->lambda$addSmartReferralDetails$1(Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;)I

    move-result p1

    return p1
.end method
