.class public Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;
.super Ljava/lang/Object;
.source "MyListInColorComponent.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final mainLayout:Landroid/widget/LinearLayout;

.field private mapReasons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mapReasons:Ljava/util/Map;

    .line 34
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    invoke-static {p1, v1, v0, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mainLayout:Landroid/widget/LinearLayout;

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->generateList()V

    return-void
.end method

.method private generateList()V
    .locals 10

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mapReasons:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mapReasons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v5, "-"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 61
    array-length v5, v4

    const/4 v6, 0x2

    const-string v7, "\n"

    const/4 v8, 0x1

    if-ne v5, v6, :cond_2

    .line 62
    aget-object v5, v4, v8

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 63
    aget-object v4, v4, v8

    goto :goto_1

    .line 65
    :cond_1
    aget-object v4, v4, v8

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v4, 0x0

    .line 68
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v5, v8

    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v8

    const/16 v5, 0x20

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 73
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    if-eqz v4, :cond_4

    .line 75
    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setColor(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    .line 77
    :cond_4
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 79
    :goto_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    move v1, v2

    :cond_6
    if-nez v1, :cond_7

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->context:Landroid/content/Context;

    const-string v2, "No issues found"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/LinearLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public resetList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->mapReasons:Ljava/util/Map;

    .line 41
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyListInColorComponent;->generateList()V

    return-void
.end method
