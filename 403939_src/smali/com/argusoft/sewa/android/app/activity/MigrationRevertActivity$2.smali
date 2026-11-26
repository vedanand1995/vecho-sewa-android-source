.class Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$2;
.super Ljava/lang/Object;
.source "MigrationRevertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->setMemberDetailsScreen()V
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

    .line 225
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity;->finish()V

    return-void
.end method
