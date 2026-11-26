.class Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$2;
.super Ljava/lang/Object;
.source "AdolescentEventNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 682
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 683
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    return-void
.end method
