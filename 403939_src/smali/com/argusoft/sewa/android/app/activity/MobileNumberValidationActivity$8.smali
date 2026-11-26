.class Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$8;
.super Ljava/lang/Object;
.source "MobileNumberValidationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->showNotOnlineMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 697
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 698
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
