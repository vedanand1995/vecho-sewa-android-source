.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3$1;
.super Ljava/lang/Thread;
.source "HealthInfrastructureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 637
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 642
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
