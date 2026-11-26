.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;
.super Ljava/lang/Object;
.source "HealthInfrastructureListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addSubCenterSpinner(Ljava/lang/Long;)V
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

    .line 1099
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->val$locationMasterBeans:Ljava/util/List;

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

    .line 1103
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1105
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 1107
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1108
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3402(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1110
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3900(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)V

    goto :goto_0

    .line 1112
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "4"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$3402(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1115
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1116
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1117
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1118
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

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
