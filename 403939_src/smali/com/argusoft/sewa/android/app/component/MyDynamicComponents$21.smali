.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHealthInfrastructureTypeComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$arrayOfOptions:[Ljava/lang/String;

.field final synthetic val$infraType:Ljava/util/Map;

.field final synthetic val$infraTypeSelectionSpinner:Landroid/widget/Spinner;

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Ljava/util/Map;[Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3311
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$infraTypeSelectionSpinner:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$infraType:Ljava/util/Map;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$arrayOfOptions:[Ljava/lang/String;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 3314
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$infraTypeSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 3316
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$infraType:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 3317
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$arrayOfOptions:[Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$infraTypeSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    aget-object p5, p5, v0

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3318
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3322
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 3325
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_3
    :goto_1
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
