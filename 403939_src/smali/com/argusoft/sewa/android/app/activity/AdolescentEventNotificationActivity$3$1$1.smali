.class Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1$1;
.super Ljava/lang/Object;
.source "AdolescentEventNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 602
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3$1;->val$s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->retrieveMemberOfParticularSchool(Ljava/lang/CharSequence;)V

    return-void
.end method
