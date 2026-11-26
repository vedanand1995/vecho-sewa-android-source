.class public final synthetic Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field public final synthetic f$1:[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda6;->f$0:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda6;->f$1:[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    return-void
.end method


# virtual methods
.method public final onCustomLocationEntered(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda6;->f$0:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda6;->f$1:[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-static {v0, v1, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->lambda$getLocationDrillDownComponent$1(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    return-void
.end method
