.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;
.super Ljava/lang/Object;
.source "NDHMHealthIdManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->askForConsent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 386
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 389
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 391
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "memberId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 393
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nameOfBeneficiary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aadharScanned"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dob"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "featureName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
