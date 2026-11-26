.class Lcom/argusoft/sewa/android/app/activity/LoginActivity_$7;
.super Ljava/lang/Object;
.source "LoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->doAfterLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Z)V
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

    .line 173
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$7;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$7;->val$flag:Z

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->access$601(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Z)V

    return-void
.end method
