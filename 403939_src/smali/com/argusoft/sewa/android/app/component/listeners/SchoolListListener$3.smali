.class Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addRegionSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

.field final synthetic val$locationMasterBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->val$locationMasterBeans:Ljava/util/List;

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

    .line 506
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "2"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "3"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "4"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "6"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 512
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1500(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 513
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1600(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 514
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 515
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 516
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 517
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 518
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 519
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 520
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 522
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 523
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "1"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2402(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 525
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2500(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2402(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 528
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 531
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 532
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 533
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 534
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2600(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)V

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
