.class Lcom/argusoft/sewa/android/app/activity/LoginActivity_$5;
.super Ljava/lang/Object;
.source "LoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->setLoginScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->access$401(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;)V

    return-void
.end method
