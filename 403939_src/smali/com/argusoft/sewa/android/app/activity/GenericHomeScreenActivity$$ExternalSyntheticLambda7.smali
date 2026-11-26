.class public final synthetic Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

.field public final synthetic f$1:Lcom/argusoft/sewa/android/app/model/MenuBean;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;Lcom/argusoft/sewa/android/app/model/MenuBean;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;->f$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;->f$1:Lcom/argusoft/sewa/android/app/model/MenuBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;->f$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;->f$1:Lcom/argusoft/sewa/android/app/model/MenuBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->lambda$onItemClickListener$1$com-argusoft-sewa-android-app-activity-GenericHomeScreenActivity(Lcom/argusoft/sewa/android/app/model/MenuBean;Landroid/view/View;)V

    return-void
.end method
