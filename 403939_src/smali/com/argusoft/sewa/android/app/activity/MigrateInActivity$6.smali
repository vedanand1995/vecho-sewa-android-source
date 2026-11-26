.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addSearchTextBoxForFamily()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 797
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

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

    .line 805
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1600(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/Timer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    .line 806
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1602(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 807
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1600(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/Timer;

    move-result-object p2

    new-instance p3, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    invoke-direct {p3, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
