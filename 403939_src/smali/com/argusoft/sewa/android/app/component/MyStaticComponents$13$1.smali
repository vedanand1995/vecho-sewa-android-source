.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;
.super Ljava/lang/Thread;
.source "MyStaticComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;

.field final synthetic val$dialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;Lcom/argusoft/sewa/android/app/component/MyProcessDialog;)V
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

    .line 1019
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->val$dialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1022
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->access$000(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1023
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->access$100(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->access$100(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataMap"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->access$000(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1027
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13$1;->val$dialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
