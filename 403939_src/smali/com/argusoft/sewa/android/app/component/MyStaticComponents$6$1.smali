.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;
.super Ljava/lang/Thread;
.source "MyStaticComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 428
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;->val$context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/CustomVideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;->val$dataMap:Ljava/lang/String;

    const-string v2, "dataMap"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
