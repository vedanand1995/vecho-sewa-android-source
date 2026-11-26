.class Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1$2;
.super Ljava/lang/Object;
.source "AbhaNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->showProcessDialog()V

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveFamilyListFromDBForAsha(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    return-void
.end method
