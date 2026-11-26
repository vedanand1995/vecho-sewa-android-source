.class public final synthetic Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

.field public final synthetic f$1:Lcom/argusoft/sewa/android/app/restclient/RestHttpException;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda7;->f$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda7;->f$1:Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda7;->f$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda7;->f$1:Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->lambda$onLoadMoreBackground$25$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    return-void
.end method
