.class Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$3;
.super Ljava/lang/Object;
.source "MigrationInConfirmationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->addRadioGroupForFamilySelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 401
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/MigrationInConfirmationActivity;I)I

    return-void
.end method
