.class Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;
.super Ljava/lang/Object;
.source "DueListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->addVillageSelectionSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;

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

    .line 173
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)Ljava/util/List;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 176
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;

    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;Ljava/util/List;)Ljava/util/List;

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity;->addAshaAreaSelectionSpinner()V

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
