.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$6;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->showProcessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1700(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Processing...."

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1802(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;Lcom/argusoft/sewa/android/app/component/MyProcessDialog;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    return-void
.end method
