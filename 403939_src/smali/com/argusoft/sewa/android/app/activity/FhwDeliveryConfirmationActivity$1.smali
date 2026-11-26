.class Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity$1;
.super Ljava/lang/Object;
.source "FhwDeliveryConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->startDynamicFormActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 229
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/FhwDeliveryConfirmationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
