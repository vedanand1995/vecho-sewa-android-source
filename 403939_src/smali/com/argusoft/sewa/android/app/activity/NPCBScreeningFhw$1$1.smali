.class Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;
.super Ljava/util/TimerTask;
.source "NPCBScreeningFhw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;Ljava/lang/CharSequence;)V
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

    .line 221
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-NPCBScreeningFhw$1$1(Ljava/lang/CharSequence;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->access$100(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->access$100(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-NPCBScreeningFhw$1$1()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->showProcessDialog()V

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->retrieveMemberListFromDB(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->access$100(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->access$100(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw$1$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
