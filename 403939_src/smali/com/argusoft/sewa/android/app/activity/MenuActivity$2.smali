.class Lcom/argusoft/sewa/android/app/activity/MenuActivity$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MenuActivity;->showProcessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    const-string v3, "Processing"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    return-void
.end method
