.class public Lcom/argusoft/sewa/android/app/component/MyVaccination;
.super Ljava/lang/Object;
.source "MyVaccination.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field private final body:Landroid/widget/LinearLayout;

.field private final context:Landroid/content/Context;

.field private counter:I

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private totalVaccinations:I

.field private final vaccinationView:Landroid/widget/LinearLayout;

.field private vaccinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vaccinationsDoz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 11

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 54
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/UtilBean;->VACCINATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 69
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicVaccinations(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationView:Landroid/widget/LinearLayout;

    .line 70
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    sget v3, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->body:Landroid/widget/LinearLayout;

    .line 73
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 74
    const-string v0, "T"

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    .line 76
    iput v4, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 77
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    .line 78
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    new-instance v10, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    sget-object v6, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NULL:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p1

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/component/MyVaccination;Ljava/lang/String;Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;JLjava/util/List;)V

    .line 80
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getVaccinationView()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    :cond_3
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 86
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    goto :goto_2

    .line 89
    :cond_4
    iput v4, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    .line 90
    iput v5, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 91
    const-string v1, "No vaccines are due"

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_5

    .line 93
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_5
    const-string p1, "F"

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    if-ge p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setAnswer()V
    .locals 11

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 315
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    if-eqz v4, :cond_1

    .line 316
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isValid()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 317
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getAnswerString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 318
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getAnswerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 327
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 328
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 329
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 332
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v7

    const-string v8, "uniqueHealthIdChild"

    if-nez v7, :cond_3

    .line 333
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_2

    .line 335
    :cond_3
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_2
    if-eqz v7, :cond_5

    .line 338
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 339
    const-string v9, "vaccinationMapWithUniqueHealthId"

    invoke-interface {v5, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 341
    new-instance v10, Lcom/argusoft/sewa/android/app/component/MyVaccination$1;

    invoke-direct {v10, p0}, Lcom/argusoft/sewa/android/app/component/MyVaccination$1;-><init>(Lcom/argusoft/sewa/android/app/component/MyVaccination;)V

    .line 342
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/component/MyVaccination$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 341
    invoke-virtual {v8, v5, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    goto :goto_3

    .line 344
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 346
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {v8, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 349
    :cond_5
    const-string v5, "vaccinationGiven"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 351
    :goto_4
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 354
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    add-int/2addr v0, v3

    :goto_5
    iget v3, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    if-ge v0, v3, :cond_7

    .line 355
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 356
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getIsTaken()Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    move-result-object v3

    sget-object v5, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->SKIP:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v1, 0x0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_8

    .line 361
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz v0, :cond_a

    .line 362
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 365
    :cond_8
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz v0, :cond_a

    .line 366
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 370
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz v0, :cond_a

    .line 372
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public getTotalVaccinations()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    return v0
.end method

.method public getVaccinationView()Landroid/widget/LinearLayout;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 164
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 167
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p2, :cond_0

    .line 168
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p2, p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->YES:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setIsTaken(Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;)V

    .line 171
    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setDateOfTaken(J)V

    .line 172
    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->showDatePicker(Z)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    .line 174
    sget-object p2, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NO:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setIsTaken(Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;)V

    .line 175
    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setDateOfTaken(J)V

    const/4 p2, 0x0

    .line 176
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->showDatePicker(Z)V

    .line 177
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->setAnswer()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 186
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 188
    sget v2, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_5

    .line 189
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 191
    :goto_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isValid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 193
    iget v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    iget v5, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_2

    .line 194
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz v2, :cond_0

    .line 195
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {v2, p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    iget v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 198
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 200
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getIsTaken()Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    move-result-object v5

    sget-object v6, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->SKIP:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    .line 204
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    goto :goto_1

    .line 207
    :cond_2
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 208
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_4

    .line 209
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 213
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->setAnswer()V

    goto/16 :goto_5

    :cond_5
    const/16 v2, 0x3a9c

    if-ne p1, v2, :cond_b

    .line 220
    :goto_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    if-lez p1, :cond_9

    .line 221
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_6

    .line 222
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_6
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    if-nez p1, :cond_7

    .line 225
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_7

    .line 226
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_7
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 229
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getIsTaken()Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    move-result-object v2

    sget-object v5, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->SKIP:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 232
    :cond_8
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    if-eqz p1, :cond_a

    .line 234
    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    goto :goto_3

    .line 238
    :cond_9
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_a

    .line 239
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->setAnswer()V

    goto/16 :goto_5

    :cond_b
    const/16 v1, 0x868

    if-ne p1, v1, :cond_f

    .line 247
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getTxtDate()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz p1, :cond_d

    .line 248
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getTxtDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 249
    array-length v0, p1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_c

    .line 250
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object v6, v0

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_4

    .line 252
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 253
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_4

    .line 256
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 257
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 259
    :goto_4
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_5

    .line 262
    :cond_e
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_f

    .line 263
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 264
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .line 275
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 277
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 279
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 280
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setDateOfTaken(J)V

    .line 282
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result p2

    if-nez p2, :cond_0

    .line 283
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 285
    :goto_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 286
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 287
    const-string p4, "currentVaccine"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getDateOfTaken()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p4

    invoke-static {p3, p2, p4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-wide/16 p3, 0x0

    .line 291
    invoke-virtual {p1, p3, p4}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setDateOfTaken(J)V

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_2

    .line 294
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 297
    :cond_1
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setTextDate(Ljava/lang/String;)V

    .line 301
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->setAnswer()V

    :cond_3
    return-void
.end method

.method public reSet(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 103
    sget-object v1, Lcom/argusoft/sewa/android/app/util/UtilBean;->VACCINATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinations:Ljava/util/List;

    .line 106
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 107
    iput v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 108
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->body:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    .line 109
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_3

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v3, "T"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    .line 113
    iput v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 114
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    new-instance v10, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    sget-object v6, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NULL:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/component/MyVaccination;Ljava/lang/String;Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;JLjava/util/List;)V

    .line 121
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->getVaccinationView()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->vaccinationsDoz:Ljava/util/Map;

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 127
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    goto :goto_2

    .line 130
    :cond_3
    iput v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->totalVaccinations:I

    const/4 p1, -0x1

    .line 131
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 132
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->body:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->context:Landroid/content/Context;

    const-string v1, "No vaccines are due"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    if-eqz p1, :cond_4

    .line 134
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->formEngine:Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v0, "F"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public showFirst()V
    .locals 2

    .line 143
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    .line 146
    iput v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccination;->counter:I

    .line 147
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getStatusByCounter(I)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    :cond_0
    return-void
.end method
