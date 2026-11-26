.class Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->switchToLoginActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->finish()V

    return-void
.end method
