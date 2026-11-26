.class public Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;
.super Ljava/lang/Object;
.source "ComboChangeListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private hiddenView:Landroid/view/View;

.field private highRiskFormula:[Ljava/lang/String;

.field private isCombo:Z

.field private isMorbidityQuestion:Z

.field private morbidityOptions:[Ljava/lang/String;

.field private nextView:Landroid/view/View;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Ljava/lang/String;)V
    .locals 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->isCombo:Z

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 38
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->highRiskFormula:[Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v2, "morbidityCondition"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->isMorbidityQuestion:Z

    .line 41
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p2

    .line 42
    const-string v3, ","

    invoke-static {p2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 43
    array-length v3, p2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p2, v0

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    const-string v5, "/"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->morbidityOptions:[Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 51
    const-string v0, "CBDS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 52
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->isCombo:Z

    .line 54
    :cond_2
    iget-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->isCombo:Z

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->options:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 59
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-boolean p5, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->isCombo:Z

    invoke-static {p4, p5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object p4

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->options:Ljava/util/List;

    .line 60
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_e

    .line 61
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->options:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 62
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string p4, "-1"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string p4, ""

    const/4 p5, 0x0

    if-nez p3, :cond_d

    .line 63
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 64
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Doctors List"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 67
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->highRiskFormula:[Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 73
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->highRiskFormula:[Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->identifyHighRisk([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget v1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_RED:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p3

    .line 83
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->hiddenView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->nextView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p3, :cond_a

    .line 90
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v1

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 92
    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_6

    const/16 v3, 0x925

    .line 94
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->hiddenView:Landroid/view/View;

    .line 96
    :cond_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->hiddenView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Hidden View found ......"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->hiddenView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 100
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Hidden View Not found ......"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_8
    :goto_2
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->nextView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_9
    :goto_3
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 112
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_9

    .line 114
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 122
    :cond_a
    iget-boolean p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->isMorbidityQuestion:Z

    if-eqz p3, :cond_f

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->morbidityOptions:[Ljava/lang/String;

    if-eqz p3, :cond_f

    array-length p3, p3

    if-le p3, v0, :cond_f

    const/4 p3, 0x1

    .line 123
    :goto_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->morbidityOptions:[Ljava/lang/String;

    array-length v2, v1

    if-ge p3, v2, :cond_f

    .line 124
    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 125
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->morbidityOptions:[Ljava/lang/String;

    aget-object p3, v1, p3

    invoke-static {p3, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 126
    array-length v1, p3

    if-le v1, v0, :cond_b

    aget-object v1, p3, v0

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 127
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p1, p4}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    check-cast p2, Landroid/widget/TextView;

    aget-object p1, p3, v0

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->getColorForMorbiditySims(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 134
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_4

    .line 141
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1, p5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 142
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->isMorbidityQuestion:Z

    if-eqz p1, :cond_f

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :try_start_1
    check-cast p2, Landroid/widget/TextView;

    sget p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_NORMAL:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 152
    :cond_e
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 154
    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 155
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 156
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setproperty"

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 158
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 159
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 160
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 158
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 162
    :cond_10
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p3

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_6
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
