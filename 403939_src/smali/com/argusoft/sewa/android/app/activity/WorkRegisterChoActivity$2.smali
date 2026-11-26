.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$2;
.super Ljava/lang/Object;
.source "WorkRegisterChoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showNotOnlineMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 216
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
