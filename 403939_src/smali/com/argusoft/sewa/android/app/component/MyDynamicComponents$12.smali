.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMotherChildRelationshipView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$motherOptionListMap:Ljava/util/Map;

.field final synthetic val$motherSpinner:Landroid/widget/Spinner;

.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/widget/Spinner;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1445
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$motherOptionListMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$motherSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$context:Landroid/content/Context;

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

    .line 1449
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$motherOptionListMap:Ljava/util/Map;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$motherSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1450
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 1451
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1453
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1454
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1455
    new-instance p4, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12$1;

    invoke-direct {p4, p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;)V

    .line 1456
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p4

    .line 1457
    new-instance p5, Lcom/google/gson/Gson;

    invoke-direct {p5}, Lcom/google/gson/Gson;-><init>()V

    .line 1458
    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1460
    invoke-virtual {p5, p2, p4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    move-object p3, p2

    .line 1462
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$motherSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1465
    invoke-virtual {p5, p2, p4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Ljava/util/Map;

    .line 1466
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$motherSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1471
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p5, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 1473
    :cond_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1476
    :goto_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$motherSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1477
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;->val$context:Landroid/content/Context;

    const-string p2, "You have selected same child as mother. Please select a different Mother for this child."

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
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
