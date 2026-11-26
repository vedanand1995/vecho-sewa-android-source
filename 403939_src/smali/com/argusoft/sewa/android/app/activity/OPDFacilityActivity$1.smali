.class Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;
.super Ljava/lang/Object;
.source "OPDFacilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->showOfflineMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;

.field final synthetic val$navigateToHomescreen:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;Z)V
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

    .line 154
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;->val$navigateToHomescreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 158
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;->val$navigateToHomescreen:Z

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;->navigateToHomeScreen(Z)V

    :cond_0
    return-void
.end method
