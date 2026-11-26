.class Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;
.super Ljava/util/TimerTask;
.source "AdolescentEventNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;Ljava/lang/CharSequence;)V
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

    .line 647
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 664
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
