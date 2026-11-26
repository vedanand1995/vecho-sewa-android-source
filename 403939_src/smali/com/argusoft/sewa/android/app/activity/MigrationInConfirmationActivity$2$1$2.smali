.class Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1$2;
.super Ljava/lang/Object;
.source "MigrationInConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1$2;->this$2:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
