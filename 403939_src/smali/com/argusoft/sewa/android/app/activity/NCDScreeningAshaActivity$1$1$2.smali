.class Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1$2;
.super Ljava/lang/Object;
.source "NCDScreeningAshaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->showProcessDialog()V

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$1;->val$editText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    return-void
.end method
