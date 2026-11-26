.class Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;
.super Ljava/lang/Object;
.source "FamilyMigrationInConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 123
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->showProcessDialog()V

    .line 124
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->finish()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationInConfirmationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
