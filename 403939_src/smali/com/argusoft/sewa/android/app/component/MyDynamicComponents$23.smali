.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getTestSelectorComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field final synthetic val$visibleSpinners:Ljava/util/List;

.field final synthetic val$visibleTestKeys:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3675
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;->val$visibleSpinners:Ljava/util/List;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;->val$visibleTestKeys:Ljava/util/List;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

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

    .line 3678
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;->val$visibleSpinners:Ljava/util/List;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;->val$visibleTestKeys:Ljava/util/List;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->access$400(Ljava/util/List;Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

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
