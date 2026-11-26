.class Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;
.super Ljava/lang/Object;
.source "MigrateOutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addRegionSpinner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

.field final synthetic val$locationMasterBeans:Ljava/util/List;

.field final synthetic val$preSelected:Z


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->val$locationMasterBeans:Ljava/util/List;

    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->val$preSelected:Z

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

    .line 645
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "2"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "3"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "4"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "6"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1400(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 651
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1500(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 652
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1600(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 653
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 654
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1800(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 655
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1900(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 656
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$2000(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 657
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$2100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 658
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$2200(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 659
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$2300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 661
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$802(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 662
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p2

    const-string p3, "1"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p2

    iget-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;->val$preSelected:Z

    invoke-static {p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->access$2400(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/lang/Long;Z)V

    :cond_0
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
