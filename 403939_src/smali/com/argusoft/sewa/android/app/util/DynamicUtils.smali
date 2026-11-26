.class public Lcom/argusoft/sewa/android/app/util/DynamicUtils;
.super Ljava/lang/Object;
.source "DynamicUtils.java"


# static fields
.field public static final BUTTON_HIDE_LOGOUT:I = -0x98

.field public static final BUTTON_OK:I = -0x69

.field public static final BUTTON_RETRY_CANCEL:I = -0x99

.field public static final BUTTON_YES_NO:I = -0x97

.field public static final HIDDEN_LAYOUT_ID:I = 0x925

.field public static final ID_BACK_BUTTON:I = 0x3a9c

.field public static final ID_BODY_LAYOUT:I

.field public static final ID_BODY_SCROLL:I

.field public static final ID_FOOTER:I

.field public static final ID_NEXT_BUTTON:I

.field public static final ID_OF_CUSTOM_DATE_PICKER:I = 0x868

.field public static final LOGIN_BUTTON_ALERT:I = -0xc8

.field public static final TAG:Ljava/lang/String; = "DynamicUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->bodyScroll:I

    sput v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_SCROLL:I

    .line 65
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->bodyLayoutContainer:I

    sput v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    .line 66
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->nextButton:I

    sput v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    .line 68
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->footerLayout:I

    sput v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyFormula(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V
    .locals 8

    if-eqz p0, :cond_19

    .line 746
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 747
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 749
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicUtils"

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    .line 750
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 751
    array-length v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    .line 752
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "showsmartreferral"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "sethint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v7, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "displayearlyregistration"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "setsubtitlecolor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v7, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "setcolor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v7, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "setimmunisationwpd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "setanswer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v7, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "setprefilledasperrelationwithhof"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "setproperty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v6, "addperiod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v6, "filllocation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v7, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "setpropertyfromscannedaadhar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v6, "setvalueasproperty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v6, "clearscannedaadhardetails"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v6, "setaanganwadiidfromphcid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v6, "updateloopcount"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_1

    :cond_10
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_10
    const-string v6, "resetloopparams"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_1

    :cond_11
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_11
    const-string v6, "gettime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_1

    :cond_12
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_12
    const-string v6, "identifyhighrisk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_1

    :cond_13
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_13
    const-string v6, "displayage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_1

    :cond_14
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_14
    const-string v6, "setdateset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_1

    :cond_15
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_15
    const-string v6, "calculateoutcomedate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_1

    :cond_16
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_16
    const-string v6, "setdefaultproperty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_1

    :cond_17
    const/4 v7, 0x0

    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Formula Not Handled : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 839
    :pswitch_0
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setShowSmartReferral([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    :pswitch_1
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setHint([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 815
    :pswitch_2
    invoke-static {v2, p0, p1}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->displayEarlyRegistration([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto/16 :goto_0

    .line 766
    :pswitch_3
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setSubtitleColor([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 770
    :pswitch_4
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setColor([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 831
    :pswitch_5
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setImmunisationWpd(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 758
    :pswitch_6
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 835
    :pswitch_7
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setPreFilledAsPerRelationWithHOF([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 786
    :pswitch_8
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 754
    :pswitch_9
    invoke-static {v2, p0, p1}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->addPeriod([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto/16 :goto_0

    .line 799
    :pswitch_a
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->fillLocation([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 807
    :pswitch_b
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setPropertyFromScannedAadhar([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 782
    :pswitch_c
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setValueAsProperty(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 827
    :pswitch_d
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->clearScannedAadharDetails([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 811
    :pswitch_e
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setAanganwadiIdFromPhcId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 823
    :pswitch_f
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->updateLoopCount([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 819
    :pswitch_10
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->resetLoopParams()V

    goto/16 :goto_0

    .line 795
    :pswitch_11
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->getTime([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    :pswitch_12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->identifyHighRisk([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 803
    :pswitch_13
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->displayAge([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 774
    :pswitch_14
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setDateSet([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 762
    :pswitch_15
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->calculateOutComeDate(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    goto/16 :goto_0

    .line 790
    :pswitch_16
    invoke-static {v2, p0}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->setDefaultProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 850
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Formula value is null for question : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x714e698c -> :sswitch_16
        -0x6e820126 -> :sswitch_15
        -0x5bf288ae -> :sswitch_14
        -0x36826f03 -> :sswitch_13
        -0x3526b583 -> :sswitch_12
        -0x46bb8dd -> :sswitch_11
        0x12783bb9 -> :sswitch_10
        0x1c83aa42 -> :sswitch_f
        0x1d60bfca -> :sswitch_e
        0x1d9aa2aa -> :sswitch_d
        0x27e38396 -> :sswitch_c
        0x2cf86f04 -> :sswitch_b
        0x2fbf6238 -> :sswitch_a
        0x30b631a2 -> :sswitch_9
        0x37861837 -> :sswitch_8
        0x37ace955 -> :sswitch_7
        0x3ab1aaa0 -> :sswitch_6
        0x44513dc0 -> :sswitch_5
        0x5495e041 -> :sswitch_4
        0x5fb2a529 -> :sswitch_3
        0x62bd471a -> :sswitch_2
        0x765999e9 -> :sswitch_1
        0x7698e089 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static applyFormulaForHiddenQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V
    .locals 12

    if-nez p0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "-"

    const/4 v4, -0x1

    const-string v5, "DynamicUtils"

    const/4 v6, 0x0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 367
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 369
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5c

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5c

    .line 370
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 371
    aget-object v9, v8, v6

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x3

    sparse-switch v10, :sswitch_data_0

    :goto_1
    const/4 v9, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v10, "checkifanychildexisits"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v9, 0x59

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "setgenderbasedonrelationwithhof"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/16 v9, 0x58

    goto/16 :goto_2

    :sswitch_2
    const-string v10, "lessthan"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/16 v9, 0x57

    goto/16 :goto_2

    :sswitch_3
    const-string v10, "setotpbasedverificationcomponent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/16 v9, 0x56

    goto/16 :goto_2

    :sswitch_4
    const-string v10, "urinetest"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/16 v9, 0x55

    goto/16 :goto_2

    :sswitch_5
    const-string v10, "checkmisoprostol"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    const/16 v9, 0x54

    goto/16 :goto_2

    :sswitch_6
    const-string v10, "resetproperty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    const/16 v9, 0x53

    goto/16 :goto_2

    :sswitch_7
    const-string v10, "settrue"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_1

    :cond_9
    const/16 v9, 0x52

    goto/16 :goto_2

    :sswitch_8
    const-string v10, "loopcontains"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_1

    :cond_a
    const/16 v9, 0x51

    goto/16 :goto_2

    :sswitch_9
    const-string v10, "checkloopbakcount"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v9, 0x50

    goto/16 :goto_2

    :sswitch_a
    const-string v10, "checkifanyfemalemarriedmembersexists"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v9, 0x4f

    goto/16 :goto_2

    :sswitch_b
    const-string v10, "showalertifyesinany"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v9, 0x4e

    goto/16 :goto_2

    :sswitch_c
    const-string v10, "checkweight"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0x4d

    goto/16 :goto_2

    :sswitch_d
    const-string v10, "checkcontains"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v9, 0x4c

    goto/16 :goto_2

    :sswitch_e
    const-string v10, "setreverseflag"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v9, 0x4b

    goto/16 :goto_2

    :sswitch_f
    const-string v10, "compareproperties"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v9, 0x4a

    goto/16 :goto_2

    :sswitch_10
    const-string v10, "isdatewithin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v9, 0x49

    goto/16 :goto_2

    :sswitch_11
    const-string v10, "checkstring"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v9, 0x48

    goto/16 :goto_2

    :sswitch_12
    const-string v10, "makeprescriptioncard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v9, 0x47

    goto/16 :goto_2

    :sswitch_13
    const-string v10, "reapplyoptionalifunder18"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v9, 0x46

    goto/16 :goto_2

    :sswitch_14
    const-string v10, "calculatesdscore"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v9, 0x45

    goto/16 :goto_2

    :sswitch_15
    const-string v10, "checkproperty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v9, 0x44

    goto/16 :goto_2

    :sswitch_16
    const-string v10, "checkifbloodgroupisnegative"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v9, 0x43

    goto/16 :goto_2

    :sswitch_17
    const-string v10, "calculaterutfsachets"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v9, 0x42

    goto/16 :goto_2

    :sswitch_18
    const-string v10, "checkifbloodgroupispositive"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v9, 0x41

    goto/16 :goto_2

    :sswitch_19
    const-string v10, "setareaquestionvisibility"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v9, 0x40

    goto/16 :goto_2

    :sswitch_1a
    const-string v10, "checkchiranjeevieligibility"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v9, 0x3f

    goto/16 :goto_2

    :sswitch_1b
    const-string v10, "calculatenutritionscore"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v9, 0x3e

    goto/16 :goto_2

    :sswitch_1c
    const-string v10, "memberscountcheck"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v9, 0x3d

    goto/16 :goto_2

    :sswitch_1d
    const-string v10, "setanswer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v9, 0x3c

    goto/16 :goto_2

    :sswitch_1e
    const-string v10, "iscmamfollowupsproblem"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v9, 0x3b

    goto/16 :goto_2

    :sswitch_1f
    const-string v10, "ismobilenumberverfied"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v9, 0x3a

    goto/16 :goto_2

    :sswitch_20
    const-string v10, "checkifthirdtrimester"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v9, 0x39

    goto/16 :goto_2

    :sswitch_21
    const-string v10, "identifyhighriskwpdchild"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v9, 0x38

    goto/16 :goto_2

    :sswitch_22
    const-string v10, "updatecurrentgravida"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v9, 0x37

    goto/16 :goto_2

    :sswitch_23
    const-string v10, "identifyhighriskadolescent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v9, 0x36

    goto/16 :goto_2

    :sswitch_24
    const-string v10, "checkdatebetween"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v9, 0x35

    goto/16 :goto_2

    :sswitch_25
    const-string v10, "isdatebetween"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v9, 0x34

    goto/16 :goto_2

    :sswitch_26
    const-string v10, "checkanymemberotpverificationdone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    goto/16 :goto_1

    :cond_28
    const/16 v9, 0x33

    goto/16 :goto_2

    :sswitch_27
    const-string v10, "clearscannedaadhardetails"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    goto/16 :goto_1

    :cond_29
    const/16 v9, 0x32

    goto/16 :goto_2

    :sswitch_28
    const-string v10, "date_between"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    goto/16 :goto_1

    :cond_2a
    const/16 v9, 0x31

    goto/16 :goto_2

    :sswitch_29
    const-string v10, "addmotherlist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto/16 :goto_1

    :cond_2b
    const/16 v9, 0x30

    goto/16 :goto_2

    :sswitch_2a
    const-string v10, "checkloop"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    goto/16 :goto_1

    :cond_2c
    const/16 v9, 0x2f

    goto/16 :goto_2

    :sswitch_2b
    const-string v10, "isfemale"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto/16 :goto_1

    :cond_2d
    const/16 v9, 0x2e

    goto/16 :goto_2

    :sswitch_2c
    const-string v10, "checkfamilystate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto/16 :goto_1

    :cond_2e
    const/16 v9, 0x2d

    goto/16 :goto_2

    :sswitch_2d
    const-string v10, "isdatein"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const/16 v9, 0x2c

    goto/16 :goto_2

    :sswitch_2e
    const-string v10, "addalloptioninsubcentrelist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    goto/16 :goto_1

    :cond_30
    const/16 v9, 0x2b

    goto/16 :goto_2

    :sswitch_2f
    const-string v10, "isfamilyheadidentified"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    goto/16 :goto_1

    :cond_31
    const/16 v9, 0x2a

    goto/16 :goto_2

    :sswitch_30
    const-string v10, "checkfamilyreverification"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    goto/16 :goto_1

    :cond_32
    const/16 v9, 0x29

    goto/16 :goto_2

    :sswitch_31
    const-string v10, "checkiflmpisavailable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    goto/16 :goto_1

    :cond_33
    const/16 v9, 0x28

    goto/16 :goto_2

    :sswitch_32
    const-string v10, "checknewfamily"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    goto/16 :goto_1

    :cond_34
    const/16 v9, 0x27

    goto/16 :goto_2

    :sswitch_33
    const-string v10, "calculatecbacscore"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    goto/16 :goto_1

    :cond_35
    const/16 v9, 0x26

    goto/16 :goto_2

    :sswitch_34
    const-string v10, "identifyrisknpcb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    goto/16 :goto_1

    :cond_36
    const/16 v9, 0x25

    goto/16 :goto_2

    :sswitch_35
    const-string v10, "checkagelessthan20"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    goto/16 :goto_1

    :cond_37
    const/16 v9, 0x24

    goto/16 :goto_2

    :sswitch_36
    const-string v10, "identifyhighriskpncchild"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    goto/16 :goto_1

    :cond_38
    const/16 v9, 0x23

    goto/16 :goto_2

    :sswitch_37
    const-string v10, "isdateoutside"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    goto/16 :goto_1

    :cond_39
    const/16 v9, 0x22

    goto/16 :goto_2

    :sswitch_38
    const-string v10, "pncchecktemp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    goto/16 :goto_1

    :cond_3a
    const/16 v9, 0x21

    goto/16 :goto_2

    :sswitch_39
    const-string v10, "comparedate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3b

    goto/16 :goto_1

    :cond_3b
    const/16 v9, 0x20

    goto/16 :goto_2

    :sswitch_3a
    const-string v10, "contactgynecologist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c

    goto/16 :goto_1

    :cond_3c
    const/16 v9, 0x1f

    goto/16 :goto_2

    :sswitch_3b
    const-string v10, "checkcontainsmultiple"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    goto/16 :goto_1

    :cond_3d
    const/16 v9, 0x1e

    goto/16 :goto_2

    :sswitch_3c
    const-string v10, "contains"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    goto/16 :goto_1

    :cond_3e
    const/16 v9, 0x1d

    goto/16 :goto_2

    :sswitch_3d
    const-string v10, "checkreferal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    goto/16 :goto_1

    :cond_3f
    const/16 v9, 0x1c

    goto/16 :goto_2

    :sswitch_3e
    const-string v10, "checkpretermbirth"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    goto/16 :goto_1

    :cond_40
    const/16 v9, 0x1b

    goto/16 :goto_2

    :sswitch_3f
    const-string v10, "checkcontainsloop"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    goto/16 :goto_1

    :cond_41
    const/16 v9, 0x1a

    goto/16 :goto_2

    :sswitch_40
    const-string v10, "isdateout"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_42

    goto/16 :goto_1

    :cond_42
    const/16 v9, 0x19

    goto/16 :goto_2

    :sswitch_41
    const-string v10, "setchildgrowthchartdata"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    goto/16 :goto_1

    :cond_43
    const/16 v9, 0x18

    goto/16 :goto_2

    :sswitch_42
    const-string v10, "identifyhighrisk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_44

    goto/16 :goto_1

    :cond_44
    const/16 v9, 0x17

    goto/16 :goto_2

    :sswitch_43
    const-string v10, "setmobiditylist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    goto/16 :goto_1

    :cond_45
    const/16 v9, 0x16

    goto/16 :goto_2

    :sswitch_44
    const-string v10, "displayage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    goto/16 :goto_1

    :cond_46
    const/16 v9, 0x15

    goto/16 :goto_2

    :sswitch_45
    const-string v10, "getfullname"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    goto/16 :goto_1

    :cond_47
    const/16 v9, 0x14

    goto/16 :goto_2

    :sswitch_46
    const-string v10, "addadditiondischargequestion"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    goto/16 :goto_1

    :cond_48
    const/16 v9, 0x13

    goto/16 :goto_2

    :sswitch_47
    const-string v10, "checkageifwronglyregistered"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    goto/16 :goto_1

    :cond_49
    const/16 v9, 0x12

    goto/16 :goto_2

    :sswitch_48
    const-string v10, "visioncheckformula"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    goto/16 :goto_1

    :cond_4a
    const/16 v9, 0x11

    goto/16 :goto_2

    :sswitch_49
    const-string v10, "identifyhighriskanc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    goto/16 :goto_1

    :cond_4b
    const/16 v9, 0x10

    goto/16 :goto_2

    :sswitch_4a
    const-string v10, "isnull"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    goto/16 :goto_1

    :cond_4c
    const/16 v9, 0xf

    goto/16 :goto_2

    :sswitch_4b
    const-string v10, "comparediseasecount"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    goto/16 :goto_1

    :cond_4d
    const/16 v9, 0xe

    goto/16 :goto_2

    :sswitch_4c
    const-string v10, "differenceinage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    goto/16 :goto_1

    :cond_4e
    const/16 v9, 0xd

    goto/16 :goto_2

    :sswitch_4d
    const-string v10, "checkcontainswithlabel"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4f

    goto/16 :goto_1

    :cond_4f
    const/16 v9, 0xc

    goto/16 :goto_2

    :sswitch_4e
    const-string v10, "ismobilenumberverificationblocked"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    goto/16 :goto_1

    :cond_50
    const/16 v9, 0xb

    goto/16 :goto_2

    :sswitch_4f
    const-string v10, "calculateallsdscore"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51

    goto/16 :goto_1

    :cond_51
    const/16 v9, 0xa

    goto/16 :goto_2

    :sswitch_50
    const-string v10, "checkmemberstate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_52

    goto/16 :goto_1

    :cond_52
    const/16 v9, 0x9

    goto/16 :goto_2

    :sswitch_51
    const-string v10, "setschooltype"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53

    goto/16 :goto_1

    :cond_53
    const/16 v9, 0x8

    goto/16 :goto_2

    :sswitch_52
    const-string v10, "loopcheckagebetween"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    goto/16 :goto_1

    :cond_54
    const/4 v9, 0x7

    goto :goto_2

    :sswitch_53
    const-string v10, "setonsitebeneficiarydisplay"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_55

    goto/16 :goto_1

    :cond_55
    const/4 v9, 0x6

    goto :goto_2

    :sswitch_54
    const-string v10, "checkcontainsanyloop"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_56

    goto/16 :goto_1

    :cond_56
    const/4 v9, 0x5

    goto :goto_2

    :sswitch_55
    const-string v10, "isuseronline"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    goto/16 :goto_1

    :cond_57
    const/4 v9, 0x4

    goto :goto_2

    :sswitch_56
    const-string v10, "appetitetesteligibilitycheck"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_58

    goto/16 :goto_1

    :cond_58
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_57
    const-string v10, "putremainingvaccines"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_59

    goto/16 :goto_1

    :cond_59
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_58
    const-string v10, "displayhighriskdata"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5a

    goto/16 :goto_1

    :cond_5a
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_59
    const-string v10, "identifyhighriskpncmother"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5b

    goto/16 :goto_1

    :cond_5b
    const/4 v9, 0x0

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 682
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Formula for Hidden Question Not Handled : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 544
    :pswitch_0
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkIfAnyChildExisits(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 606
    :pswitch_1
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setDefaultGenderBasedOnRelationWithHOF(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 400
    :pswitch_2
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->lessThan([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 618
    :pswitch_3
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setOTPBasedVerificationComponent(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 373
    :pswitch_4
    array-length v7, v8

    if-le v7, v11, :cond_1

    .line 375
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->urineTest([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 568
    :pswitch_5
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkMisoprostol(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 571
    :pswitch_6
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->resetProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 422
    :pswitch_7
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setTrue([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 458
    :pswitch_8
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->loopContains([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 414
    :pswitch_9
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkLoopBakCount([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 547
    :pswitch_a
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkIfAnyFemaleMarriedMembersExists(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 594
    :pswitch_b
    invoke-static {v8, p0, p1}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->showAlertIfYesInAny([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 452
    :pswitch_c
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkWeight([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 380
    :pswitch_d
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkContains([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 403
    :pswitch_e
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setReverseFlag([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 667
    :pswitch_f
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->compareProperties([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 484
    :pswitch_10
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isDateWithin([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 449
    :pswitch_11
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkString([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 679
    :pswitch_12
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->makePrescriptionCard([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    :pswitch_13
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->reapplyOptionalIfUnder18()V

    goto/16 :goto_0

    .line 585
    :pswitch_14
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateSDScore([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 441
    :pswitch_15
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 384
    :pswitch_16
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkIfBloodGroupNegative([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 631
    :pswitch_17
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateRUTFSachets([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 388
    :pswitch_18
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkIfBloodGroupPositive([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 469
    :pswitch_19
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setAreaQuestionVisibility([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 578
    :pswitch_1a
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkChiranjeeviEligibility(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 664
    :pswitch_1b
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateNutritionScore([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 455
    :pswitch_1c
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->membersCountCheck(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 430
    :pswitch_1d
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setAnswer(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 627
    :pswitch_1e
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isCMAMFollowupsProblem([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 615
    :pswitch_1f
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isMobileNumberVerfied([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 535
    :pswitch_20
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkIfThirdTrimester(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 523
    :pswitch_21
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->identifyHighRiskWpdChild([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 508
    :pswitch_22
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->updateCurrentGravida([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :pswitch_23
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->identifyHighRiskAdolescent([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :pswitch_24
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkDateBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 493
    :pswitch_25
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isDateBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 621
    :pswitch_26
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkAnyMemberOtpVerificationDone(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 481
    :pswitch_27
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->clearScannedAadharDetails([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 437
    :pswitch_28
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->dateBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 562
    :pswitch_29
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->addMotherList(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 411
    :pswitch_2a
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkLoop(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 647
    :pswitch_2b
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkIfIsFemale([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 550
    :pswitch_2c
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkFamilyState([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 498
    :pswitch_2d
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isDateIn([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 478
    :pswitch_2e
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->addAllOptionInSubcentreList(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 602
    :pswitch_2f
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isFamilyHeadIdentified(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 472
    :pswitch_30
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkFamilyReverification(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 529
    :pswitch_31
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkIfLmpIsAvailable(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 556
    :pswitch_32
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkNewFamily(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 565
    :pswitch_33
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateCbacScore()V

    goto/16 :goto_0

    .line 676
    :pswitch_34
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->identifyHighRiskNPCB([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :pswitch_35
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkAgeLessThan20(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 517
    :pswitch_36
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->identifyHighRiskPncChild([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 488
    :pswitch_37
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isDateOutside([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 396
    :pswitch_38
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->pncCheckTemp([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 417
    :pswitch_39
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->compareDate([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 559
    :pswitch_3a
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->contactGynecologist()V

    goto/16 :goto_0

    .line 575
    :pswitch_3b
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkContainsMultiple([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 434
    :pswitch_3c
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->contains([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 661
    :pswitch_3d
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkReferal([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 505
    :pswitch_3e
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkPretermBirth(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 526
    :pswitch_3f
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkContainsLoop([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 502
    :pswitch_40
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isDateOut([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 598
    :pswitch_41
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setChildGrowthChartData([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 643
    :pswitch_42
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8, p0, v7}, Lcom/argusoft/sewa/android/app/util/FormulaUtil;->identifyHighRisk([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 426
    :pswitch_43
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setmobiditylist([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 445
    :pswitch_44
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setAgePerDateSelected([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 655
    :pswitch_45
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->getFullName([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    :pswitch_46
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->addAdditionDischargeQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 538
    :pswitch_47
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkAgeIfWronglyRegistered(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 673
    :pswitch_48
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->visionCheckFormula([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 511
    :pswitch_49
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->identifyHighRiskAnc([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :pswitch_4a
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isNull([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 407
    :pswitch_4b
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->compareDiseaseCount(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 670
    :pswitch_4c
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->differenceInAge([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 392
    :pswitch_4d
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkContainsWithLabel([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 612
    :pswitch_4e
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isMobileNumberVerificationBlocked(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 589
    :pswitch_4f
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->calculateAllSd([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 553
    :pswitch_50
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkMemberState([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 634
    :pswitch_51
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setSchoolType(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 461
    :pswitch_52
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->loopCheckAgeBetween([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 637
    :pswitch_53
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->setOnsiteBeneficiaryDisplay(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 651
    :pswitch_54
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->checkContainsAnyLoop([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 609
    :pswitch_55
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->isUserOnline(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 624
    :pswitch_56
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->appetiteTestEligibilityCheck([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 532
    :pswitch_57
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->putRemainingVaccines([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 658
    :pswitch_58
    invoke-static {v8, p0}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->displayHighRiskData([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    goto/16 :goto_0

    .line 520
    :pswitch_59
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->identifyHighRiskPncMother([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    :cond_5c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Formula Value is NULL for Hidden Question : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    :cond_5d
    invoke-static {p0, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object p1

    .line 691
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5f

    .line 692
    :cond_5e
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getRelatedProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 695
    :cond_5f
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v7

    if-lez v7, :cond_60

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v7

    if-nez v7, :cond_60

    .line 698
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    :cond_60
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 701
    const-string v7, "null"

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_61

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 702
    :cond_61
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    :cond_62
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v8}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    if-eqz v0, :cond_68

    .line 705
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_68

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 706
    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 707
    invoke-interface {p1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v4, :cond_63

    .line 710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 711
    invoke-interface {p1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    :cond_63
    if-eq v7, v4, :cond_67

    .line 714
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 715
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 716
    array-length v3, v0

    if-ne v3, v1, :cond_64

    .line 718
    :try_start_0
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->newBindingForMorbidity:I

    .line 719
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIgnoreNextQueLoop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 721
    :catch_0
    sput v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->newBindingForMorbidity:I

    .line 724
    :cond_64
    :goto_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 725
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setNext(Ljava/lang/String;)V

    .line 726
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Listener Called from formula question : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " next is set to :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_65

    const-string v0, "-1"

    goto :goto_4

    :cond_65
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 726
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 729
    :cond_66
    const-string p0, "Selected option has no next"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 732
    :cond_67
    const-string p0, "No match Key found"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 735
    :cond_68
    const-string p0, "No property in relatedProperty table"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e1c50b5 -> :sswitch_59
        -0x6d9d83a3 -> :sswitch_58
        -0x67ff57db -> :sswitch_57
        -0x67248ac9 -> :sswitch_56
        -0x67108178 -> :sswitch_55
        -0x6607f277 -> :sswitch_54
        -0x63827b3b -> :sswitch_53
        -0x602c81f3 -> :sswitch_52
        -0x6017c570 -> :sswitch_51
        -0x5f6f0fd1 -> :sswitch_50
        -0x5f4569fa -> :sswitch_4f
        -0x5d91bb44 -> :sswitch_4e
        -0x5cdcdd59 -> :sswitch_4d
        -0x5948d963 -> :sswitch_4c
        -0x582f0588 -> :sswitch_4b
        -0x464ad24f -> :sswitch_4a
        -0x439b3dc7 -> :sswitch_49
        -0x43500cba -> :sswitch_48
        -0x413f1dd8 -> :sswitch_47
        -0x3ce63655 -> :sswitch_46
        -0x389e6910 -> :sswitch_45
        -0x36826f03 -> :sswitch_44
        -0x35623ccd -> :sswitch_43
        -0x3526b583 -> :sswitch_42
        -0x3030c299 -> :sswitch_41
        -0x2fbfd78a -> :sswitch_40
        -0x2d8951b5 -> :sswitch_3f
        -0x2873be68 -> :sswitch_3e
        -0x2629455d -> :sswitch_3d
        -0x21d289e1 -> :sswitch_3c
        -0x1fdd9dc9 -> :sswitch_3b
        -0x1add9485 -> :sswitch_3a
        -0x188ccded -> :sswitch_39
        -0x17cbb3a9 -> :sswitch_38
        -0x155f2533 -> :sswitch_37
        -0x14a1b06c -> :sswitch_36
        -0x12b73751 -> :sswitch_35
        -0x11b84004 -> :sswitch_34
        -0xfecfe35 -> :sswitch_33
        -0xdea6f04 -> :sswitch_32
        0x2e905d5 -> :sswitch_31
        0x694dd3a -> :sswitch_30
        0x69c1309 -> :sswitch_2f
        0xd9087bf -> :sswitch_2e
        0xef9cefd -> :sswitch_2d
        0x12900da5 -> :sswitch_2c
        0x1298a0f6 -> :sswitch_2b
        0x17cce7ac -> :sswitch_2a
        0x19b43542 -> :sswitch_29
        0x1bf97477 -> :sswitch_28
        0x1d9aa2aa -> :sswitch_27
        0x1e55690a -> :sswitch_26
        0x1fa41130 -> :sswitch_25
        0x24114292 -> :sswitch_24
        0x281f4ed3 -> :sswitch_23
        0x2940edb6 -> :sswitch_22
        0x2e07d8ce -> :sswitch_21
        0x2e63e7af -> :sswitch_20
        0x3058c890 -> :sswitch_1f
        0x34efcf18 -> :sswitch_1e
        0x3ab1aaa0 -> :sswitch_1d
        0x3c3ce332 -> :sswitch_1c
        0x3c765ae0 -> :sswitch_1b
        0x3fa3eab3 -> :sswitch_1a
        0x405e85a7 -> :sswitch_19
        0x4514934d -> :sswitch_18
        0x46d414d6 -> :sswitch_17
        0x4f690589 -> :sswitch_16
        0x50e03add -> :sswitch_15
        0x51b5f8bb -> :sswitch_14
        0x5789f827 -> :sswitch_13
        0x5e0fec18 -> :sswitch_12
        0x646b5f19 -> :sswitch_11
        0x6723ba43 -> :sswitch_10
        0x672dafd8 -> :sswitch_f
        0x678823ac -> :sswitch_e
        0x6a3fd327 -> :sswitch_d
        0x6a674180 -> :sswitch_c
        0x6f4555fc -> :sswitch_b
        0x747df9f4 -> :sswitch_a
        0x759df82f -> :sswitch_9
        0x761158c3 -> :sswitch_8
        0x765f30f0 -> :sswitch_7
        0x76f53c24 -> :sswitch_6
        0x776c962b -> :sswitch_5
        0x7975a335 -> :sswitch_4
        0x7c8db5b8 -> :sswitch_3
        0x7c9c7aba -> :sswitch_2
        0x7e116a8e -> :sswitch_1
        0x7ee1faf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_2

    .line 1580
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1581
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 1582
    const-string v4, "-"

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1583
    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    if-eqz p2, :cond_0

    aget-object v4, v3, v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1584
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x1

    .line 1585
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 1586
    aget-object v3, v3, v1

    invoke-static {v3, v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isValidNumber(Ljava/lang/String;FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1587
    const-string p0, "T"

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1592
    :cond_2
    const-string p0, "F"

    return-object p0
.end method

.method public static checkForMorbidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v2, :cond_b

    .line 858
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 859
    const-string v5, ","

    invoke-static {v2, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 860
    array-length v5, v2

    if-lez v5, :cond_b

    .line 861
    array-length v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_b

    aget-object v9, v2, v8

    if-eqz v9, :cond_9

    .line 862
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "morbidityCondition"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 863
    const-string v10, "/"

    invoke-static {v9, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 865
    :goto_1
    array-length v12, v9

    const/4 v13, 0x2

    const-string v14, "-"

    const/4 v15, 0x3

    if-ne v12, v15, :cond_4

    if-eqz v11, :cond_3

    .line 868
    aget-object v11, v9, v10

    invoke-static {v11, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 869
    array-length v12, v11

    if-ne v12, v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aget-object v15, v11, v7

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v4, :cond_1

    .line 871
    invoke-static {v0, v4, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 873
    :cond_1
    const-string v1, "Yes"

    invoke-static {v0, v1, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :goto_2
    aget-object v0, v11, v10

    return-object v0

    .line 878
    :cond_2
    aget-object v9, v9, v13

    invoke-static {v9, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 879
    array-length v11, v9

    const/4 v12, 0x3

    if-ne v11, v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v9, v7

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 880
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    aget-object v0, v9, v10

    return-object v0

    .line 885
    :cond_3
    aget-object v9, v9, v13

    invoke-static {v9, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 886
    array-length v11, v9

    const/4 v12, 0x3

    if-ne v11, v12, :cond_9

    .line 887
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    aget-object v0, v9, v10

    return-object v0

    .line 891
    :cond_4
    array-length v12, v9

    const/4 v15, 0x4

    if-ne v12, v15, :cond_9

    if-eqz v11, :cond_8

    .line 894
    aget-object v11, v9, v10

    const-string v12, "%"

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p4

    .line 895
    invoke-static {v1, v11, v12}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 897
    aget-object v13, v9, v13

    invoke-static {v13, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 898
    array-length v15, v13

    const/4 v10, 0x3

    if-ne v15, v10, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aget-object v15, v13, v7

    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v4, :cond_5

    .line 900
    invoke-static {v0, v4, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 902
    :cond_5
    invoke-static {v0, v1, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    .line 904
    aget-object v0, v13, v0

    return-object v0

    :cond_6
    const/4 v10, 0x3

    .line 907
    :cond_7
    aget-object v9, v9, v10

    invoke-static {v9, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 908
    array-length v13, v9

    if-ne v13, v10, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 909
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 910
    aget-object v0, v9, v11

    return-object v0

    :cond_8
    move-object/from16 v12, p4

    const/4 v10, 0x3

    const/4 v11, 0x1

    .line 914
    aget-object v9, v9, v10

    invoke-static {v9, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 915
    array-length v13, v9

    if-ne v13, v10, :cond_a

    .line 916
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    aget-object v0, v9, v11

    return-object v0

    :cond_9
    move-object/from16 v12, p4

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 927
    :cond_b
    const-string v0, "F"

    return-object v0
.end method

.method public static checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_39

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    if-eqz p2, :cond_39

    .line 221
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 222
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 223
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 226
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 227
    const-string v5, "AlphanumericWithSpace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->alphanumericWithSpace(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 230
    :cond_1
    aget-object v4, v2, v3

    const-string v5, "isFutureDate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isFutureDate([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 233
    :cond_2
    aget-object v4, v2, v3

    const-string v5, "PastDate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isPastDate([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 236
    :cond_3
    aget-object v4, v2, v3

    const-string v5, "isNotToday"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isNotToday([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 239
    :cond_4
    aget-object v4, v2, v3

    const-string v5, "isDateIn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 241
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isDateIn([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 242
    :cond_5
    aget-object v4, v2, v3

    const-string v5, "isDateOut"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 244
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isDateOut([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 245
    :cond_6
    aget-object v4, v2, v3

    const-string v5, "comapreDateWithGivenDate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 246
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->comapreDateWithGivenDate([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 247
    :cond_7
    aget-object v4, v2, v3

    const-string v5, "ComapreDateWithGivenDateAfter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 248
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->comapreDateWithGivenDateAfter([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 249
    :cond_8
    aget-object v4, v2, v3

    const-string v5, "containsCharacterPipeline"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 251
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->containsCharacterPipeline(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 252
    :cond_9
    aget-object v4, v2, v3

    const-string v5, "GreaterThen0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 253
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->greaterThen0(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 255
    :cond_a
    aget-object v4, v2, v3

    const-string v5, "GreaterThan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 256
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->greaterThan([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 257
    :cond_b
    aget-object v4, v2, v3

    const-string v5, "GreaterThanEq"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 258
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->greaterThanEq([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 259
    :cond_c
    aget-object v4, v2, v3

    const-string v5, "LessThan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 260
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->lessThan([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 261
    :cond_d
    aget-object v4, v2, v3

    const-string v5, "LessThanEq"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 262
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->lessThanEq([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 263
    :cond_e
    aget-object v4, v2, v3

    const-string v5, "lessThanEqRelatedProperty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 264
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->lessThanEqRelatedProperty([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 265
    :cond_f
    aget-object v4, v2, v3

    const-string v5, "Between"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 266
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->between([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 267
    :cond_10
    aget-object v4, v2, v3

    const-string v5, "checkInputLength"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 268
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkInputLength([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 269
    :cond_11
    aget-object v4, v2, v3

    const-string v5, "checkEmail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 270
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkEmail([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 271
    :cond_12
    aget-object v4, v2, v3

    const-string v5, "mobileNumber"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 272
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->mobileNumber([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 273
    :cond_13
    aget-object v4, v2, v3

    const-string v5, "inputLengthRange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 274
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->inputLengthRange([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 275
    :cond_14
    aget-object v4, v2, v3

    const-string v5, "greaterThanRelatedProperty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 276
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->greaterThanRelatedProperty([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 277
    :cond_15
    aget-object v4, v2, v3

    const-string v5, "lessThanRelatedProperty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 278
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->lessThanRelatedProperty([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 279
    :cond_16
    aget-object v4, v2, v3

    const-string v5, "maxLength"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 280
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->maxLength([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 281
    :cond_17
    aget-object v4, v2, v3

    const-string v5, "length"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 282
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->length([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 283
    :cond_18
    aget-object v4, v2, v3

    const-string v5, "onlyOneHead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 284
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->onlyOneHead(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 285
    :cond_19
    aget-object v4, v2, v3

    const-string v5, "allMembersArchiveCheck"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 286
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->allMembersArchiveCheck([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 287
    :cond_1a
    aget-object v4, v2, v3

    const-string v5, "checkHeadMemberAge"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 288
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkHeadMemberAge(Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 289
    :cond_1b
    aget-object v4, v2, v3

    const-string v5, "maritalStatusValidation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 290
    invoke-static {p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->maritalStatusValidation(Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 291
    :cond_1c
    aget-object v4, v2, v3

    const-string v5, "checkHofRelationWithMaritalStatus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 292
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkHofRelationWithMaritalStatus([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 293
    :cond_1d
    aget-object v4, v2, v3

    const-string v5, "villageSelectionCheck"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 294
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->villageSelectionCheck(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 295
    :cond_1e
    aget-object v4, v2, v3

    const-string v5, "motherChildComponentValidation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 296
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->motherChildComponentValidation(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 297
    :cond_1f
    aget-object v4, v2, v3

    const-string v5, "vaccinationValidationChild"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 298
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->vaccinationValidationChild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 299
    :cond_20
    aget-object v4, v2, v3

    const-string v5, "checkNumberFormatException"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 300
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkNumberFormatException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 301
    :cond_21
    aget-object v4, v2, v3

    const-string v5, "checkSingleECMemberFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 302
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkSingleECMemberFamily()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 303
    :cond_22
    aget-object v4, v2, v3

    const-string v5, "checkDaysGapDeliveryDate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 304
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkDaysGapDeliveryDate([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 305
    :cond_23
    aget-object v4, v2, v3

    const-string v5, "checkServiceDateForHealthInfra"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 306
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkServiceDateForHealthInfra([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 307
    :cond_24
    aget-object v4, v2, v3

    const-string v5, "checkServiceDateForHomeVisit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 308
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkServiceDateForHomeVisit([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 309
    :cond_25
    aget-object v4, v2, v3

    const-string v5, "integerOnlyPlus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 310
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkIntegerPlus([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 311
    :cond_26
    aget-object v4, v2, v3

    const-string v5, "familyPlanningDateValidation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 312
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->familyPlanningDateValidation([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 313
    :cond_27
    aget-object v4, v2, v3

    const-string v5, "comapreDateBefore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 314
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->comapreDateBefore([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 315
    :cond_28
    aget-object v4, v2, v3

    const-string v5, "ComapreDateAfter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 316
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->comapreDateAfter([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 317
    :cond_29
    aget-object v4, v2, v3

    const-string v5, "compareDateBetween"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 318
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->compareDateBetween([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 319
    :cond_2a
    aget-object v4, v2, v3

    const-string v5, "checkGivenSachets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 320
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkGivenSachets([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 321
    :cond_2b
    aget-object v4, v2, v3

    const-string v5, "checkConsumedSachets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 322
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkConsumedSachets([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 323
    :cond_2c
    aget-object v4, v2, v3

    const-string v5, "checkHofRelationWithGender"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 324
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkHofRelationWithGender([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 325
    :cond_2d
    aget-object v4, v2, v3

    const-string v5, "dobMaritalStatusValidation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 326
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->dobMaritalStatusValidation([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 327
    :cond_2e
    aget-object v4, v2, v3

    const-string v5, "CompareTimeWithDeliveryDate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    aget-object v4, v2, v3

    const-string v5, "CompareTimeWithDeathDate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto/16 :goto_0

    .line 329
    :cond_2f
    aget-object v4, v2, v3

    const-string v5, "isMemberHof"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 330
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isMemberHof(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 331
    :cond_30
    aget-object v4, v2, v3

    const-string v5, "isOnlyEnglishText"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 332
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isOnlyEnglishText(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 333
    :cond_31
    aget-object v4, v2, v3

    const-string v5, "validatesumagainstproperty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 334
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->validateSumAgainstProperty([Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 335
    :cond_32
    aget-object v4, v2, v3

    const-string v5, "checkIFSCCode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 336
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkIFSCCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 337
    :cond_33
    aget-object v4, v2, v3

    const-string v5, "checkImmunisationStockForTD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 338
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkImmunisationStockForTD(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 339
    :cond_34
    aget-object v4, v2, v3

    const-string v5, "checkDate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 340
    invoke-static {v2, p0, p1, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->checkDate([Ljava/lang/String;Ljava/lang/String;ILcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 341
    :cond_35
    aget-object v4, v2, v3

    const-string v5, "aadhaarNumber"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 342
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->aadhaarNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 343
    :cond_36
    aget-object v3, v2, v3

    const-string v4, "validateRegex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 344
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->validateRegex([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_37
    move-object v1, v0

    goto :goto_1

    .line 328
    :cond_38
    :goto_0
    invoke-static {v2, p0, v1}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->isFutureDeliveryTime([Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    return-object v1

    :cond_39
    return-object v0
.end method

.method public static generateAnswerString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 936
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->finalFilesToUpload:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 937
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 939
    const-string v2, "~"

    if-eqz p0, :cond_6

    .line 940
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setPrePage(Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;)V

    .line 942
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getFirstQuestionId()I

    move-result v3

    .line 943
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getListOfQuestion()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 944
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 945
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 946
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v3, :cond_4

    .line 948
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 949
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    .line 950
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getExtraBinding()I

    move-result v6

    if-lez v6, :cond_0

    .line 951
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getExtraBinding()I

    move-result v5

    .line 953
    :cond_0
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WB"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "!"

    if-eqz v6, :cond_1

    .line 954
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "T"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 955
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getBinding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v8

    invoke-static {v6, v5, v8}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getBindingValue(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 958
    :cond_1
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getBinding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v8

    invoke-static {v6, v5, v8}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getBindingValue(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 962
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->finalFilesToUpload:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_3
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getNext(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result v3

    goto/16 :goto_1

    :cond_4
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 971
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextPage()Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 972
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getNextPage()Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object p0

    goto/16 :goto_0

    .line 979
    :cond_6
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gpsEnabledForms:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 980
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "currentLatitude"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 981
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentLongitude"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 983
    const-string v4, "-1!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "~-2!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_7
    const-string p0, "FHS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v3, "locationId"

    if-nez p0, :cond_8

    const-string p0, "CFHC"

    .line 988
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "IDSP_NEW_FAMILY"

    .line 989
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 990
    :cond_8
    const-string p0, "-3!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 991
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_9
    const-string p0, "TRAVELLERS_SCREENING"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v4, "-4!"

    if-eqz p0, :cond_a

    .line 997
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "actualId"

    .line 998
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :cond_a
    const-string p0, "~-6!"

    const-string v5, "~-5!"

    const-string v6, "memberActualId"

    if-eqz p1, :cond_b

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FormConstants;->RCH_SHEETS:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1003
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1004
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-interface {p2, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    const-string v7, "familyId"

    .line 1008
    invoke-interface {p2, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "~-7!"

    .line 1012
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v7, "curPregRegDetId"

    .line 1014
    invoke-interface {p2, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    :cond_b
    const-string p2, "-6!"

    if-eqz p1, :cond_c

    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FormConstants;->VBDS_SHEETS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1019
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1020
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_c
    const-string v1, "VBDS_CHLORINATION_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1029
    const-string v1, "-95!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "waterQualityId"

    .line 1030
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_d
    const-string v1, "familyActualId"

    if-eqz p1, :cond_e

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FormConstants;->NCD_SHEETS:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1035
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1036
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1039
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz p1, :cond_f

    .line 1043
    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FormConstants;->NPCB_SHEETS:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1044
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1045
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1048
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "areaId"

    .line 1051
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "~-88!"

    .line 1052
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "notificationId"

    .line 1054
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "~-86!"

    .line 1055
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "spectsData"

    .line 1057
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "~-98!"

    .line 1058
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "rbskOnsiteRegistration"

    .line 1060
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "~-97!"

    .line 1061
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "rbskStudentDetailsId"

    .line 1063
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    :cond_f
    const-string p0, "IDSP_MEMBER"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "IDSP_MEMBER_2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1068
    :cond_10
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyQuestions"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_11

    .line 1070
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    :cond_11
    const-string p0, "GAURAVI_DIWAS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 1075
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1076
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :cond_12
    const-string p0, "IFA_TO_SCHOOL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 1081
    const-string p0, "-49!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "schoolActualId"

    .line 1082
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_13
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "fromMamtaCampaign"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1087
    const-string p2, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1088
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "sessionId"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_14

    .line 1090
    const-string p2, "-50!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_14
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "servicePlace"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    .line 1096
    sget-object p2, Lcom/argusoft/sewa/android/app/constants/FormConstants;->RCH_SHEETS:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1097
    const-string p2, "-60!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    :cond_15
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "serviceDate"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_16

    .line 1104
    const-string p2, "-70!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_16
    const-string p0, "AMRUTPAN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 1111
    const-string p0, "-81!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "visitNumber"

    .line 1112
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_17
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->setBeneficiaryName(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;
    .locals 2

    .line 1129
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1130
    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 1131
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public static generateDynamicVaccinations(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 7

    .line 1141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x12c

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1144
    sget v3, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_SCROLL:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {p0, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getScrollView(Landroid/content/Context;ILandroid/widget/LinearLayout$LayoutParams;)Landroidx/core/widget/NestedScrollView;

    move-result-object v3

    .line 1147
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1150
    sget v4, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v4, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 v2, 0x5

    .line 1151
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1152
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1153
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1154
    new-instance v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils$1;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils$1;-><init>()V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    invoke-virtual {v3, p0}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getBindingValue(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFullFormName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1169
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getLoopId(II)I
    .locals 0

    if-lez p1, :cond_0

    if-lez p0, :cond_0

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getNext(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getNextQuestionIdList(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-static {v1, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 137
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 138
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getOriginalId(II)I
    .locals 0

    if-lez p1, :cond_0

    if-lez p0, :cond_0

    .line 120
    div-int/lit16 p0, p0, 0x2710

    :cond_0
    return p0
.end method

.method public static getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;
    .locals 2

    .line 162
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_0

    .line 164
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-static {v1, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setBeneficiaryName(Ljava/lang/String;)V
    .locals 2

    .line 1570
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "nameOfBeneficiary"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    .line 1572
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "memberName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 1574
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1575
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static setFirstQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getPage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-static {v1, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->setFirstQuestionId(I)V

    :cond_0
    return-void
.end method

.method public static setNextVisibleQuestionInSamePage(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 3

    if-eqz p0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(II)I

    move-result v0

    .line 177
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getPageFromNext(I)Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;

    move-result-object v0

    .line 178
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getNext(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p0

    :goto_0
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getListOfQuestion()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;->getListOfQuestion()Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz p0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 183
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->applyFormulaForHiddenQuestion(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V

    .line 184
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getNext(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static storeForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    .line 1174
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1175
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1180
    new-instance v3, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 1182
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "nameForLog"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1183
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "familyId"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1184
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "ashaArea"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1186
    const-string v8, "CFHC"

    const-string v9, "FHS"

    const-string v10, "Not available"

    if-eqz v4, :cond_0

    .line 1187
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_1

    .line 1189
    :cond_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "IDSP_NEW_FAMILY"

    .line 1190
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v5, :cond_6

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1192
    :cond_2
    const-string v4, "MEMBER_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1193
    const-string v4, "New Member"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_1

    .line 1194
    :cond_3
    const-string v4, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1195
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "nameOfBeneficiary"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1197
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_1

    .line 1199
    :cond_4
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "fullNameOfNewMember"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_1

    .line 1202
    :cond_5
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_1

    .line 1191
    :cond_6
    :goto_0
    const-string v4, "New Family"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    :goto_1
    if-eqz v7, :cond_7

    .line 1206
    const-string v4, "GAURAVI_DIWAS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1207
    invoke-virtual {v3, v7}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setLocation(Ljava/lang/String;)V

    .line 1242
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 1245
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 1247
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 1249
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "veryHighRiskPregnantWomanFeature"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v11, "T"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v12, "VHRPW"

    if-eqz v5, :cond_9

    .line 1250
    invoke-virtual {v3, v12}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 1251
    const-string v5, "VERY HIGH RISK PREGNANT WOMAN"

    goto :goto_2

    .line 1253
    :cond_9
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 1254
    invoke-static/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getFullFormName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_a

    .line 1257
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    goto :goto_3

    .line 1259
    :cond_a
    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    :goto_3
    const/4 v5, 0x0

    .line 1261
    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 1262
    const-string v5, "P"

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 1263
    sget-object v13, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 1265
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "LOGGER BEAN : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DynamicUtils"

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v13, v3}, Lcom/argusoft/sewa/android/app/core/SewaService;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    move-result-object v13

    .line 1267
    const-string v15, "loggerBeanId"

    move-object/from16 v16, v1

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v15, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    if-nez v13, :cond_b

    return-object v1

    .line 1273
    :cond_b
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->audioFilesToUpload:Ljava/util/Map;

    if-eqz v13, :cond_f

    .line 1275
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    .line 1276
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1277
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    .line 1278
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v13

    .line 1280
    new-instance v13, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    invoke-direct {v13}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;-><init>()V

    move-object/from16 v18, v8

    .line 1281
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getCheckSum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setCheckSum(Ljava/lang/String;)V

    if-eqz v15, :cond_c

    .line 1283
    invoke-virtual {v13, v15}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setFileType(Ljava/lang/String;)V

    .line 1285
    :cond_c
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setFormType(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v13, v1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setFileName(Ljava/lang/String;)V

    .line 1287
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setUserName(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v13, v5}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setParentStatus(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v13, v5}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 1292
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v1, v13}, Lcom/argusoft/sewa/android/app/core/SewaService;->createUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1295
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Created for District File ID : "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v13, v17

    move-object/from16 v8, v18

    const/4 v1, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v18, v8

    .line 1298
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->audioFilesToUpload:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_5

    :cond_f
    move-object/from16 v18, v8

    .line 1301
    :goto_5
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    move-object/from16 v3, p1

    .line 1302
    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 1303
    sget-wide v19, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formFillUpTime:J

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 1304
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1305
    invoke-virtual {v1, v12}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    goto :goto_6

    .line 1307
    :cond_10
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 1309
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 1310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    .line 1311
    const-string v3, "-1"

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    .line 1314
    const-string v5, "ANCMORB"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "CCMORB"

    .line 1315
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "PNCMORB"

    .line 1316
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1317
    :cond_11
    sget-object v5, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->morbidities:Ljava/util/List;

    .line 1319
    new-instance v8, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;

    invoke-direct {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;-><init>()V

    .line 1320
    invoke-virtual {v8, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->setBeneficiaryMorbidityDetailses(Ljava/util/List;)V

    .line 1321
    sget-object v5, Lcom/argusoft/sewa/android/app/util/SewaUtil;->familyUnderstandInMorbidity:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->setFamilyUnderstand(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->calculateMorbidityString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 1324
    sput-object v8, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->morbidities:Ljava/util/List;

    .line 1325
    sput-object v8, Lcom/argusoft/sewa/android/app/util/SewaUtil;->familyUnderstandInMorbidity:Ljava/lang/String;

    .line 1327
    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    .line 1331
    :cond_12
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "notificationId"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 1332
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_13

    .line 1333
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_14

    .line 1337
    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 1338
    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    .line 1339
    sget-object v15, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v15, v5}, Lcom/argusoft/sewa/android/app/core/SewaService;->getNotificationsById(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/NotificationBean;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1340
    const-string v15, "notificationBean"

    invoke-interface {v2, v15, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1341
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v13, v5}, Lcom/argusoft/sewa/android/app/core/SewaService;->deleteNotificationByNotificationId(Ljava/lang/Long;)V

    .line 1342
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_14
    const-wide/16 v19, -0x1

    .line 1344
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 1347
    :goto_8
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "checkSum"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 1349
    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    goto :goto_9

    .line 1351
    :cond_15
    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 1355
    :goto_9
    const-string v3, "ASHA_ANC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "ASHA_PNC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "ASHA_CS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1356
    :cond_16
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "l"

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    :cond_17
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "customType"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 1361
    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setCustumType(Ljava/lang/String;)V

    .line 1364
    :cond_18
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "familyFound"

    const-string v8, "1"

    if-eqz v3, :cond_1c

    .line 1365
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1366
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 1367
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 1368
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v9, v3}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markFamilyAsVerified(Ljava/lang/String;)V

    goto :goto_a

    .line 1370
    :cond_19
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v9, "3"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1371
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v9, "4"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1372
    :cond_1a
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 1373
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 1374
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v9, v3}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markFamilyAsArchived(Ljava/lang/String;)V

    .line 1378
    :cond_1b
    :goto_a
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v3, :cond_1c

    .line 1379
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-interface {v3, v9, v13}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->mergeFamilies(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    :cond_1c
    move-object/from16 v3, v18

    .line 1383
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1384
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1385
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 1386
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1387
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v5, v3}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markFamilyAsCFHCVerified(Ljava/lang/String;)V

    .line 1391
    :cond_1d
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v3, :cond_1e

    .line 1392
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-interface {v3, v5, v6}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->mergeFamilies(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 1396
    :cond_1e
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "memberActualId"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1397
    const-string v5, "lmpDate"

    const-string v6, "FHW_PNC"

    if-eqz v3, :cond_25

    .line 1398
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1399
    const-string v10, "LMPFU"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "FHW_CS"

    move-object/from16 v17, v12

    const-string v12, "FHW_ANC"

    move-object/from16 v18, v4

    const-string v4, "FHW_WPD"

    if-nez v13, :cond_20

    .line 1400
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    .line 1401
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    .line 1402
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    .line 1403
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    goto :goto_b

    :cond_1f
    move-object/from16 v19, v11

    goto :goto_c

    .line 1404
    :cond_20
    :goto_b
    sget-object v13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v19, v11

    const-string v11, "memberStatus"

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_21

    .line 1405
    const-string v13, "DEATH"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 1406
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v11, v9}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markMemberAsDead(Ljava/lang/Long;)V

    .line 1407
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    const/4 v13, 0x0

    invoke-interface {v11, v9, v13}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->deleteNotificationByMemberIdAndNotificationType(Ljava/lang/Long;Ljava/util/List;)V

    .line 1411
    :cond_21
    :goto_c
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 1412
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v13, "isPregnant"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_23

    .line 1413
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 1414
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-interface {v11, v9, v13}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->updateMemberPregnantFlag(Ljava/lang/Long;Z)V

    .line 1416
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_22

    .line 1418
    new-instance v13, Ljava/util/Date;

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v13, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1419
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v1, v9, v13}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->updateMemberLmpDate(Ljava/lang/Long;Ljava/util/Date;)V

    goto :goto_d

    :cond_22
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    .line 1422
    :goto_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1423
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v2, v9, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->deleteNotificationByMemberIdAndNotificationType(Ljava/lang/Long;Ljava/util/List;)V

    goto :goto_e

    :cond_23
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    .line 1428
    :goto_e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1429
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v9, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->updateMemberPregnantFlag(Ljava/lang/Long;Z)V

    .line 1430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v2, v9, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->deleteNotificationByMemberIdAndNotificationType(Ljava/lang/Long;Ljava/util/List;)V

    .line 1436
    :cond_24
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1437
    const-string v1, "vaccinationGiven"

    move-object/from16 v2, v16

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1439
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v10, v9, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->updateVaccinationGivenForChild(Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_f

    :cond_25
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    move-object/from16 v17, v12

    :cond_26
    move-object/from16 v2, v16

    const/4 v4, 0x0

    .line 1444
    :cond_27
    :goto_f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1445
    const-string v1, "vaccinationMapWithUniqueHealthId"

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1447
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1448
    new-instance v4, Lcom/argusoft/sewa/android/app/util/DynamicUtils$2;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils$2;-><init>()V

    .line 1449
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/util/DynamicUtils$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1448
    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1450
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1451
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v6, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->updateVaccinationGivenForChild(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1454
    :cond_28
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "isChildAlive"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 1455
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1456
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "uniqueHealthIdChild"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1457
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v2, v1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByHealthId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    .line 1458
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markMemberAsDead(Ljava/lang/Long;)V

    .line 1459
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->deleteNotificationByMemberIdAndNotificationType(Ljava/lang/Long;Ljava/util/List;)V

    goto :goto_11

    :cond_29
    const/4 v4, 0x0

    :cond_2a
    :goto_11
    if-eqz v3, :cond_2e

    .line 1464
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1465
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "familyActualId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 1466
    const-string v3, "NCD_ASHA_CBAC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1467
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ncdService:Lcom/argusoft/sewa/android/app/core/NcdService;

    invoke-interface {v3, v1}, Lcom/argusoft/sewa/android/app/core/NcdService;->markMemberAsCbacDone(Ljava/lang/Long;)V

    .line 1468
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1469
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ncdService:Lcom/argusoft/sewa/android/app/core/NcdService;

    invoke-interface {v3, v2}, Lcom/argusoft/sewa/android/app/core/NcdService;->markFamilyAsCbacDoneForAnyMember(Ljava/lang/Long;)V

    .line 1472
    :cond_2b
    const-string v2, "NCD_FHW_HYPERTENSION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "NCD_FHW_ORAL"

    .line 1473
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "NCD_FHW_DIABETES"

    .line 1474
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "NCD_FHW_BREAST"

    .line 1475
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "NCD_FHW_CERVICAL"

    .line 1476
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1477
    :cond_2c
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ncdService:Lcom/argusoft/sewa/android/app/core/NcdService;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-interface {v2, v1, v0, v3}, Lcom/argusoft/sewa/android/app/core/NcdService;->markMemberAsNCDScreeningDone(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;)V

    .line 1480
    :cond_2d
    const-string v2, "FHW_PREG_CONF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1481
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 1483
    new-instance v3, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1484
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-interface {v2, v1, v3}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->updateMemberLmpDate(Ljava/lang/Long;Ljava/util/Date;)V

    .line 1489
    :cond_2e
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "locationId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 1491
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setLocationId(Ljava/lang/Long;)V

    goto :goto_12

    :cond_2f
    move-object/from16 v3, v21

    .line 1494
    :goto_12
    const-string v2, "AWW_DAILY_NUTRITION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v1, :cond_30

    .line 1496
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/DailyNutritionLogService;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/argusoft/sewa/android/app/core/DailyNutritionLogService;->createOrUpdateDailyNutritionLogByLocationId(Ljava/lang/Integer;)V

    .line 1500
    :cond_30
    const-string v1, "LCDC_CAMPAIGN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v1, :cond_31

    .line 1501
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markLcdcStatusForFamily(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 1504
    :cond_31
    const-string v1, "LCDC_CAMPAIGN_02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->lcdcSuspectedDataBeans:Ljava/util/Set;

    if-eqz v1, :cond_32

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->lcdcSuspectedDataBeans:Ljava/util/Set;

    .line 1505
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1506
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->lcdcSuspectedDataBeans:Ljava/util/Set;

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markLcdc02StatusForMembers(Ljava/util/Set;)V

    .line 1509
    :cond_32
    const-string v1, "FILARIASIS_CAMPAIGN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v2, :cond_33

    .line 1510
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-interface {v2, v5}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markFilariaStatusForFamily(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 1513
    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v1, :cond_34

    .line 1514
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markFilariaSideEffectsForMember(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 1517
    :cond_34
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "mrGiven"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1518
    const-string v2, "MR_VACCINATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v2, :cond_35

    .line 1519
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1520
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->markMrGivenForMember(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 1523
    :cond_35
    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 1524
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v1, :cond_36

    .line 1525
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 1526
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 1530
    :cond_36
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "memberId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 1532
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMemberId(Ljava/lang/Long;)V

    .line 1533
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1534
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 1535
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :cond_37
    move-object v8, v4

    .line 1539
    :goto_13
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v2, v3}, Lcom/argusoft/sewa/android/app/core/SewaService;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    move-result-object v2

    .line 1541
    const-string v5, "answerRecordStoredId"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, v20

    invoke-interface {v9, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1542
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_38

    .line 1545
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "StoreAnswerBeanID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Generated Record : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nRecord : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->pack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1548
    const-string v3, "Dynamic Form"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->finalFilesToUpload:Ljava/util/List;

    if-eqz v2, :cond_3c

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->finalFilesToUpload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1552
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->finalFilesToUpload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 1553
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v5, v19

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, v17

    :cond_39
    if-eqz v1, :cond_3a

    .line 1556
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object v13, v3

    goto :goto_15

    :cond_3a
    move-object v13, v4

    :goto_15
    if-eqz v8, :cond_3b

    .line 1557
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object v14, v3

    goto :goto_16

    :cond_3b
    move-object v14, v4

    .line 1558
    :goto_16
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v0

    invoke-interface/range {v9 .. v14}, Lcom/argusoft/sewa/android/app/core/SewaService;->createUploadFileDataBean(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v19, v5

    goto :goto_14

    .line 1561
    :cond_3c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
