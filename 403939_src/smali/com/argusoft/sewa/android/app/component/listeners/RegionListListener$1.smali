.class Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;
.super Ljava/lang/Object;
.source "RegionListListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addRegionSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

.field final synthetic val$locationMasterBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/util/List;)V
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

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->val$locationMasterBeans:Ljava/util/List;

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

    .line 100
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "2"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "3"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "4"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "5"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "6"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 106
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 108
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 110
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 111
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 112
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 113
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 114
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 116
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->val$locationMasterBeans:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 117
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "1"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$1202(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)Ljava/lang/Long;

    .line 119
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$1300(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->access$1202(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)Ljava/lang/Long;

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
