.class Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;
.super Ljava/lang/Object;
.source "HomeScreenMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->checkIsMobileTimeSyncedProperly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Ljava/lang/String;)V
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

    .line 168
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 171
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;)V

    .line 179
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v3, v3, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->val$message:Ljava/lang/String;

    .line 180
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x69

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v2, v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
