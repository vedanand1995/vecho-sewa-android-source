.class Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;
.super Ljava/lang/Object;
.source "LocationDrillDownComponent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildDistrictLevel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

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

    .line 386
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->access$000(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)I

    move-result p1

    if-ne p3, p1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->access$002(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;I)I

    .line 390
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->access$100(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    if-lez p3, :cond_1

    .line 392
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->access$200(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)Ljava/util/List;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->access$300(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/Long;I)V

    :cond_1
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
