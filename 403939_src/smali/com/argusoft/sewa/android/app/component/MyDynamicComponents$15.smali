.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getLocationDrillDownComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$componentHolder:[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2497
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;->val$componentHolder:[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionCleared()V
    .locals 2

    .line 2506
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2507
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$100(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    return-void
.end method

.method public onVillageSelected(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V
    .locals 1

    .line 2500
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2501
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;->val$componentHolder:[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$000(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    return-void
.end method
