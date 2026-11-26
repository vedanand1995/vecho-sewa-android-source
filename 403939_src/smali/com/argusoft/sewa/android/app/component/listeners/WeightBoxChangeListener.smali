.class public Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;
.super Ljava/lang/Object;
.source "WeightBoxChangeListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private comboGram:Landroid/widget/Spinner;

.field private comboKilo:Landroid/widget/Spinner;

.field private final context:Landroid/content/Context;

.field private date:Ljava/lang/Long;

.field private final dateMandatoryMessage:Ljava/lang/String;

.field private gm:I

.field private isChecked:Z

.field private final isShowDate:Z

.field private kg:I

.field private mainLayout:Landroid/view/View;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private txtDate:Landroid/widget/TextView;

.field private txtKg:Landroid/widget/EditText;

.field private weightMandatoryMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 53
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->isShowDate:Z

    .line 54
    const-string p1, "When was the weight taken?"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->dateMandatoryMessage:Ljava/lang/String;

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    const-wide/16 p1, 0x0

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->isChecked:Z

    return-void
.end method

.method private resetComponent()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->txtKg:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 179
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iput v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->comboKilo:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 183
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 184
    iput v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    iput v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    .line 190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->comboGram:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 192
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 193
    iput v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    iput v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    .line 199
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 200
    const-string v1, "Select date"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    :cond_3
    return-void
.end method

.method private setAnswer()V
    .locals 8

    .line 135
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->isChecked:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "T"

    goto/16 :goto_1

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->isShowDate:Z

    const-string v1, "."

    const-string v2, "0."

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 140
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    const-string v4, "/"

    if-eq v0, v3, :cond_2

    .line 141
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    if-eq v0, v3, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 146
    :cond_2
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    if-eq v0, v3, :cond_3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->weightMandatoryMessage:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 149
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->weightMandatoryMessage:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 153
    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    if-ne v1, v3, :cond_5

    .line 154
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->dateMandatoryMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_6
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    if-eq v0, v3, :cond_8

    .line 162
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    if-eq v0, v3, :cond_7

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 165
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_8
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    if-eq v0, v3, :cond_9

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v0, 0x0

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 62
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->isChecked:Z

    .line 63
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->mainLayout:Landroid/view/View;

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x2722

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->mainLayout:Landroid/view/View;

    .line 66
    :cond_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->isChecked:Z

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->mainLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->resetComponent()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->mainLayout:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->setAnswer()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v0, 0x2711

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->txtDate:Landroid/widget/TextView;

    .line 115
    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->datePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setSelection(Ljava/lang/Object;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->build()Lcom/google/android/material/datepicker/MaterialDatePicker;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->context:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "My Date Picker"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 78
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->txtKg:Landroid/widget/EditText;

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, -0x1

    .line 82
    :try_start_1
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->setAnswer()V

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->setAnswer()V

    .line 85
    throw p1

    :cond_0
    :goto_2
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

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p2

    const/16 p4, 0x2724

    if-ne p2, p4, :cond_0

    add-int/lit8 p2, p3, -0x1

    .line 93
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    .line 94
    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->comboGram:Landroid/widget/Spinner;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p2

    const/16 p4, 0x2723

    if-ne p2, p4, :cond_1

    add-int/lit8 p2, p3, -0x1

    .line 96
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->kg:I

    .line 97
    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->comboKilo:Landroid/widget/Spinner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    add-int/lit8 p3, p3, -0x1

    .line 100
    iput p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->gm:I

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->setAnswer()V

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

.method public onPositiveButtonClick(Ljava/lang/Long;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->date:Ljava/lang/Long;

    .line 130
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->setAnswer()V

    return-void
.end method

.method public bridge synthetic onPositiveButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;->onPositiveButtonClick(Ljava/lang/Long;)V

    return-void
.end method
