.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$7;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->hideProcessDialog()V
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

    .line 316
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$7;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$7;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
