.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;
.super Ljava/util/TimerTask;
.source "MigrateInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;Ljava/lang/CharSequence;)V
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

    .line 808
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
