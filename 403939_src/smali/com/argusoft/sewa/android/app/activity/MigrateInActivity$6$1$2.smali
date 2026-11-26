.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;
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

    .line 822
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1900(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 827
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
