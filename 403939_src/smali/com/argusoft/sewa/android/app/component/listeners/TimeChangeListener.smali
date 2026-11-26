.class public Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;
.super Ljava/lang/Object;
.source "TimeChangeListener.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private txtDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 30
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const/16 v0, 0x2711

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "Select time"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 88
    new-instance p1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->context:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Landroid/app/TimePickerDialog;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7

    .line 36
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    const-string v0, ":"

    if-eqz p1, :cond_0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFormattedTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFormattedTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_8

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 48
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v1

    .line 50
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 51
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 54
    :goto_1
    invoke-static {p1, v3, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 56
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 57
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 60
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFormattedTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFormattedTime(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v4

    aput-object p3, v0, v1

    const-string p2, "%s:%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-nez v3, :cond_4

    .line 63
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 65
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 68
    :cond_5
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->txtDate:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 70
    const-string p2, "Select time"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 74
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p1, v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto :goto_3

    .line 76
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    :cond_8
    :goto_3
    return-void
.end method
