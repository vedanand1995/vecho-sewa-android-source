.class public Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;
.super Ljava/lang/Object;
.source "AgeBoxChangeListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private calculatedDate:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private day:I

.field private month:I

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private textDate:Landroid/widget/TextView;

.field private year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->year:I

    .line 36
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->month:I

    .line 37
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->day:I

    .line 38
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDurationLabel(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->calculatedDate:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setAnswer()V
    .locals 6

    .line 96
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->year:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->month:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->day:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->textDate:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->calculatedDate:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->textDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->calculatedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->textDate:Landroid/widget/TextView;

    const-string v1, "Year/month not yet entered"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 97
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->year:I

    if-eq v3, v2, :cond_3

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->year:I

    mul-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 103
    :cond_3
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->month:I

    const/16 v4, 0xb

    if-eq v3, v2, :cond_6

    if-ltz v3, :cond_5

    if-le v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    mul-int/lit8 v3, v3, -0x1

    .line 109
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 105
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Months should be between 0 to 11"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_6
    :goto_2
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->day:I

    if-eq v3, v2, :cond_9

    if-ltz v3, :cond_8

    const/16 v5, 0x1e

    if-le v3, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x7

    mul-int/lit8 v3, v3, -0x1

    .line 118
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 114
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Days should be between 0 to 30"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_4
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 121
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 125
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The Age in year/month/day wise : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->textDate:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 129
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->textDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_5
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 50
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    if-nez p2, :cond_2

    .line 52
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result p2

    const/16 v1, 0x272f

    const/4 v2, -0x1

    .line 53
    const-string v3, ""

    if-ne p2, v1, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->year:I

    .line 56
    const-string p2, "Enter Year"

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 58
    :catch_0
    :try_start_1
    const-string p2, "Enter valid Year"

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Enter valid years"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    iput v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->year:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V

    .line 64
    throw p1

    :cond_0
    const/16 v1, 0x2730

    if-ne p2, v1, :cond_1

    .line 67
    :try_start_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->month:I

    .line 68
    const-string p2, "Enter Month"

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 71
    :catch_1
    :try_start_3
    const-string p2, "Enter valid Month"

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Enter valid months"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    iput v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->month:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 76
    :goto_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V

    .line 77
    throw p1

    :cond_1
    const/16 v1, 0x2731

    if-ne p2, v1, :cond_2

    .line 80
    :try_start_4
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->day:I

    .line 81
    const-string p2, "Enter Day"

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 82
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 89
    :goto_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_5

    .line 84
    :catch_2
    :try_start_5
    const-string p2, "Enter valid Day"

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Enter valid days"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iput v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->day:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 89
    :goto_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setAnswer()V

    .line 90
    throw p1

    :cond_2
    :goto_6
    return-void
.end method

.method public setTextDate(Landroid/widget/TextView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->textDate:Landroid/widget/TextView;

    return-void
.end method
