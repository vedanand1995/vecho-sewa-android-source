.class Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;
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


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const-string v3, "Please wait...."

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->doUpdate(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    .line 200
    sget-boolean v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;)V

    :cond_1
    return-void
.end method
