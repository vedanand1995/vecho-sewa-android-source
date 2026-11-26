.class public Lcom/argusoft/sewa/android/app/SingleSelectComponent;
.super Landroid/widget/LinearLayout;
.source "SingleSelectComponent.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private defaultIndex:I

.field private final defaultOption:Ljava/lang/String;

.field private final optionConstants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optionLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionLabels:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionConstants:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->defaultIndex:I

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->options:Ljava/util/Map;

    .line 29
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->defaultOption:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionLabels:Ljava/util/List;

    const-string v1, "-Select-"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionConstants:Ljava/util/List;

    const-string v1, "-1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->options:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionConstants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->defaultOption:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->defaultOption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionConstants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->defaultIndex:I

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->defaultIndex:I

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionLabels:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->defaultIndex:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->spinner:Landroid/widget/Spinner;

    .line 45
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAnswerString()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->optionConstants:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
