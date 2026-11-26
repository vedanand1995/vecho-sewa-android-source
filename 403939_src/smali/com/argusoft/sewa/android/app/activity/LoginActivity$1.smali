.class Lcom/argusoft/sewa/android/app/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity;->showAlertAndExit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LoginActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method
