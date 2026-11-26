.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$3;
.super Ljava/lang/Object;
.source "NDHMHealthIdManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 407
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 410
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method
