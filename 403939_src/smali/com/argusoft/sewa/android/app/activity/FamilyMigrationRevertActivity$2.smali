.class Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$2;
.super Ljava/lang/Object;
.source "FamilyMigrationRevertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->setFamilyDetailsScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity;->finish()V

    return-void
.end method
