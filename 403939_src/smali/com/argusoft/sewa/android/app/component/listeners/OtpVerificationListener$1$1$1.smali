.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;
.super Ljava/util/TimerTask;
.source "OtpVerificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->cancel()Z

    :goto_0
    return-void
.end method
