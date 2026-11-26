.class Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$1;
.super Ljava/lang/Object;
.source "IDSP2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addVillageSelectionSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

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

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$100(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$002(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Ljava/util/List;)Ljava/util/List;

    .line 214
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addAshaAreaSelectionSpinner()V

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
