.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$9;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addAshaAreaSelectionSpinner()V
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

    .line 965
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 968
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2802(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;I)I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
