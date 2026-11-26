.class Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;
.super Ljava/lang/Object;
.source "PhoneNumberVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 179
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->navigateToHomeScreen(Z)V

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->finish()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
