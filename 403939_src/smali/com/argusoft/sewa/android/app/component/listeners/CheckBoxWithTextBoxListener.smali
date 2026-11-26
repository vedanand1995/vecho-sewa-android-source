.class public Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;
.super Ljava/lang/Object;
.source "CheckBoxWithTextBoxListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private answer:Ljava/lang/String;

.field private inputLayout:Landroid/widget/LinearLayout;

.field private inputTextEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputTextView:Lcom/google/android/material/textfield/TextInputLayout;

.field private isChecked:Z

.field private isMorbidityQuestion:Z

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 32
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->isChecked:Z

    .line 34
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "morbidityCondition"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->isMorbidityQuestion:Z

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v0, 0x271c

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputLayout:Landroid/widget/LinearLayout;

    :cond_1
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    return-void
.end method

.method private setAnswer()V
    .locals 8

    .line 71
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->isChecked:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "T"

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "F/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 85
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->isMorbidityQuestion:Z

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->getColorForMorbiditySims(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v1, 0x271c

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputLayout:Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 50
    :cond_0
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->isChecked:Z

    if-eqz p2, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->reset()V

    .line 53
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->setAnswer()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 62
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez p2, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->inputTextEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->answer:Ljava/lang/String;

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;->setAnswer()V

    return-void
.end method
