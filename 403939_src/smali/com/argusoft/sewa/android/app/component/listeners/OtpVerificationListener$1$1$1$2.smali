.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const-string v1, "0s"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-le v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const-string v2, "You have reached maximum number of retries for mobile number verification. Please try again later"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    const-string v2, "Request verification code again"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1$2;->this$3:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;->this$2:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method
