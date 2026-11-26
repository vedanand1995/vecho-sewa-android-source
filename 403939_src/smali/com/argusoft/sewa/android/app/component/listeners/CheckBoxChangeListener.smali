.class public Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;
.super Ljava/lang/Object;
.source "CheckBoxChangeListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private answerOptionsValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkAllOption:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private highRiskFormula:[Ljava/lang/String;

.field private isMorbidityQuestion:Z

.field private final isMulti:Z

.field private morbidityOptions:[Ljava/lang/String;

.field private noneCheck:Z

.field private noneIndex:I

.field private noneKey:Ljava/lang/String;

.field private optionBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private selectAllCheck:Z

.field private selectAllIndex:I

.field private uncheckedOption:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ZZ)V
    .locals 10

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 47
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMulti:Z

    .line 48
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "morbidityCondition"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iput-boolean v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidityQuestion:Z

    .line 50
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 52
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    .line 53
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 54
    const-string v0, "/"

    invoke-static {v7, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->morbidityOptions:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    .line 61
    :cond_2
    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "No options available"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v4

    if-nez v4, :cond_3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_3
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 71
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 76
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 87
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 88
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 89
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object p2

    .line 90
    const-string p3, "-"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiOptionUncheck"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    array-length v1, v0

    if-le v1, v3, :cond_5

    .line 93
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->uncheckedOption:Ljava/util/List;

    :cond_5
    if-eqz p2, :cond_7

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "multiOptionCheckAll"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 97
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 98
    array-length p2, p1

    if-le p2, v3, :cond_7

    .line 99
    array-length p2, p1

    sub-int/2addr p2, v3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 104
    invoke-direct {p0, p3, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->singleCheckChange(ZLandroid/widget/CompoundButton;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private areAllNonSelectAllOptionsChecked(I)Z
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 325
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-ne v2, p1, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    .line 330
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private collectCheckedOptionKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 347
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 348
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    .line 349
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    .line 353
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findSelectAllOptionIndex()I
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 309
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    .line 310
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private isMorbidity(Ljava/lang/String;)Z
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->morbidityOptions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 286
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 287
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    const-string p1, "-"

    invoke-static {v4, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 289
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 290
    aget-object p1, p1, v0

    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private singleCheckChange(ZLandroid/widget/CompoundButton;)V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 265
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 269
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidityQuestion:Z

    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 272
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->getColorForMorbiditySims(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setTextColor(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string p2, "T"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_1

    .line 279
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string p2, "F"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public changeOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .line 110
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMulti:Z

    if-eqz v0, :cond_15

    .line 111
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_16

    .line 113
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 115
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    const-string v3, ","

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    .line 120
    :cond_0
    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_c

    .line 121
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    if-eqz p2, :cond_13

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 122
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->uncheckedOption:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 123
    iput-boolean v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneCheck:Z

    .line 124
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneKey:Ljava/lang/String;

    .line 125
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneIndex:I

    .line 126
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 127
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    .line 128
    :goto_0
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p2, v6, :cond_2

    if-eq p2, v0, :cond_1

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 131
    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    sget v7, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_NORMAL:I

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidityQuestion:Z

    if-eqz p1, :cond_13

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 139
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 141
    :cond_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 143
    iput-boolean v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllCheck:Z

    .line 144
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllIndex:I

    .line 145
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 147
    iget-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneCheck:Z

    if-eqz p2, :cond_4

    .line 148
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneCheck:Z

    .line 149
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p2, :cond_4

    .line 150
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {p2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v5, p2, :cond_6

    if-eq v5, v0, :cond_5

    .line 156
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p2, :cond_5

    .line 157
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 158
    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 162
    :cond_6
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->collectCheckedOptionKeys()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    goto/16 :goto_4

    .line 164
    :cond_7
    iget-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneCheck:Z

    if-eqz p2, :cond_8

    .line 165
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneKey:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneCheck:Z

    .line 167
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 168
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->noneIndex:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 169
    invoke-virtual {p2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    :cond_8
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->extractHighRiskFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->highRiskFormula:[Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 174
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 175
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->highRiskFormula:[Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2, v0, v5}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->identifyHighRisk([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 176
    sget p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_RED:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 179
    :cond_9
    iget-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidityQuestion:Z

    if-eqz p2, :cond_b

    .line 180
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidity(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 181
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_GREEN:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setTextColor(I)V

    goto :goto_2

    .line 184
    :cond_a
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 185
    sget p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_NORMAL:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 188
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllCheck:Z

    if-nez p1, :cond_13

    .line 189
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->findSelectAllOptionIndex()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_13

    .line 190
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->areAllNonSelectAllOptionsChecked(I)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 191
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p2, :cond_13

    .line 193
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 194
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllIndex:I

    .line 195
    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 202
    :cond_c
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->checkAllOption:Ljava/util/List;

    if-eqz p2, :cond_10

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 204
    sget p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_NORMAL:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 205
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllCheck:Z

    if-eqz p1, :cond_f

    .line 206
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllCheck:Z

    .line 207
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    .line 208
    :goto_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->optionBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_e

    if-eq p2, v0, :cond_d

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_d

    .line 211
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 212
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 216
    :cond_e
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidityQuestion:Z

    if-eqz p1, :cond_f

    .line 217
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 218
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_f
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->collectCheckedOptionKeys()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    goto :goto_4

    .line 223
    :cond_10
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    iget-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidityQuestion:Z

    if-eqz p2, :cond_11

    .line 225
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_11
    sget p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_NORMAL:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 229
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllCheck:Z

    if-eqz p1, :cond_13

    .line 230
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllCheck:Z

    .line 231
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 232
    iget p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->selectAllIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_12

    .line 233
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 234
    invoke-virtual {p1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    :cond_12
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->collectCheckedOptionKeys()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    .line 240
    :cond_13
    :goto_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answer:Ljava/util/List;

    invoke-static {p2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 241
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->isMorbidityQuestion:Z

    if-eqz p1, :cond_16

    .line 242
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    .line 243
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->answerOptionsValue:Ljava/util/List;

    .line 244
    invoke-static {p2, v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 245
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {p1, p2, v0}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 247
    :cond_14
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 253
    :cond_15
    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->singleCheckChange(ZLandroid/widget/CompoundButton;)V

    :cond_16
    :goto_5
    return-void
.end method
