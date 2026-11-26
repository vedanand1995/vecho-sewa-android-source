.class Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SearchComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/SearchComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateComponent"
.end annotation


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final context:Landroid/content/Context;

.field private final hint:Ljava/lang/String;

.field private selectedDate:Ljava/util/Date;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/SearchComponent;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->this$0:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    .line 472
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->selectedDate:Ljava/util/Date;

    .line 473
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->context:Landroid/content/Context;

    .line 474
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->hint:Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->initView()V

    return-void
.end method

.method private getDateComponentClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 497
    new-instance v0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;)V

    return-object v0
.end method

.method private initView()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->hint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 483
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setFocusable(Z)V

    const/4 v1, 0x1

    .line 484
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setEnabled(Z)V

    const/4 v1, 0x4

    .line 485
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setInputType(I)V

    .line 486
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->line_background_bottom:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 489
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 490
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 491
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 493
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->getDateComponentClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDate()V
    .locals 3

    .line 519
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 520
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 3

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->selectedDate:Ljava/util/Date;

    .line 529
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->hint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->setHint(Ljava/lang/CharSequence;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

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

    .line 524
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->selectedDate:Ljava/util/Date;

    return-object v0
.end method

.method synthetic lambda$getDateComponentClickListener$0$com-argusoft-sewa-android-app-component-SearchComponent$DateComponent(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 499
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 500
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 501
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 502
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->selectedDate:Ljava/util/Date;

    .line 503
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->updateDate()V

    .line 504
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->this$0:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->access$000(Lcom/argusoft/sewa/android/app/component/SearchComponent;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->this$0:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->access$000(Lcom/argusoft/sewa/android/app/component/SearchComponent;)Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDateComponentClickListener$1$com-argusoft-sewa-android-app-component-SearchComponent$DateComponent(Landroid/view/View;)V
    .locals 6

    .line 498
    new-instance v2, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;)V

    .line 509
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    .line 510
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    .line 511
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$DateComponent;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 512
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 513
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 514
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
