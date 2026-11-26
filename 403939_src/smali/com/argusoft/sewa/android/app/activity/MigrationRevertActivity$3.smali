.class Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;
.super Ljava/lang/Object;
.source "MigrationRevertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 246
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 247
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;Ljava/lang/Boolean;)V

    .line 248
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finish()V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
