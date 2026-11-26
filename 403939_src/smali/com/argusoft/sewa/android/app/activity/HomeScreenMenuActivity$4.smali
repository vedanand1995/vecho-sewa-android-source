.class Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;
.super Ljava/lang/Object;
.source "HomeScreenMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

.field final synthetic val$myListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Landroid/view/View$OnClickListener;)V
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

    .line 237
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;->val$myListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const-string v3, "Training is Required For Accessing This Form"

    .line 241
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;->val$myListener:Landroid/view/View$OnClickListener;

    const/16 v5, -0x69

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
