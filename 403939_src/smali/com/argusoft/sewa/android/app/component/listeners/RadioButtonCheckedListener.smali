.class public Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;
.super Ljava/lang/Object;
.source "RadioButtonCheckedListener.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private hiddenView:Landroid/view/View;

.field private isMorbiQuestion:Z

.field private nextView:Landroid/view/View;

.field private final options:Ljava/util/List;
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
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 39
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->options:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "morbidityCondition"

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->isMorbiQuestion:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 49
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->options:Ljava/util/List;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 50
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->options:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 51
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v1

    const/16 v2, 0x270d

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v1

    const v2, 0x18689

    if-ne v1, v2, :cond_2

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 56
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->hiddenView:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->nextView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 66
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    .line 68
    invoke-virtual {v3, v4, v2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v4, 0x925

    .line 70
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->hiddenView:Landroid/view/View;

    .line 72
    :cond_5
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->hiddenView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hidden View found ......"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->hiddenView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hidden View Not found ......"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->nextView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 81
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_8
    :goto_2
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 88
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_8

    .line 90
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 98
    :cond_9
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->isMorbiQuestion:Z

    if-eqz v1, :cond_f

    .line 99
    :goto_3
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 100
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_a

    .line 102
    sget v3, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_NORMAL:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 106
    :cond_b
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "T"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_d

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "F"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    .line 111
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 112
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 113
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-static/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 107
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 108
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 109
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 107
    invoke-static/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 115
    const-string p2, "M"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 116
    sget p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_GREEN:I

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_6

    .line 120
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 123
    :cond_f
    :goto_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 124
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

    .line 125
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 126
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 127
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    .line 126
    invoke-static {p2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 127
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 129
    :cond_10
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 130
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    .line 129
    invoke-static {p2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_7
    return-void
.end method
