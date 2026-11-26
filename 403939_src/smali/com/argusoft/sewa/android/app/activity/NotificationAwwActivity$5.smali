.class Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;
.super Ljava/lang/Thread;
.source "NotificationAwwActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->startDynamicFormActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

.field final synthetic val$myIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;Landroid/content/Intent;)V
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

    .line 441
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->val$myIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;)Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->val$myIntent:Landroid/content/Intent;

    const-string v2, "entity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->val$myIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->access$900()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity;->hideProcessDialog()V

    return-void
.end method
