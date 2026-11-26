.class Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;
.super Ljava/lang/Object;
.source "MigrationOutConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 249
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 250
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)V

    .line 251
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->finish()V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrationOutConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
