.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;
.super Ljava/lang/Object;
.source "HealthInfrastructureListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addDistrictSpinner(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

.field final synthetic val$locationMasterBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/List;)V
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

    .line 869
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->val$locationMasterBeans:Ljava/util/List;

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

    .line 873
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "3"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "4"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "6"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 878
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 879
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2800(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 880
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2900(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 881
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 882
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 883
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 884
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 886
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 887
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "2"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3402(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 889
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)V

    goto :goto_0

    .line 891
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "1"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3402(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 894
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 895
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 896
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 897
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V

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
