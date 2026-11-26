.class Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addBlockSpinner(Ljava/lang/Long;)V
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

    .line 631
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->val$locationMasterBeans:Ljava/util/List;

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

    .line 635
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "4"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "6"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 639
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 640
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 641
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 642
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 643
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 645
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 646
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "3"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2402(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 648
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)V

    goto :goto_0

    .line 650
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "2"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$2402(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 653
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 654
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 655
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 656
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

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
