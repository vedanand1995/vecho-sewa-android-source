.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7$1;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 881
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;

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

    .line 884
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2202(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;I)I

    return-void
.end method
