.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->addVillageSelectionSpinner()V
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

    .line 922
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

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

    if-nez p3, :cond_0

    .line 926
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 927
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 929
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 930
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 931
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2600(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Ljava/util/List;

    move-result-object p4

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2502(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;Ljava/util/List;)Ljava/util/List;

    .line 932
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$8;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$2700(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V

    :goto_0
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
