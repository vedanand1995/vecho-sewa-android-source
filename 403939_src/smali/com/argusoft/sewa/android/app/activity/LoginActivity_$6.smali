.class Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;
.super Ljava/lang/Object;
.source "LoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->onLoginComplete(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

.field final synthetic val$contextUrlInfo:I

.field final synthetic val$loginResponse:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;->val$loginResponse:Ljava/lang/String;

    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;->val$contextUrlInfo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;->val$loginResponse:Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$6;->val$contextUrlInfo:I

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->access$501(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;Ljava/lang/String;I)V

    return-void
.end method
