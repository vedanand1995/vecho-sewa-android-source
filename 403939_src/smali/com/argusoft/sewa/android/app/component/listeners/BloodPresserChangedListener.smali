.class public Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;
.super Ljava/lang/Object;
.source "BloodPresserChangedListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DIA_MAX:I = 0x96

.field private static final DIA_MIN:I = 0x28

.field private static final SYSTOLIC_DIASTOLIC_CONSTRAINT:Ljava/lang/String; = "Systolic BP cannot be lower then diastolic BP"

.field private static final SYS_MAX:I = 0x12c

.field private static final SYS_MIN:I = 0x3c

.field private static final VALID_MSG_DIA:Ljava/lang/String; = "Diastolic BP should be between 40 and 150"

.field private static final VALID_MSG_SYS:Ljava/lang/String; = "Systolic BP should be between 60 and 300"


# instance fields
.field private final bloodPresser:[I

.field private final context:Landroid/content/Context;

.field private diaEditText:Landroid/widget/EditText;

.field private highRiskFormula:[Ljava/lang/String;

.field private inputLayout:Landroid/view/View;

.field private isChecked:Z

.field private isMorbidityQuestion:Z

.field private final mandatoryMsg:Ljava/lang/String;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private sysEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->highRiskFormula:[Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 47
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->extractHighRiskFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->highRiskFormula:[Ljava/lang/String;

    .line 48
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->mandatoryMsg:Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x2726

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->inputLayout:Landroid/view/View;

    :cond_0
    const/4 p1, 0x2

    .line 54
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 55
    aput v1, p1, v0

    const/4 v2, 0x1

    .line 56
    aput v1, p1, v2

    .line 57
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isChecked:Z

    .line 58
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "morbidityCondition"

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isMorbidityQuestion:Z

    :cond_1
    return-void
.end method

.method private generateToast(Ljava/lang/String;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isHighRiskDia()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/16 v2, 0x59

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isHighRiskSys()Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0x8b

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNotValidDia()Z
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/16 v2, 0x28

    if-lt v0, v2, :cond_1

    const/16 v2, 0x96

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isNotValidSys()Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12c

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isValid()Z
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eq v0, v3, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isNotValidSys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v2, "Systolic BP should be between 60 and 300"

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return v1

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isNotValidDia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v2, "Diastolic BP should be between 40 and 150"

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return v1

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->systolicDiastolicConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v2, "Systolic BP cannot be lower then diastolic BP"

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return v1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->mandatoryMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return v2

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->mandatoryMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return v1
.end method

.method private reset()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->sysEditText:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isMorbidityQuestion:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->sysEditText:Landroid/widget/EditText;

    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_NORMAL:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Systolic blood pressure"

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->diaEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isMorbidityQuestion:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->diaEditText:Landroid/widget/EditText;

    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_MORBIDITY_NORMAL:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Diastolic blood pressure"

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 180
    aput v2, v0, v1

    .line 181
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->setAnswer()V

    return-void
.end method

.method private setAnswer()V
    .locals 4

    .line 185
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isChecked:Z

    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "F-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private systolicDiastolicConstraint()Z
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->inputLayout:Landroid/view/View;

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x2726

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->inputLayout:Landroid/view/View;

    .line 69
    :cond_0
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isChecked:Z

    if-eqz p2, :cond_2

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->inputLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->reset()V

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->inputLayout:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->setAnswer()V

    :goto_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 11

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2727

    const-string v2, "Systolic BP cannot be lower then diastolic BP"

    const/4 v3, -0x1

    const-string v4, ""

    if-ne v0, v1, :cond_5

    .line 86
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->sysEditText:Landroid/widget/EditText;

    if-nez p2, :cond_b

    const/4 p2, 0x0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, p2

    .line 90
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isNotValidSys()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    const-string p1, "Systolic BP should be between 60 and 300"

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->generateToast(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->systolicDiastolicConstraint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->generateToast(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isMorbidityQuestion:Z

    if-eqz p1, :cond_2

    .line 95
    const-string v5, "Systolic blood pressure"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 96
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 97
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sys"

    const/4 v10, 0x0

    .line 95
    invoke-static/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->sysEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->getColorForMorbiditySims(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->highRiskFormula:[Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 100
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isHighRiskSys()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->sysEditText:Landroid/widget/EditText;

    sget v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_RED:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->sysEditText:Landroid/widget/EditText;

    sget v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_NORMAL:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 108
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    aput v3, p1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->setAnswer()V

    goto/16 :goto_4

    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->setAnswer()V

    .line 111
    throw p1

    .line 113
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2728

    if-ne v0, v1, :cond_b

    .line 114
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->diaEditText:Landroid/widget/EditText;

    if-nez p2, :cond_b

    const/4 p2, 0x1

    .line 117
    :try_start_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, p2

    .line 118
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isNotValidDia()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 119
    const-string p1, "Diastolic BP should be between 40 and 150"

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->generateToast(Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_6
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->systolicDiastolicConstraint()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 121
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->generateToast(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :cond_7
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isMorbidityQuestion:Z

    if-eqz p1, :cond_8

    .line 123
    const-string v5, "Diastolic blood pressure"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubform()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "dia"

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->diaEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->getColorForMorbiditySims(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    .line 125
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->highRiskFormula:[Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 126
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->isHighRiskDia()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 127
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->diaEditText:Landroid/widget/EditText;

    sget v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_RED:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    .line 130
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->diaEditText:Landroid/widget/EditText;

    sget v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->COLOR_NORMAL:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 134
    :catch_1
    :try_start_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->bloodPresser:[I

    aput v3, p1, p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->setAnswer()V

    goto :goto_4

    :goto_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;->setAnswer()V

    .line 137
    throw p1

    :cond_b
    :goto_4
    return-void
.end method
