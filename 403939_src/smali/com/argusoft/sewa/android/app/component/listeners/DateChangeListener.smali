.class public Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;
.super Ljava/lang/Object;
.source "DateChangeListener.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private txtDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 36
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/16 v0, 0x2711

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 149
    new-instance v10, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, v0, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, v10

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance v10, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, v10

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 154
    :cond_1
    new-instance v10, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, v10

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 164
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 169
    const-string v3, "PastDate"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v7, 0x1

    .line 172
    :cond_4
    const-string v3, "isNotToday"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    if-eqz v7, :cond_8

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v1, :cond_7

    .line 182
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 184
    :cond_7
    invoke-virtual {v10}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_2

    .line 186
    :cond_8
    invoke-virtual {v10}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 188
    :goto_2
    invoke-virtual {v10}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 44
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    const-string p3, "dd/MM/yyyy"

    if-eqz p2, :cond_0

    .line 45
    new-instance p4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p4, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is set to : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ACTIVE_CTBA_QUESTION_ID:Ljava/lang/Integer;

    const-string p4, "Select date"

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ACTIVE_CTBA_QUESTION_ID:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 50
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p3

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result p3

    if-nez p3, :cond_1

    .line 51
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>()V

    .line 56
    const-string v1, "isDateIn-Sub-110-0-0"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->setMethod(Ljava/lang/String;)V

    .line 57
    const-string v1, "Date of birth can\u2019t be before 110 years"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->setMessage(Ljava/lang/String;)V

    .line 58
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const-string v1, "CFHC"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>()V

    .line 62
    const-string v2, "dobMaritalStatusValidation-defaultMaritalStatus"

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->setMethod(Ljava/lang/String;)V

    .line 63
    const-string v2, "Age can\u2019t be less than 15 as per marital status"

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->setMessage(Ljava/lang/String;)V

    .line 64
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p3

    .line 67
    const-string v0, "dobAsPerAadhaar"

    if-eqz p3, :cond_4

    .line 68
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 70
    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_3
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 75
    :cond_4
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    if-eqz p3, :cond_5

    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 76
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p4, "dob"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p4, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_5
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 82
    :cond_6
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 85
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_11

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 89
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v3

    if-nez v3, :cond_8

    .line 92
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    .line 95
    :goto_1
    invoke-static {p1, v3, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    if-nez v3, :cond_c

    .line 100
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 102
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 103
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 104
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 106
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 110
    :cond_a
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 112
    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 117
    :cond_c
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 119
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 120
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 121
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 123
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 127
    :cond_e
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->context:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    .line 129
    invoke-static {p4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 134
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto :goto_3

    .line 136
    :cond_10
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    :cond_11
    :goto_3
    return-void
.end method
