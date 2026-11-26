.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

.field final synthetic val$result:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;Ljava/lang/Boolean;)V
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

    .line 151
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->val$result:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->val$result:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[Ljava/util/Timer;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const-string v3, "0s"

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const-string v3, "Mobile Number verification completed successfully, you may move ahead"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    const-string v3, "T/F"

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1300(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1500(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1600(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isAnyMemberMobileVerificationDone:Ljava/lang/Boolean;

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    const-string v1, "Verification code verified successfully."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[I

    move-result-object v0

    aget v0, v0, v2

    if-gtz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    const-string v1, "Invalid verification code"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
