.class Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$2;
.super Ljava/lang/Object;
.source "OPDFacilityActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->showOfflineMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;

.field final synthetic val$navigateToHomescreen:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Z)V
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

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$2;->val$navigateToHomescreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_$2;->val$navigateToHomescreen:Z

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;->access$101(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;Z)V

    return-void
.end method
