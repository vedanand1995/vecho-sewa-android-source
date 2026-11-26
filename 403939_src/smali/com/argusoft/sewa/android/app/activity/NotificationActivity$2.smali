.class Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->addSearchTextBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 803
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 811
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/util/Timer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    .line 812
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 813
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/util/Timer;

    move-result-object p2

    new-instance p3, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;

    invoke-direct {p3, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
