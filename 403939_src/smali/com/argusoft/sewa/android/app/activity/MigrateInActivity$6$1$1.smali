.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 812
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->showProcessDialog()V

    .line 816
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 817
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1800(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    return-void
.end method
