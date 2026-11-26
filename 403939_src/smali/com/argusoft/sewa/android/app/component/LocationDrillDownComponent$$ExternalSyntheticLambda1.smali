.class public final synthetic Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;->f$2:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;->f$2:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->lambda$promptForExactLocationName$2$com-argusoft-sewa-android-app-component-LocationDrillDownComponent(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Landroid/view/View;)V

    return-void
.end method
