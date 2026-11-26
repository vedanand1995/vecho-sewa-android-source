.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$1;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->onBackPressed()V
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

    .line 193
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 197
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 198
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->finish()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
