.class public Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;
.super Ljava/lang/Object;
.source "TextChangeListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private beforeLength:I

.field private editText:Landroid/widget/EditText;

.field private highRiskFormula:[Ljava/lang/String;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->highRiskFormula:[Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    .line 30
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->beforeLength:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->beforeLength:I

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 44
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->extractHighRiskFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->highRiskFormula:[Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->highRiskFormula:[Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 50
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->highRiskFormula:[Ljava/lang/String;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->identifyHighRisk([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    sget p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_RED:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->beforeLength:I

    if-le p2, p3, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x4

    if-le p2, p3, :cond_5

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, ""

    const-string v0, "-"

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p4, 0x0

    const/4 v1, 0x4

    .line 61
    :goto_0
    div-int/lit8 v2, p1, 0x4

    if-ge p4, v2, :cond_3

    .line 62
    invoke-virtual {p2, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .line 47
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TextChangeListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
