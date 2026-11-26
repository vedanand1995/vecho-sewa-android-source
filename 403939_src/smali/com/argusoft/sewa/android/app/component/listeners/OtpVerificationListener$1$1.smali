.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[I

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v3, v0, v1

    add-int/2addr v3, v1

    aput v3, v0, v1

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[Ljava/util/Timer;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    aput-object v1, v0, v2

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[Ljava/util/Timer;

    move-result-object v0

    aget-object v3, v0, v2

    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1$1;)V

    const-wide/16 v5, 0x32

    const-wide/16 v7, 0x5dc

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
