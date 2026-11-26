.class Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;
.super Ljava/lang/Object;
.source "PhoneNumberVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->showAlertAndExit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Ljava/lang/String;)V
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

    .line 194
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 197
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2$1;-><init>(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;)V

    .line 204
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->val$msg:Ljava/lang/String;

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
