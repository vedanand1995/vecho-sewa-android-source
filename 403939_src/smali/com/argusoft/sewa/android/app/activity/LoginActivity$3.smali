.class Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;
.super Ljava/lang/Thread;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isUserInProduction(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->validateUser(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 351
    :cond_0
    const-string v1, "User not found with this username"

    .line 353
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-virtual {v2, v1, v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->onLoginComplete(Ljava/lang/String;I)V

    return-void
.end method
