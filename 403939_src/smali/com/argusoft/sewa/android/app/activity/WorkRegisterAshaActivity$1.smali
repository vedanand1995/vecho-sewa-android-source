.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$1;
.super Ljava/lang/Object;
.source "WorkRegisterAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->showNotOnlineMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
