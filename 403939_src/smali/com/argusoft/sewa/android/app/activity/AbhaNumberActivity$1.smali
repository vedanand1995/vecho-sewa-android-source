.class Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;
.super Ljava/lang/Object;
.source "AbhaNumberActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

.field final synthetic val$editText:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;Lcom/google/android/material/textfield/TextInputLayout;)V
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

    .line 336
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 344
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)Ljava/util/Timer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    .line 345
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 346
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)Ljava/util/Timer;

    move-result-object p2

    new-instance p3, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;

    invoke-direct {p3, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
