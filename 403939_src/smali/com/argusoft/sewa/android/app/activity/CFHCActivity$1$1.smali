.class Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;
.super Ljava/util/TimerTask;
.source "CFHCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;Ljava/lang/CharSequence;)V
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

    .line 249
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-CFHCActivity$1$1(Ljava/lang/CharSequence;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 255
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-CFHCActivity$1$1(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->showProcessDialog()V

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->val$s:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;Ljava/lang/CharSequence;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CFHCActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1$1;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
