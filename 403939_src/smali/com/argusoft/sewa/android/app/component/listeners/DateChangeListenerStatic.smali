.class public Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;
.super Ljava/lang/Object;
.source "DateChangeListenerStatic.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private dateSet:Ljava/util/Date;

.field private txtDate:Landroid/widget/TextView;

.field private validations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->validations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDateSet()Ljava/util/Date;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->dateSet:Ljava/util/Date;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/16 v0, 0x2711

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->txtDate:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->txtDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 58
    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 59
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->context:Landroid/content/Context;

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

    .line 61
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 62
    new-instance v9, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->context:Landroid/content/Context;

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

    .line 65
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 66
    new-instance v9, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->context:Landroid/content/Context;

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

    .line 68
    :goto_1
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 37
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 38
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->validations:Ljava/util/List;

    invoke-static {p2, p3, p4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 40
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->txtDate:Landroid/widget/TextView;

    const-string p3, "Select date"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->dateSet:Ljava/util/Date;

    .line 42
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->dateSet:Ljava/util/Date;

    .line 45
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->txtDate:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 46
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string p4, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDateSet(Ljava/util/Date;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->dateSet:Ljava/util/Date;

    return-void
.end method
