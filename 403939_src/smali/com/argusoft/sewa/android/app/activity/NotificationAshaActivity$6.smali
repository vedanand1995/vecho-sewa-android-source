.class Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;
.super Ljava/lang/Object;
.source "NotificationAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->showReadOnlyNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

.field final synthetic val$myListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;Landroid/view/View$OnClickListener;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;->val$myListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 596
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;->val$myListener:Landroid/view/View$OnClickListener;

    const/16 v3, -0x97

    const-string v4, "Are you sure want to mark this notification as read?"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 599
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
