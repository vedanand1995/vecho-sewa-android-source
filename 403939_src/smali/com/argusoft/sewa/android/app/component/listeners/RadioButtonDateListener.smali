.class public Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;
.super Ljava/lang/Object;
.source "RadioButtonDateListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# static fields
.field public static final DATE_VIEW_ID:I = 0x97


# instance fields
.field private ansDate:J

.field private ansRadio:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private datePickerView:Landroid/view/View;

.field private final mandatoryMsg:[Ljava/lang/String;

.field private final optionsOrDatamap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private txtDate:Lcom/google/android/material/textview/MaterialTextView;

.field private final validations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p1, 0x0

    .line 52
    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->optionsOrDatamap:Ljava/util/List;

    .line 54
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 57
    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 58
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_1
    const-string p1, "Value is Required"

    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    .line 66
    :goto_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->validations:Ljava/util/List;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->validations:Ljava/util/List;

    .line 72
    :goto_1
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 73
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x97

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->datePickerView:Landroid/view/View;

    :cond_3
    return-void
.end method

.method private isValid()Ljava/lang/String;
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansRadio:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansRadio:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansRadio:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->optionsOrDatamap:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansDate:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    aget-object v0, v0, v2

    return-object v0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->mandatoryMsg:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0
.end method

.method private setAnswer()V
    .locals 6

    .line 162
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->isValid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansRadio:Ljava/lang/String;

    .line 165
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansDate:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Answer is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDate(J)V
    .locals 4

    .line 177
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansDate:J

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->txtDate:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 180
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p2, Ljava/util/Date;

    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansDate:J

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_0
    const-string p1, "Select date"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDatePicker(Z)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->datePickerView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 190
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 192
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->datePickerView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x97

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->datePickerView:Landroid/view/View;

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->optionsOrDatamap:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansRadio:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->optionsOrDatamap:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    if-nez p2, :cond_2

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->setDate(J)V

    const/4 p1, 0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->showDatePicker(Z)V

    goto :goto_1

    .line 97
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->setDate(J)V

    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->showDatePicker(Z)V

    .line 100
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->setAnswer()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x868

    if-ne v0, v1, :cond_2

    const/16 v0, 0x2711

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->txtDate:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 112
    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 113
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->context:Landroid/content/Context;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_1

    .line 115
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 116
    new-instance v9, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object v3, v9

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 120
    new-instance v9, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object v3, v9

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    :goto_0
    move-object v0, v9

    .line 122
    :goto_1
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    :cond_2
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 130
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 131
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->setDate(J)V

    .line 135
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result p3

    if-nez p3, :cond_0

    .line 136
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 138
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->ansRadio:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->validations:Ljava/util/List;

    invoke-static {p4, p3, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->setDate(J)V

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->setDate(J)V

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->context:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;->setAnswer()V

    return-void
.end method
