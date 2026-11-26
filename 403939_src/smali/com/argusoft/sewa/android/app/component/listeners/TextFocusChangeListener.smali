.class public Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;
.super Ljava/lang/Object;
.source "TextFocusChangeListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private context:Landroid/content/Context;

.field private hiddenView:Landroid/view/View;

.field private isMorbiQuestion:Z

.field private nextView:Landroid/view/View;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 33
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

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

    .line 34
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->isMorbiQuestion:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 10

    if-nez p2, :cond_a

    .line 41
    move-object p2, p1

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 42
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Next Question is :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->hiddenView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->nextView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 54
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 59
    invoke-virtual {v2, v1, v3}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v2, 0x925

    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->hiddenView:Landroid/view/View;

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->hiddenView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->nextView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 77
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->hiddenView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->nextView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_8
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->isMorbiQuestion:Z

    if-eqz v0, :cond_9

    .line 95
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->getColorForMorbiditySims(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setTextColor(I)V

    .line 99
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextFocusChangeListener;->context:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_a
    return-void
.end method
