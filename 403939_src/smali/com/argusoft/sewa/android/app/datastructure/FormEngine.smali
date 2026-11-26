.class public Lcom/argusoft/sewa/android/app/datastructure/FormEngine;
.super Ljava/lang/Object;
.source "FormEngine.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static firstPageNo:I = 0x1

.field private static next:I


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

.field private formType:Ljava/lang/String;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

.field private isVaccinationsPage:Z

.field private nextButton:Landroid/widget/Button;

.field private scrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->isVaccinationsPage:Z

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->formType:Ljava/lang/String;

    .line 54
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->context:Landroid/content/Context;

    .line 55
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    .line 57
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-static {p2, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->globalPanel:Landroid/widget/LinearLayout;

    .line 58
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    .line 59
    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 61
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_SCROLL:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 62
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->initializeFormComponent()V

    const/4 p2, 0x1

    .line 66
    sput p2, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->firstPageNo:I

    .line 67
    sput v0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->next:I

    .line 69
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    if-eqz p2, :cond_2

    .line 70
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    sget p2, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->firstPageNo:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz p1, :cond_1

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 78
    :cond_0
    sget p1, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->next:I

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    sget p2, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->next:I

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setFirstQuestionId(I)V

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    .line 82
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageNo()I

    move-result p1

    sput p1, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->firstPageNo:I

    goto :goto_0

    .line 89
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "First Page is : \n "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Page Map is null "

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Xls sheet not downloaded yet. Please login again...."

    .line 93
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x14

    .line 92
    invoke-static {p1, v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setButtonDynamicText()V

    return-void
.end method

.method public static generateForm(Landroid/content/Context;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/datastructure/FormEngine;
    .locals 1

    .line 103
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private initializeFormComponent()V
    .locals 4

    .line 108
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator;->generateQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isValidPage(Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;)Z
    .locals 9

    .line 279
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getFirstQuestionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    const-string v2, "SVM"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->videoShownMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getFirstQuestionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const-string v0, "\u0ab2\u0abe\u0aad\u0abe\u0ab0\u0acd\u0aa5\u0ac0\u0aa8\u0ac7 \u0ab5\u0abf\u0aa1\u0abf\u0a93 \u0aac\u0aa4\u0abe\u0a93"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setValidationMessage(Ljava/lang/String;)V

    return v1

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getFirstQuestionId()I

    move-result v0

    .line 289
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setLastQuestionId(I)V

    .line 290
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getListOfQuestion()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 292
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_f

    .line 293
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 294
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setLastQuestionId(I)V

    if-eqz v3, :cond_d

    .line 296
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v0

    const-string v6, "F"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 297
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v0

    const-string v6, "null"

    const-string v7, "T"

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 299
    :cond_1
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    :cond_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_3
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setValidationMessage(Ljava/lang/String;)V

    return v1

    .line 308
    :cond_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->hasUnselectedText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    const-string v0, "You can\'t enter a school name that isn\'t registered in the system - please pick one from the list"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setValidationMessage(Ljava/lang/String;)V

    return v1

    .line 317
    :cond_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 318
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_d

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 321
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 322
    const-string v8, "RBD"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "SRBD"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 323
    const-string v8, "TBWA"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v6, "-"

    invoke-static {v0, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 325
    array-length v6, v0

    if-lez v6, :cond_a

    .line 326
    aget-object v4, v0, v1

    goto :goto_2

    .line 330
    :cond_7
    const-string v8, "CTB"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 331
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 334
    :cond_8
    const-string v4, "/"

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 335
    array-length v6, v4

    if-le v6, v5, :cond_9

    .line 336
    aget-object v4, v4, v5

    goto :goto_2

    :cond_9
    move-object v4, v0

    .line 340
    :cond_a
    :goto_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v6

    if-nez v6, :cond_b

    .line 343
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v6

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    .line 345
    :goto_3
    invoke-static {v4, v6, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 347
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setValidationMessage(Ljava/lang/String;)V

    return v1

    .line 351
    :cond_c
    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    :cond_d
    if-eqz v3, :cond_e

    .line 355
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getNext(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result v0

    goto/16 :goto_0

    :cond_e
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 360
    :cond_f
    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setValidationMessage(Ljava/lang/String;)V

    return v5

    .line 363
    :cond_10
    const-string v0, "No question found"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setValidationMessage(Ljava/lang/String;)V

    return v1
.end method

.method private navigateToPreviousPage()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPrePage()Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    const/high16 v1, 0x20000

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPrePage()Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    check-cast v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private setButtonDynamicText()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getFirstQuestionId()I

    move-result v0

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static setNext(I)V
    .locals 0

    .line 99
    sput p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->next:I

    return-void
.end method


# virtual methods
.method public backButtonClicked()V
    .locals 2

    .line 391
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x3a9c

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 393
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->isVaccinationsPage:Z

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public getPageView()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->globalPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public navigateToNextPage()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v0, :cond_b

    .line 206
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    const/high16 v1, 0x20000

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    const/4 v1, 0x1

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 211
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->isValidPage(Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 216
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->reapplySkipCustomLocationAgeRange()V

    .line 217
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextPageId()I

    move-result v3

    if-lez v3, :cond_3

    .line 219
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v1, :cond_2

    :goto_0
    if-eqz v1, :cond_1

    .line 222
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isIsFirst()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 228
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->next:I

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_c

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setNextPage(Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;)V

    .line 238
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    goto/16 :goto_2

    .line 241
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_3
    if-gez v3, :cond_8

    .line 244
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Okay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    sget v0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->firstPageNo:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->formType:Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateAnswerString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    check-cast v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v2, v0, v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onFormFillFinish(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    sget v0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->firstPageNo:I

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->formType:Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateAnswerString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    check-cast v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onFormFillFinish(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    check-cast v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onBackPressed()V

    goto/16 :goto_2

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Save Form"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    sget v0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->firstPageNo:I

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->formType:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateAnswerString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    check-cast v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->storeOpdLabTestForm(Ljava/lang/String;)V

    goto :goto_2

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    const-string v1, "No more next page available"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 263
    :cond_8
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->firstPageNo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v0, :cond_9

    .line 265
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getPageLayout(ZI)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_2

    .line 270
    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getValidationMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    check-cast v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onBackPressed()V

    :cond_c
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x3a9c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->navigateToPreviousPage()V

    .line 132
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isIsVaccinations()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getTotalVaccinations()I

    move-result p1

    if-lez p1, :cond_8

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_8

    .line 148
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gpsEnabledForms:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->formType:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 149
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 150
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/PointInPolygon;->coordinateInsidePolygon()Z

    move-result p1

    if-nez p1, :cond_4

    .line 153
    const-string p1, "You are filling this form from a region out of your area of intervention. Please be present in your AOI to fill the form."

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->showAlertAndExit(Ljava/lang/String;Landroid/content/Context;)V

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->navigateToNextPage()V

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isIsVaccinations()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getTotalVaccinations()I

    move-result p1

    if-lez p1, :cond_8

    .line 159
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->showFirst()V

    .line 160
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 163
    :cond_5
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 168
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->navigateToNextPage()V

    .line 170
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->isIsVaccinations()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 171
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->getTotalVaccinations()I

    move-result p1

    if-lez p1, :cond_8

    .line 172
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyVaccination;->showFirst()V

    .line 173
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->currentPage:Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getMyVaccination()Lcom/argusoft/sewa/android/app/component/MyVaccination;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 176
    :cond_7
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setNextListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->setButtonDynamicText()V

    .line 183
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->context:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public setBackListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 401
    :goto_0
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->isVaccinationsPage:Z

    return-void
.end method

.method public setNextListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/datastructure/FormEngine;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
