.class Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1$2;
.super Ljava/lang/Object;
.source "NotificationAshaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showProcessDialog()V

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->retrieveNotificationListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
