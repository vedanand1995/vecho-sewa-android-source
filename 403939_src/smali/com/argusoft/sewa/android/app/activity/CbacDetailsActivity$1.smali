.class Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;
.super Ljava/lang/Object;
.source "CbacDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->showNotOnlineMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 152
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;)V

    .line 160
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->context:Landroid/content/Context;

    const-string v0, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 161
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v7, v6, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/CbacDetailsActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
