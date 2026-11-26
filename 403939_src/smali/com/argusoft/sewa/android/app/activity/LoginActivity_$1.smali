.class Lcom/argusoft/sewa/android/app/activity/LoginActivity_$1;
.super Ljava/lang/Object;
.source "LoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->showAlertAndExit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;)V
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

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->access$001(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;)V

    return-void
.end method
