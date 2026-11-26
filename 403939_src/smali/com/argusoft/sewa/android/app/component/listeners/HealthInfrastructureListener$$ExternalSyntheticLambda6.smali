.class public final synthetic Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda6;->f$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda6;->f$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v0, p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->lambda$addSpinnersForLocationHierarchy$4$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)I

    move-result p1

    return p1
.end method
