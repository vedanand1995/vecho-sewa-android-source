.class Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$2;
.super Ljava/lang/Object;
.source "TakeHomeRation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;->this$0:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->showProcessDialog()V

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;->this$0:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->retrieveChildrens(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;->this$0:Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->access$100(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    return-void
.end method
