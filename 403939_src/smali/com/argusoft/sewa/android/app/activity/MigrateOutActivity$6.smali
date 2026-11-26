.class Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;
.super Ljava/lang/Object;
.source "MigrateOutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 583
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 584
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V

    .line 585
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 586
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->finish()V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
