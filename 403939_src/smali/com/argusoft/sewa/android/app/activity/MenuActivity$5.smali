.class Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MenuActivity;->showAlertAndFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Ljava/lang/String;)V
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

    .line 282
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->val$msg:Ljava/lang/String;

    .line 287
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5$1;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;)V

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v7, v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
