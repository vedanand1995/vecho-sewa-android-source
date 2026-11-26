.class Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;
.super Ljava/lang/Object;
.source "MigrationInConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 501
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 502
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V

    .line 503
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->finish()V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
