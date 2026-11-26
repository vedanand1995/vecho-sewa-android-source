.class Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2$1;
.super Ljava/lang/Object;
.source "PhoneNumberVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
