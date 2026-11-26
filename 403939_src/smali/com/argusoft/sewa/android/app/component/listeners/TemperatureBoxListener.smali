.class public Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;
.super Ljava/lang/Object;
.source "TemperatureBoxListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private comboDegree:Landroid/widget/Spinner;

.field private comboFloating:Landroid/widget/Spinner;

.field private degree:Ljava/lang/String;

.field private floating:Ljava/lang/String;

.field private inputLayout:Landroid/view/View;

.field private isChecked:Z

.field private isMorbidityQuestion:Z

.field private nextView:Landroid/view/View;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->isChecked:Z

    .line 41
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "morbidityCondition"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->isMorbidityQuestion:Z

    :cond_0
    return-void
.end method

.method private resetComponent()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->comboDegree:Landroid/widget/Spinner;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "-Select-"

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 145
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->comboFloating:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 154
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void
.end method

.method private setAnswer()V
    .locals 10

    .line 91
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->isChecked:Z

    const-string v1, ""

    const-string v2, "-Select-"

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "T"

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "F-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->isMorbidityQuestion:Z

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v3

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "Measure axillary temperature"

    invoke-static/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->getColorForMorbiditySims(Ljava/lang/String;)I

    move-result v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->comboDegree:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->comboFloating:Landroid/widget/Spinner;

    if-eqz v1, :cond_4

    .line 116
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Next Question is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->nextView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 129
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_5
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->nextView:Landroid/view/View;

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->nextView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 48
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->isChecked:Z

    .line 49
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->inputLayout:Landroid/view/View;

    if-nez p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x271e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->inputLayout:Landroid/view/View;

    .line 52
    :cond_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->isChecked:Z

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->inputLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->resetComponent()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->inputLayout:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->setAnswer()V

    return-void
.end method

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

    .line 63
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p2

    const/16 p3, 0x271f

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    .line 66
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->comboDegree:Landroid/widget/Spinner;

    .line 67
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->degree:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 p3, 0x2720

    if-ne p2, p3, :cond_1

    .line 74
    :try_start_1
    move-object p2, p1

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->comboFloating:Landroid/widget/Spinner;

    .line 75
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->floating:Ljava/lang/String;

    .line 81
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;->setAnswer()V

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
