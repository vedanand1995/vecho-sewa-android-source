.class public Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "IncentiveDateComponent.java"


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final context:Landroid/content/Context;

.field private final hint:Ljava/lang/String;

.field private selectedDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->selectedDate:Ljava/util/Date;

    .line 34
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->hint:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->selectedDate:Ljava/util/Date;

    .line 42
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->hint:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->selectedDate:Ljava/util/Date;

    .line 27
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->hint:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->initView()V

    return-void
.end method

.method private getDateComponentClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 67
    new-instance v0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;)V

    return-object v0
.end method

.method private initView()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->hint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setFocusable(Z)V

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setEnabled(Z)V

    const/4 v1, 0x4

    .line 55
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setInputType(I)V

    .line 56
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->line_background_bottom:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 60
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 61
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 63
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->getDateComponentClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDate()V
    .locals 3

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 92
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 3

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->selectedDate:Ljava/util/Date;

    .line 101
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->hint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setHint(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public getSelectedDate()Ljava/util/Date;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->selectedDate:Ljava/util/Date;

    return-object v0
.end method

.method synthetic lambda$getDateComponentClickListener$0$com-argusoft-sewa-android-app-component-IncentiveDateComponent(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 72
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->selectedDate:Ljava/util/Date;

    .line 73
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->updateDate()V

    return-void
.end method

.method synthetic lambda$getDateComponentClickListener$1$com-argusoft-sewa-android-app-component-IncentiveDateComponent(Landroid/view/View;)V
    .locals 8

    .line 68
    new-instance v2, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;)V

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 77
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x5

    const/4 v3, 0x1

    .line 78
    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 80
    new-instance v6, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    .line 81
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    .line 82
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->calendar:Ljava/util/Calendar;

    .line 83
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v0, v6

    move-object v1, v4

    move v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 84
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 85
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 86
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
